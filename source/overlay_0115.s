
@ at 0x3f1c00-0x4000 = 0x3EDC00

.section .iwram115, "ax"


.thumb
Function_2260440: @ 2260440 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      LoadPtrToOverWorldDataIn18
	mov     r5, r0
	mov     r0, #0x3
	mov     r1, #0x63
	lsl     r2, r0, #17
	bl      Function_2017fc8
	mov     r0, r4
	mov     r1, #0x88
	mov     r2, #0x63
	bl      MallocSomeDataAndStorePtrInOverlayData1c
	mov     r1, #0x0
	mov     r2, #0x88
	mov     r4, r0
	blx     Call_FillMemWithValue
	str     r5, [sp, #0x0]
	mov     r1, r5
	add     r1, #0x39
	ldr     r2, [r5, #0x34]
	add     r5, #0x38
	mov     r0, r4
	ldrb    r1, [r1, #0x0]
	ldrb    r3, [r5, #0x0]
	add     r0, #0x8
	bl      0x225c700
	mov     r0, r4
	mov     r1, #0x63
	bl      Function_2260adc
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x226048a


.align 2, 0


.thumb
Function_226048c: @ 226048c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x28
	mov     r6, r0
	mov     r5, r1
	bl      LoadOverlayData1c
	mov     r4, r0
	mov     r0, r6
	bl      LoadPtrToOverWorldDataIn18
	mov     r6, r0
	mov     r0, r4
	add     r0, #0x8
	bl      0x225ca54
	cmp     r0, #0x1
	bne     branch_2260500
	ldr     r0, [r4, #0x78]
	cmp     r0, #0x0
	beq     branch_22604be
	cmp     r0, #0x1
	beq     branch_22604d8
	cmp     r0, #0x2
	beq     branch_22604ec
	b       branch_22604fa
@ 0x22604be

.thumb
branch_22604be: @ 22604be :thumb
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_22604ca
	bl      Function_200f2c0
.thumb
branch_22604ca: @ 22604ca :thumb
	mov     r0, #0x0
	bl      SetBrightnessOfBothScreens
	ldr     r0, [r4, #0x78]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x78]
	b       branch_22604fa
@ 0x22604d8

.thumb
branch_22604d8: @ 22604d8 :thumb
	mov     r0, r4
	add     r0, #0x8
	bl      0x225ca98
	cmp     r0, #0x1
	bne     branch_22604fa
	ldr     r0, [r4, #0x78]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x78]
	b       branch_22604fa
@ 0x22604ec

.thumb
branch_22604ec: @ 22604ec :thumb
	mov     r0, r4
	mov     r1, r6
	bl      Function_2260b44
	add     sp, #0x28
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x22604fa

.thumb
branch_22604fa: @ 22604fa :thumb
	add     sp, #0x28
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2260500

.thumb
branch_2260500: @ 2260500 :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0xf
	bhi     branch_2260574
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2260512

Jumppoints_2260512:
.hword branch_2260532 - Jumppoints_2260512 - 2
.hword branch_2260546 - Jumppoints_2260512 - 2
.hword branch_226056a - Jumppoints_2260512 - 2
.hword branch_2260674 - Jumppoints_2260512 - 2
.hword branch_226069e - Jumppoints_2260512 - 2
.hword branch_22606d6 - Jumppoints_2260512 - 2
.hword branch_22606ec - Jumppoints_2260512 - 2
.hword branch_2260700 - Jumppoints_2260512 - 2
.hword branch_2260782 - Jumppoints_2260512 - 2
.hword branch_22607c4 - Jumppoints_2260512 - 2
.hword branch_22607dc - Jumppoints_2260512 - 2
.hword branch_22607f0 - Jumppoints_2260512 - 2
.hword branch_2260818 - Jumppoints_2260512 - 2
.hword branch_2260844 - Jumppoints_2260512 - 2
.hword branch_2260894 - Jumppoints_2260512 - 2
.hword branch_22608b6 - Jumppoints_2260512 - 2
.thumb
branch_2260532: @ 2260532 :thumb
	mov     r0, r4
	add     r0, #0x8
	mov     r1, #0x63
	bl      0x225c814
	str     r0, [r4, #0x0]
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_22608de
@ 0x2260546

.thumb
branch_2260546: @ 2260546 :thumb
	ldr     r0, [r4, #0x0]
	bl      0x225c8bc
	cmp     r0, #0x1
	bne     branch_2260574
	ldr     r0, [r4, #0x0]
	bl      0x225c8cc
	str     r0, [r4, #0x70]
	ldr     r0, [r4, #0x0]
	bl      0x225c838
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_22608de
@ 0x226056a

.thumb
branch_226056a: @ 226056a :thumb
	ldr     r0, [pc, #0x2cc] @ 0x2260838, (=0x21bf67c)
	ldr     r1, [r0, #0x44]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_2260576
.thumb
branch_2260574: @ 2260574 :thumb
	b       branch_22608de
@ 0x2260576

.thumb
branch_2260576: @ 2260576 :thumb
	ldr     r0, [pc, #0x2c4] @ 0x226083c, (=0x2260a51)
	mov     r1, r4
	bl      SetMainLoopFunctionCall
	bl      Function_20177a4
	mov     r2, #0x0
	str     r2, [r4, #0x38]
	str     r2, [r4, #0x3c]
	mov     r0, r4
	mov     r1, r4
	str     r2, [r4, #0x40]
	add     r0, #0x84
	strb    r2, [r0, #0x0]
	add     r1, #0x84
	strb    r2, [r1, #0x1]
	strb    r2, [r1, #0x2]
	strb    r2, [r1, #0x3]
	mov     r0, #0x20
	mov     r1, #0x63
	bl      Function_201dbec
	mov     r0, r4
	bl      Function_2265a24
	mov     r0, r4
	mov     r1, #0x1
	add     r0, #0x80
	str     r1, [r0, #0x0]
	bl      Function_2032e64
	str     r0, [r4, #0x74]
	cmp     r0, #0x1
	bhi     branch_22605be
	bl      ErrorHandling
.thumb
branch_22605be: @ 22605be :thumb
	bl      Function_203608c
	mov     r1, r4
	add     r1, #0x44
	strh    r0, [r1, #0x0]
	mov     r1, r4
	add     r1, #0x44
	mov     r0, r4
	ldrh    r1, [r1, #0x0]
	add     r0, #0x8
	bl      0x225c76c
	mov     r1, r4
	add     r1, #0x46
	strh    r0, [r1, #0x0]
	mov     r0, r4
	add     r0, #0x44
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_22605fc
	mov     r1, #0x4b
	mov     r3, r4
	ldr     r2, [r4, #0x74]
	mov     r0, #0x63
	lsl     r1, r1, #4
	add     r3, #0x48
	bl      Function_2260bbc
	str     r0, [r4, #0x30]
	mov     r0, #0x1
	str     r0, [r4, #0x7c]
.thumb
branch_22605fc: @ 22605fc :thumb
	mov     r0, r4
	add     r0, #0x48
	str     r0, [sp, #0x0]
	mov     r3, r4
	add     r3, #0x46
	mov     r1, #0x4b
	ldrh    r3, [r3, #0x0]
	ldr     r2, [r4, #0x74]
	mov     r0, #0x63
	lsl     r1, r1, #4
	bl      Function_2260cec
	str     r0, [r4, #0x34]
	bl      Function_2039734
	add     r6, #0x38
	ldrb    r0, [r6, #0x0]
	cmp     r0, #0x0
	beq     branch_2260628
	mov     r0, #0x63
	bl      0x21d1e74
.thumb
branch_2260628: @ 2260628 :thumb
	ldr     r0, [r4, #0x70]
	cmp     r0, #0x0
	beq     branch_2260638
	cmp     r0, #0x1
	beq     branch_2260642
	cmp     r0, #0x2
	beq     branch_226064e
	b       branch_226065a
@ 0x2260638

.thumb
branch_2260638: @ 2260638 :thumb
	mov     r1, #0x0
	add     r0, sp, #0xc
	strb    r1, [r0, #0x8]
	strb    r1, [r0, #0x9]
	b       branch_226065e
@ 0x2260642

.thumb
branch_2260642: @ 2260642 :thumb
	mov     r1, #0x0
	add     r0, sp, #0xc
	strb    r1, [r0, #0x8]
	mov     r1, #0x1
	strb    r1, [r0, #0x9]
	b       branch_226065e
@ 0x226064e

.thumb
branch_226064e: @ 226064e :thumb
	mov     r1, #0x1
	add     r0, sp, #0xc
	strb    r1, [r0, #0x8]
	mov     r1, #0x0
	strb    r1, [r0, #0x9]
	b       branch_226065e
@ 0x226065a

.thumb
branch_226065a: @ 226065a :thumb
	bl      ErrorHandling
.thumb
branch_226065e: @ 226065e :thumb
	ldr     r0, [r4, #0x34]
	add     r1, sp, #0x14
	bl      Function_22612bc
	mov     r0, #0x1
	bl      Function_20364f0
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_22608de
@ 0x2260674

.thumb
branch_2260674: @ 2260674 :thumb
	mov     r0, #0x1
	bl      Function_2036540
	cmp     r0, #0x0
	beq     branch_22606c4
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x63
	mov     r1, #0x1b
	str     r0, [sp, #0x8]
	ldr     r3, [pc, #0x1b0] @ 0x2260840, (=0xffff)
	mov     r0, #0x0
	mov     r2, r1
	bl      Function_200f174
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_22608de
@ 0x226069e

.thumb
branch_226069e: @ 226069e :thumb
	ldr     r0, [r4, #0x34]
	mov     r1, #0x0
	bl      Function_2260dac
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_22606c4
	add     r4, #0x44
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_22606ce
	mov     r1, #0x0
	mov     r0, #0x16
	mov     r2, r1
	bl      Function_20359dc
	cmp     r0, #0x0
	bne     branch_22606c6
.thumb
branch_22606c4: @ 22606c4 :thumb
	b       branch_22608de
@ 0x22606c6

.thumb
branch_22606c6: @ 22606c6 :thumb
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_22608de
@ 0x22606ce

.thumb
branch_22606ce: @ 22606ce :thumb
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_22608de
@ 0x22606d6

.thumb
branch_22606d6: @ 22606d6 :thumb
	ldr     r0, [r4, #0x34]
	mov     r1, #0x0
	bl      Function_2260dac
	ldr     r0, [r4, #0x38]
	cmp     r0, #0x0
	beq     branch_22607d2
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_22608de
@ 0x22606ec

.thumb
branch_22606ec: @ 22606ec :thumb
	ldr     r0, [r4, #0x34]
	mov     r1, #0x1
	bl      Function_2260dac
	cmp     r0, #0x0
	bne     branch_22607d2
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_22608de
@ 0x2260700

.thumb
branch_2260700: @ 2260700 :thumb
	ldr     r0, [r4, #0x3c]
	cmp     r0, #0x0
	beq     branch_2260724
	ldr     r0, [r4, #0x34]
	bl      Function_2261274
	str     r0, [sp, #0x10]
	mov     r0, #0x19
	add     r1, sp, #0x10
	mov     r2, #0x4
	bl      Function_20359dc
	cmp     r0, #0x0
	beq     branch_22607d2
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_22608de
@ 0x2260724

.thumb
branch_2260724: @ 2260724 :thumb
	mov     r0, r4
	add     r0, #0x44
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_226076e
	ldr     r0, [r4, #0x30]
	bl      Function_2260bec
	mov     r5, r0
	ldr     r0, [r4, #0x30]
	bl      Function_2260c54
	cmp     r0, #0x0
	beq     branch_226075e
	ldr     r0, [r4, #0x30]
	bl      Function_2260c64
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0x1b
	add     r2, sp, #0xc
	mov     r3, #0x4
	bl      Function_2260ba0
	cmp     r0, #0x1
	bne     branch_226075e
	ldr     r0, [r4, #0x30]
	bl      Function_2260c5c
.thumb
branch_226075e: @ 226075e :thumb
	cmp     r5, #0x0
	bne     branch_226076e
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x17
	mov     r3, r2
	bl      Function_2260ba0
.thumb
branch_226076e: @ 226076e :thumb
	ldr     r0, [r4, #0x34]
	bl      Function_22610d4
	mov     r0, r4
	bl      Function_2260a5c
	mov     r0, r4
	bl      Function_2260a90
	b       branch_22608de
@ 0x2260782

.thumb
branch_2260782: @ 2260782 :thumb
	ldr     r0, [r4, #0x34]
	mov     r1, #0x0
	bl      Function_2260f70
	mov     r0, r4
	add     r0, #0x44
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_22607bc
	ldr     r0, [r4, #0x30]
	bl      Function_2260ca4
	cmp     r0, #0x1
	bne     branch_22607d2
	ldr     r0, [r4, #0x30]
	add     r1, sp, #0x18
	bl      Function_2260cbc
	mov     r0, #0x1a
	add     r1, sp, #0x18
	mov     r2, #0x10
	bl      Function_20359dc
	cmp     r0, #0x0
	beq     branch_22607d2
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_22608de
@ 0x22607bc

.thumb
branch_22607bc: @ 22607bc :thumb
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_22608de
@ 0x22607c4

.thumb
branch_22607c4: @ 22607c4 :thumb
	ldr     r0, [r4, #0x34]
	mov     r1, #0x0
	bl      Function_2260f70
	ldr     r0, [r4, #0x40]
	cmp     r0, #0x1
	beq     branch_22607d4
.thumb
branch_22607d2: @ 22607d2 :thumb
	b       branch_22608de
@ 0x22607d4

.thumb
branch_22607d4: @ 22607d4 :thumb
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_22608de
@ 0x22607dc

.thumb
branch_22607dc: @ 22607dc :thumb
	ldr     r0, [r4, #0x34]
	mov     r1, #0x1
	bl      Function_2260f70
	cmp     r0, #0x0
	bne     branch_22608de
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_22608de
@ 0x22607f0

.thumb
branch_22607f0: @ 22607f0 :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x63
	mov     r1, #0x1a
	str     r0, [sp, #0x8]
	ldr     r3, [pc, #0x40] @ 0x2260840, (=0xffff)
	mov     r0, #0x0
	mov     r2, r1
	bl      Function_200f174
	ldr     r0, [r4, #0x34]
	mov     r1, #0x1
	bl      Function_2260f70
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_22608de
@ 0x2260818

.thumb
branch_2260818: @ 2260818 :thumb
	ldr     r0, [r4, #0x34]
	mov     r1, #0x1
	bl      Function_2260f70
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_22608de
	mov     r0, #0x3
	bl      Function_20364f0
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_22608de
@ 0x2260836


.align 2


.word 0x21bf67c @ 0x2260838
.word Function_2260a50+1 @ =0x2260a51, 0x226083c
.word 0xffff @ 0x2260840
.thumb
branch_2260844: @ 2260844 :thumb
	mov     r0, #0x3
	bl      Function_2036540
	cmp     r0, #0x0
	bne     branch_2260854
	add     sp, #0x28
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2260854

.thumb
branch_2260854: @ 2260854 :thumb
	add     r6, #0x38
	ldrb    r0, [r6, #0x0]
	cmp     r0, #0x0
	beq     branch_2260860
	bl      0x21d1f18
.thumb
branch_2260860: @ 2260860 :thumb
	mov     r0, r4
	add     r0, #0x44
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2260874
	ldr     r0, [r4, #0x30]
	bl      Function_2260be4
	mov     r0, #0x0
	str     r0, [r4, #0x30]
.thumb
branch_2260874: @ 2260874 :thumb
	ldr     r0, [r4, #0x34]
	bl      Function_2260d78
	mov     r0, #0x0
	str     r0, [r4, #0x34]
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      Function_20177a4
	bl      Function_201dc3c
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_22608de
@ 0x2260894

.thumb
branch_2260894: @ 2260894 :thumb
	ldrb    r1, [r4, #0x10]
	mov     r0, r4
	add     r0, #0x18
	bl      0x225c9a8
	mov     r0, r4
	mov     r1, r4
	add     r0, #0x8
	add     r1, #0x18
	mov     r2, #0x63
	bl      0x225c8e0
	str     r0, [r4, #0x4]
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_22608de
@ 0x22608b6

.thumb
branch_22608b6: @ 22608b6 :thumb
	ldr     r0, [r4, #0x4]
	bl      0x225c9a0
	cmp     r0, #0x1
	bne     branch_22608de
	ldr     r0, [r4, #0x4]
	bl      0x225c9a4
	mov     r6, r0
	ldr     r0, [r4, #0x4]
	bl      0x225c904
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	cmp     r6, #0x0
	bne     branch_22608dc
	add     sp, #0x28
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x22608dc

.thumb
branch_22608dc: @ 22608dc :thumb
	str     r0, [r5, #0x0]
.thumb
branch_22608de: @ 22608de :thumb
	mov     r0, #0x0
	add     sp, #0x28
	pop     {r4-r6,pc}
@ 0x22608e4

.thumb
Function_22608e4: @ 22608e4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	bl      LoadOverlayData1c
	mov     r6, r0
	mov     r0, r5
	bl      LoadPtrToOverWorldDataIn18
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_2260902
	cmp     r0, #0x1
	beq     branch_226093c
	b       branch_2260958
@ 0x2260902

.thumb
branch_2260902: @ 2260902 :thumb
	mov     r0, r6
	add     r0, #0x8
	bl      0x225ca54
	mov     r7, r0
	mov     r0, r6
	bl      Function_2260b30
	mov     r0, r5
	bl      FreeSomeDataAndStore0InOverlayData1c
	mov     r0, #0x63
	bl      Function_201807c
	mov     r0, #0x0
	mov     r1, #0x1
	bl      Function_20388f4
	cmp     r7, #0x1
	bne     branch_226092e
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x226092e

.thumb
branch_226092e: @ 226092e :thumb
	mov     r0, #0x4
	bl      Function_20364f0
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_2260958
@ 0x226093c

.thumb
branch_226093c: @ 226093c :thumb
	mov     r0, #0x4
	bl      Function_2036540
	cmp     r0, #0x0
	bne     branch_2260954
	bl      Function_2035e18
	mov     r4, r0
	bl      Function_2032e64
	cmp     r4, r0
	bge     branch_2260958
.thumb
branch_2260954: @ 2260954 :thumb
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2260958

.thumb
branch_2260958: @ 2260958 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x226095c

.thumb
Function_226095c: @ 226095c :thumb
	mov     r1, #0x1
	str     r1, [r0, #0x38]
	bx      lr
@ 0x2260962


.align 2, 0


.thumb
Function_2260964: @ 2260964 :thumb
	mov     r1, #0x1
	str     r1, [r0, #0x3c]
	bx      lr
@ 0x226096a


.align 2, 0


.thumb
Function_226096c: @ 226096c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	add     r0, #0x8
	mov     r1, r2
	bl      0x225c76c
	mov     r2, r0
	ldr     r0, [r5, #0x30]
	mov     r1, r4
	bl      Function_2260c6c
	pop     {r3-r5,pc}
@ 0x2260986


.align 2, 0


.thumb
Function_2260988: @ 2260988 :thumb
	ldr     r3, [pc, #0x4] @ 0x2260990, (=0x22611e5)
	ldr     r0, [r0, #0x34]
	bx      r3
@ 0x226098e


.align 2


.word 0x22611e5 @ 0x2260990
.thumb
Function_2260994: @ 2260994 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	add     r0, #0x8
	mov     r1, r2
	bl      0x225c76c
	mov     r2, r0
	ldr     r0, [r5, #0x30]
	cmp     r0, #0x0
	beq     branch_22609b0
	mov     r1, r4
	bl      Function_2260c7c
.thumb
branch_22609b0: @ 22609b0 :thumb
	pop     {r3-r5,pc}
@ 0x22609b2


.align 2, 0


.thumb
Function_22609b4: @ 22609b4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x34]
	mov     r4, r1
	bl      Function_2261260
	mov     r0, #0x1
	str     r0, [r5, #0x40]
	mov     r1, #0x0
.thumb
branch_22609c6: @ 22609c6 :thumb
	ldr     r0, [r4, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r0, [r5, #0x18]
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r1, #0x4
	blt     branch_22609c6
	pop     {r3-r5,pc}
@ 0x22609d6


.align 2, 0


.thumb
Function_22609d8: @ 22609d8 :thumb
	ldr     r3, [pc, #0x4] @ 0x22609e0, (=0x2261279)
	ldr     r0, [r0, #0x34]
	bx      r3
@ 0x22609de


.align 2


.word 0x2261279 @ 0x22609e0
.thumb
Function_22609e4: @ 22609e4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	add     r0, #0x8
	mov     r1, r2
	bl      0x225c76c
	mov     r4, r0
	ldr     r0, [r5, #0x34]
	mov     r1, r6
	mov     r2, r4
	bl      Function_22612ac
	mov     r1, r5
	add     r1, #0x84
	ldrb    r0, [r1, r4]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r1, r4]
	mov     r0, r5
	add     r0, #0x44
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2260a46
	ldr     r3, [r5, #0x74]
	mov     r1, #0x1
	mov     r0, #0x0
	cmp     r3, #0x0
	bls     branch_2260a32
	ldr     r2, [r5, #0x7c]
	mov     r6, r0
.thumb
branch_2260a20: @ 2260a20 :thumb
	add     r4, r5, r0
	add     r4, #0x84
	ldrb    r4, [r4, #0x0]
	cmp     r2, r4
	bls     branch_2260a2c
	mov     r1, r6
.thumb
branch_2260a2c: @ 2260a2c :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r0, r3
	bcc     branch_2260a20
.thumb
branch_2260a32: @ 2260a32 :thumb
	cmp     r1, #0x1
	bne     branch_2260a46
	ldr     r0, [r5, #0x7c]
	mov     r1, #0x0
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x7c]
	mov     r0, #0x1d
	mov     r2, r1
	bl      Function_20359dc
.thumb
branch_2260a46: @ 2260a46 :thumb
	pop     {r4-r6,pc}
@ 0x2260a48

.thumb
Function_2260a48: @ 2260a48 :thumb
	mov     r1, #0x1
	add     r0, #0x80
	str     r1, [r0, #0x0]
	bx      lr
@ 0x2260a50

.thumb
Function_2260a50: @ 2260a50 :thumb
	ldr     r3, [pc, #0x4] @ 0x2260a58, (=0x22611c9)
	ldr     r0, [r0, #0x34]
	bx      r3
@ 0x2260a56


.align 2


.word 0x22611c9 @ 0x2260a58
.thumb
Function_2260a5c: @ 2260a5c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0x34]
	add     r1, sp, #0x0
	bl      Function_2261224
	cmp     r0, #0x1
	bne     branch_2260a8c
	mov     r6, #0x18
	add     r4, sp, #0x0
	mov     r7, #0x14
.thumb
branch_2260a74: @ 2260a74 :thumb
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	mov     r3, r7
	bl      Function_2260ba0
	ldr     r0, [r5, #0x34]
	mov     r1, r4
	bl      Function_2261224
	cmp     r0, #0x1
	beq     branch_2260a74
.thumb
branch_2260a8c: @ 2260a8c :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2260a90

.thumb
Function_2260a90: @ 2260a90 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r0, [r4, #0x34]
	bl      Function_22611e0
	cmp     r0, #0x0
	beq     branch_2260ad6
	mov     r1, #0x1e
	blx     _s32_div_f
	cmp     r1, #0x0
	bne     branch_2260ad6
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_2260ad6
	ldr     r0, [r4, #0x34]
	bl      Function_2261274
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x1c
	add     r2, sp, #0x0
	mov     r3, #0x4
	bl      Function_2260ba0
	cmp     r0, #0x0
	bne     branch_2260ad0
	bl      ErrorHandling
.thumb
branch_2260ad0: @ 2260ad0 :thumb
	mov     r0, #0x0
	add     r4, #0x80
	str     r0, [r4, #0x0]
.thumb
branch_2260ad6: @ 2260ad6 :thumb
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2260ada


.align 2, 0


.thumb
Function_2260adc: @ 2260adc :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r3, r1
	mov     r1, #0x0
	mov     r7, r0
	str     r1, [sp, #0x0]
	add     r0, sp, #0x8
	str     r0, [sp, #0x4]
	mov     r0, #0xbd
	mov     r2, r1
	bl      Function_2007068
	str     r0, [r7, #0x4c]
	ldr     r0, [sp, #0x8]
	mov     r1, #0x18
	blx     _u32_div_f
	str     r0, [r7, #0x48]
	ldrb    r0, [r7, #0x10]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_2260b2c
	mov     r6, r7
	mov     r5, r7
	add     r6, #0x8
.thumb
branch_2260b0e: @ 2260b0e :thumb
	mov     r0, r6
	mov     r1, r4
	bl      0x225c7cc
	str     r0, [r5, #0x50]
	mov     r0, r6
	mov     r1, r4
	bl      0x225c7a4
	str     r0, [r5, #0x60]
	ldrb    r0, [r7, #0x10]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, r0
	blt     branch_2260b0e
.thumb
branch_2260b2c: @ 2260b2c :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2260b30

.thumb
Function_2260b30: @ 2260b30 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4c]
	bl      free
	mov     r0, #0x0
	str     r0, [r4, #0x4c]
	str     r0, [r4, #0x48]
	pop     {r4,pc}
@ 0x2260b42


.align 2, 0


.thumb
Function_2260b44: @ 2260b44 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x0
	mov     r4, r1
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      Function_20177a4
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_2260b64
	bl      0x225c838
	mov     r0, #0x0
	str     r0, [r5, #0x0]
.thumb
branch_2260b64: @ 2260b64 :thumb
	ldr     r0, [r5, #0x34]
	cmp     r0, #0x0
	beq     branch_2260b84
	mov     r0, r5
	add     r0, #0x44
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2260b7a
	ldr     r0, [r5, #0x30]
	bl      Function_2260be4
.thumb
branch_2260b7a: @ 2260b7a :thumb
	ldr     r0, [r5, #0x34]
	bl      Function_2260d78
	bl      Function_201dc3c
.thumb
branch_2260b84: @ 2260b84 :thumb
	add     r4, #0x38
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_2260b90
	bl      0x21d1f18
.thumb
branch_2260b90: @ 2260b90 :thumb
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x0
	beq     branch_2260b9e
	bl      0x225c904
	mov     r0, #0x0
	str     r0, [r5, #0x4]
.thumb
branch_2260b9e: @ 2260b9e :thumb
	pop     {r3-r5,pc}
@ 0x2260ba0

.thumb
Function_2260ba0: @ 2260ba0 :thumb
	push    {r3,lr}
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2260bae
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2260bae

.thumb
branch_2260bae: @ 2260bae :thumb
	mov     r0, r1
	mov     r1, r2
	mov     r2, r3
	bl      Function_20359dc
	pop     {r3,pc}
@ 0x2260bba


.align 2, 0


.thumb
Function_2260bbc: @ 2260bbc :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r1, #0x38
	mov     r6, r2
	mov     r7, r3
	bl      malloc
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #0x38
	blx     Call_FillMemWithValue
	str     r5, [r4, #0x0]
	str     r6, [r4, #0x8]
	str     r7, [r4, #0x30]
	mov     r0, #0x1
	str     r0, [r4, #0x4]
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x2260be2


.align 2, 0
.thumb
Function_2260be4: @ 2260be4 :thumb
	ldr     r3, [pc, #0x0] @ 0x2260be8, (=free+1)
	bx      r3
@ 0x2260be8

.word free+1 @ 0x2260be8



.thumb
Function_2260bec: @ 2260bec :thumb
	push    {r4-r7}
	ldr     r2, [r0, #0x0]
	cmp     r2, #0x0
	ble     branch_2260bfe
	ldr     r1, [r0, #0x4]
	cmp     r1, #0x1
	bne     branch_2260bfe
	.hword  0x1e51 @ sub r1, r2, #0x1
	str     r1, [r0, #0x0]
.thumb
branch_2260bfe: @ 2260bfe :thumb
	ldr     r1, [r0, #0x0]
	cmp     r1, #0x0
	bgt     branch_2260c0a
	mov     r0, #0x0
	pop     {r4-r7}
	bx      lr
@ 0x2260c0a

.thumb
branch_2260c0a: @ 2260c0a :thumb
	mov     r1, r0
	add     r1, #0x36
	ldrb    r4, [r1, #0x0]
	ldr     r5, [r0, #0x30]
	ldr     r2, [r5, #0x0]
	mov     r1, r4
	mov     r3, r4
	cmp     r4, r2
	bcs     branch_2260c36
	ldr     r6, [r5, #0x4]
	mov     r5, #0x18
	mul     r5, r4
	ldrh    r7, [r0, #0x34]
	add     r6, r6, r5
.thumb
branch_2260c26: @ 2260c26 :thumb
	ldr     r5, [r6, #0x0]
	cmp     r5, r7
	bge     branch_2260c36
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r6, #0x18
	mov     r3, r1
	cmp     r1, r2
	bcc     branch_2260c26
.thumb
branch_2260c36: @ 2260c36 :thumb
	cmp     r3, r2
	bne     branch_2260c3c
	.hword  0x1e49 @ sub r1, r1, #0x1
.thumb
branch_2260c3c: @ 2260c3c :thumb
	cmp     r1, r4
	beq     branch_2260c4c
	mov     r2, r0
	add     r2, #0x36
	strb    r1, [r2, #0x0]
	mov     r1, #0x1
	add     r0, #0x37
	strb    r1, [r0, #0x0]
.thumb
branch_2260c4c: @ 2260c4c :thumb
	mov     r0, #0x1
	pop     {r4-r7}
	bx      lr
@ 0x2260c52


.align 2, 0


.thumb
Function_2260c54: @ 2260c54 :thumb
	add     r0, #0x37
	ldrb    r0, [r0, #0x0]
	bx      lr
@ 0x2260c5a


.align 2, 0


.thumb
Function_2260c5c: @ 2260c5c :thumb
	mov     r1, #0x0
	add     r0, #0x37
	strb    r1, [r0, #0x0]
	bx      lr
@ 0x2260c64

.thumb
Function_2260c64: @ 2260c64 :thumb
	add     r0, #0x36
	ldrb    r0, [r0, #0x0]
	bx      lr
@ 0x2260c6a


.align 2, 0


.thumb
Function_2260c6c: @ 2260c6c :thumb
	ldrh    r1, [r1, #0x2]
	cmp     r1, #0x0
	beq     branch_2260c78
	ldrh    r1, [r0, #0x34]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r0, #0x34]
.thumb
branch_2260c78: @ 2260c78 :thumb
	bx      lr
@ 0x2260c7a


.align 2, 0


.thumb
Function_2260c7c: @ 2260c7c :thumb
	push    {r3,r4}
	ldr     r3, [pc, #0x20] @ 0x2260ca0, (=0x1869f)
	cmp     r1, r3
	bls     branch_2260c86
	mov     r1, r3
.thumb
branch_2260c86: @ 2260c86 :thumb
	mov     r3, #0x1
	lsl     r3, r2
	ldr     r4, [r0, #0x1c]
	tst     r4, r3
	bne     branch_2260c9c
	lsl     r2, r2, #2
	add     r2, r0, r2
	str     r1, [r2, #0xc]
	ldr     r1, [r0, #0x1c]
	orr     r1, r3
	str     r1, [r0, #0x1c]
.thumb
branch_2260c9c: @ 2260c9c :thumb
	pop     {r3,r4}
	bx      lr
@ 0x2260ca0

.word 0x1869f @ 0x2260ca0
.thumb
Function_2260ca4: @ 2260ca4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2260ccc
	ldr     r1, [r4, #0x8]
	cmp     r0, r1
	bcc     branch_2260cb6
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2260cb6

.thumb
branch_2260cb6: @ 2260cb6 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2260cba


.align 2, 0


.thumb
Function_2260cbc: @ 2260cbc :thumb
	mov     r2, r0
	mov     r3, r1
	add     r2, #0xc
	ldmia   r2!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r2!, {r0,r1}
	stmia   r3!, {r0,r1}
	bx      lr
@ 0x2260ccc

.thumb
Function_2260ccc: @ 2260ccc :thumb
	push    {r3,r4}
	mov     r3, #0x0
	ldr     r4, [r0, #0x1c]
	mov     r2, r3
	mov     r0, #0x1
.thumb
branch_2260cd6: @ 2260cd6 :thumb
	mov     r1, r0
	lsl     r1, r2
	tst     r1, r4
	beq     branch_2260ce0
	.hword  0x1c5b @ add r3, r3, #0x1
.thumb
branch_2260ce0: @ 2260ce0 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	cmp     r2, #0x4
	blt     branch_2260cd6
	mov     r0, r3
	pop     {r3,r4}
	bx      lr
@ 0x2260cec

.thumb
Function_2260cec: @ 2260cec :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	ldr     r1, [pc, #0x68] @ 0x2260d5c, (=0x87e8)
	mov     r5, r0
	mov     r7, r2
	str     r3, [sp, #0x0]
	bl      malloc
	ldr     r2, [pc, #0x5c] @ 0x2260d5c, (=0x87e8)
	mov     r1, #0x0
	mov     r4, r0
	blx     Call_FillMemWithValue
	mov     r0, #0x1
	str     r0, [r4, #0x4]
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	str     r6, [r4, #0xc]
	ldr     r0, [sp, #0x0]
	str     r7, [r4, #0x10]
	str     r0, [r4, #0x14]
	ldr     r1, [sp, #0x18]
	ldr     r0, [pc, #0x44] @ 0x2260d60, (=0x877c)
	str     r1, [r4, r0]
	ldr     r1, [pc, #0x44] @ 0x2260d64, (=0x19cc)
	mov     r0, r4
	add     r1, r4, r1
	bl      Function_2261b34
	mov     r0, r4
	mov     r1, r5
	bl      Function_22633fc
	ldr     r0, [pc, #0x38] @ 0x2260d68, (=0x878c)
	ldr     r1, [pc, #0x38] @ 0x2260d6c, (=0x1ab4)
	add     r0, r4, r0
	add     r1, r4, r1
	mov     r2, r5
	bl      Function_2262fb4
	ldr     r0, [pc, #0x30] @ 0x2260d70, (=0x87cc)
	add     r0, r4, r0
	bl      Function_226327c
	ldr     r0, [pc, #0x2c] @ 0x2260d74, (=0x22666c0)
	mov     r1, #0x8
	mov     r2, #0x4
	bl      Function_201e3f4
	cmp     r0, #0x1
	beq     branch_2260d56
	bl      ErrorHandling
branch_2260d56: @ 2260d56 :thumb
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x2260d5a

.align 2
.word 0x87e8 @ 0x2260d5c
.word 0x877c @ 0x2260d60
.word 0x19cc @ 0x2260d64
.word 0x878c @ 0x2260d68
.word 0x1ab4 @ 0x2260d6c
.word 0x87cc @ 0x2260d70
.word Unknown_22666c0 @ 0x2260d74



.thumb
Function_2260d78: @ 2260d78 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_201e530
	cmp     r0, #0x1
	beq     branch_2260d88
	bl      ErrorHandling
branch_2260d88: @ 2260d88 :thumb
	ldr     r0, [pc, #0x18] @ 0x2260da4, (=0x878c)
	ldr     r1, [pc, #0x1c] @ 0x2260da8, (=0x1ab4)
	add     r0, r4, r0
	add     r1, r4, r1
	bl      Function_22630dc
	mov     r0, r4
	bl      Function_2263560
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x2260da2


.align 2


.word 0x878c @ 0x2260da4
.word 0x1ab4 @ 0x2260da8
.thumb
Function_2260dac: @ 2260dac :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x198] @ 0x2260f4c, (=0x1f38)
	mov     r6, r1
	ldr     r0, [r4, r0]
	mov     r5, #0x1
	cmp     r0, #0x4
	bcc     branch_2260dde
	ldr     r0, [pc, #0x190] @ 0x2260f50, (=0x8785)
	ldrb    r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2260dca
	mov     r1, r5
	sub     r1, #0x79
	b       branch_2260dcc
@ 0x2260dca

.thumb
branch_2260dca: @ 2260dca :thumb
	mov     r1, #0x78
.thumb
branch_2260dcc: @ 2260dcc :thumb
	ldr     r2, [pc, #0x184] @ 0x2260f54, (=0x19cc)
	add     r0, r4, r2
	.hword  0x1c92 @ add r2, r2, #0x2
	ldrh    r2, [r4, r2]
	add     r1, r2, r1
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	bl      Function_2261c48
.thumb
branch_2260dde: @ 2260dde :thumb
	ldr     r1, [pc, #0x178] @ 0x2260f58, (=0x1ab4)
	add     r0, r4, r1
	sub     r1, #0xe8
	add     r1, r4, r1
	bl      Function_2261ab8
	ldr     r0, [pc, #0x170] @ 0x2260f5c, (=0x1f74)
	ldr     r1, [pc, #0x164] @ 0x2260f54, (=0x19cc)
	add     r0, r4, r0
	add     r1, r4, r1
	bl      Function_22640ec
	ldr     r0, [pc, #0x164] @ 0x2260f5c, (=0x1f74)
	ldr     r1, [pc, #0x158] @ 0x2260f54, (=0x19cc)
	add     r0, r4, r0
	add     r1, r4, r1
	bl      Function_2264110
	ldr     r0, [pc, #0x148] @ 0x2260f4c, (=0x1f38)
	ldr     r1, [r4, r0]
	cmp     r1, #0x8
	bls     branch_2260e0c
	b       branch_2260f2e
@ 0x2260e0c

.thumb
branch_2260e0c: @ 2260e0c :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2260e18

Jumppoints_2260e18:
.hword branch_2260e2a - Jumppoints_2260e18 - 2
.hword branch_2260e3c - Jumppoints_2260e18 - 2
.hword branch_2260e5a - Jumppoints_2260e18 - 2
.hword branch_2260e74 - Jumppoints_2260e18 - 2
.hword branch_2260eca - Jumppoints_2260e18 - 2
.hword branch_2260ed4 - Jumppoints_2260e18 - 2
.hword branch_2260eec - Jumppoints_2260e18 - 2
.hword branch_2260f02 - Jumppoints_2260e18 - 2
.hword branch_2260f18 - Jumppoints_2260e18 - 2
.thumb
branch_2260e2a: @ 2260e2a :thumb
	ldr     r0, [pc, #0x134] @ 0x2260f60, (=0x878c)
	add     r0, r4, r0
	bl      Function_2263130
	ldr     r0, [pc, #0x118] @ 0x2260f4c, (=0x1f38)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	b       branch_2260f2e
@ 0x2260e3c

.thumb
branch_2260e3c: @ 2260e3c :thumb
	ldr     r0, [pc, #0x120] @ 0x2260f60, (=0x878c)
	mov     r1, r4
	add     r0, r4, r0
	bl      Function_2263150
	cmp     r0, #0x1
	bne     branch_2260f2e
	ldr     r0, [pc, #0x100] @ 0x2260f4c, (=0x1f38)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	mov     r0, #0x2
	bl      Function_20364f0
	b       branch_2260f2e
@ 0x2260e5a

.thumb
branch_2260e5a: @ 2260e5a :thumb
	mov     r0, #0x2
	bl      Function_2036540
	cmp     r0, #0x0
	beq     branch_2260f2e
	ldr     r0, [pc, #0xe4] @ 0x2260f4c, (=0x1f38)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	mov     r1, #0x41
	add     r0, #0x8
	str     r1, [r4, r0]
	b       branch_2260f2e
@ 0x2260e74

.thumb
branch_2260e74: @ 2260e74 :thumb
	mov     r1, r0
	add     r1, #0x8
	ldr     r1, [r4, r1]
	.hword  0x1e4a @ sub r2, r1, #0x1
	mov     r1, r0
	add     r1, #0x8
	str     r2, [r4, r1]
	add     r0, #0x8
	ldr     r0, [r4, r0]
	cmp     r0, #0x32
	bne     branch_2260e90
	ldr     r0, [pc, #0xd8] @ 0x2260f64, (=0x61a)
	bl      Function_2005748
.thumb
branch_2260e90: @ 2260e90 :thumb
	mov     r0, #0x7d
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	cmp     r0, #0x14
	bne     branch_2260ea0
	ldr     r0, [pc, #0xcc] @ 0x2260f68, (=0x63e)
	bl      Function_2005748
.thumb
branch_2260ea0: @ 2260ea0 :thumb
	ldr     r0, [pc, #0xb8] @ 0x2260f5c, (=0x1f74)
	mov     r1, #0x1
	add     r0, r4, r0
	lsl     r1, r1, #12
	bl      Function_2264214
	mov     r0, #0x7d
	lsl     r0, r0, #6
	ldr     r1, [r4, r0]
	cmp     r1, #0x0
	bne     branch_2260f2e
	ldr     r1, [pc, #0xa0] @ 0x2260f58, (=0x1ab4)
	sub     r0, #0x8
	add     r0, r4, r0
	add     r1, r4, r1
	bl      Function_2261a74
	ldr     r0, [pc, #0x88] @ 0x2260f4c, (=0x1f38)
	mov     r1, #0x4
	str     r1, [r4, r0]
	b       branch_2260f2e
@ 0x2260eca

.thumb
branch_2260eca: @ 2260eca :thumb
	cmp     r6, #0x1
	bne     branch_2260f2e
	mov     r1, #0x5
	str     r1, [r4, r0]
	b       branch_2260f2e
@ 0x2260ed4

.thumb
branch_2260ed4: @ 2260ed4 :thumb
	ldr     r1, [pc, #0x80] @ 0x2260f58, (=0x1ab4)
	add     r0, r4, r0
	add     r1, r4, r1
	bl      Function_2261a10
	ldr     r0, [pc, #0x8c] @ 0x2260f6c, (=0x5dd)
	bl      Function_2005748
	ldr     r0, [pc, #0x64] @ 0x2260f4c, (=0x1f38)
	mov     r1, #0x6
	str     r1, [r4, r0]
	b       branch_2260f2e
@ 0x2260eec

.thumb
branch_2260eec: @ 2260eec :thumb
	ldr     r1, [pc, #0x68] @ 0x2260f58, (=0x1ab4)
	add     r0, r4, r0
	add     r1, r4, r1
	bl      Function_2261a3c
	cmp     r0, #0x0
	bne     branch_2260f2e
	ldr     r0, [pc, #0x50] @ 0x2260f4c, (=0x1f38)
	mov     r1, #0x7
	str     r1, [r4, r0]
	b       branch_2260f2e
@ 0x2260f02

.thumb
branch_2260f02: @ 2260f02 :thumb
	ldr     r1, [pc, #0x54] @ 0x2260f58, (=0x1ab4)
	add     r0, r4, r0
	add     r1, r4, r1
	bl      Function_2261aa4
	cmp     r0, #0x0
	bne     branch_2260f2e
	ldr     r0, [pc, #0x38] @ 0x2260f4c, (=0x1f38)
	mov     r1, #0x8
	str     r1, [r4, r0]
	b       branch_2260f2e
@ 0x2260f18

.thumb
branch_2260f18: @ 2260f18 :thumb
	ldr     r1, [pc, #0x3c] @ 0x2260f58, (=0x1ab4)
	add     r0, r4, r0
	add     r1, r4, r1
	bl      Function_2261a54
	ldr     r0, [pc, #0x30] @ 0x2260f54, (=0x19cc)
	mov     r1, #0x1
	add     r0, r4, r0
	bl      Function_2261c18
	mov     r5, #0x0
.thumb
branch_2260f2e: @ 2260f2e :thumb
	ldr     r0, [pc, #0x2c] @ 0x2260f5c, (=0x1f74)
	ldr     r1, [pc, #0x20] @ 0x2260f54, (=0x19cc)
	ldr     r2, [r4, #0x0]
	add     r0, r4, r0
	add     r1, r4, r1
	bl      Function_22640a4
	ldr     r1, [pc, #0x18] @ 0x2260f58, (=0x1ab4)
	mov     r0, r4
	add     r1, r4, r1
	bl      Function_226369c
	mov     r0, r5
	pop     {r4-r6,pc}
@ 0x2260f4a


.align 2


.word 0x1f38 @ 0x2260f4c
.word 0x8785 @ 0x2260f50
.word 0x19cc @ 0x2260f54
.word 0x1ab4 @ 0x2260f58
.word 0x1f74 @ 0x2260f5c
.word 0x878c @ 0x2260f60
.word 0x61a @ 0x2260f64
.word 0x63e @ 0x2260f68
.word 0x5dd @ 0x2260f6c
.thumb
Function_2260f70: @ 2260f70 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	ldr     r1, [pc, #0x138] @ 0x22610b0, (=0x1f54)
	mov     r4, r0
	ldr     r2, [r4, r1]
	mov     r6, #0x1
	cmp     r2, #0x3
	bhi     branch_2261050
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x2260f8c

Jumppoints_2260f8c:
.hword branch_2260f94 - Jumppoints_2260f8c - 2
.hword branch_2260fda - Jumppoints_2260f8c - 2
.hword branch_2261036 - Jumppoints_2260f8c - 2
.hword branch_226104e - Jumppoints_2260f8c - 2
.thumb
branch_2260f94: @ 2260f94 :thumb
	bl      Function_22625a8
	mov     r0, r4
	bl      Function_2262d90
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x18
	mov     r1, r0
	sub     r1, #0x26
	mov     r2, #0x0
	mov     r3, #0x3f
	bl      Function_200aae0
	ldr     r0, [pc, #0x100] @ 0x22610b4, (=0x1ab4)
	add     r0, r4, r0
	bl      Function_2261adc
	ldr     r0, [pc, #0xfc] @ 0x22610b8, (=0x21a4)
	ldr     r0, [r4, r0]
	bl      0x225cbb0
	ldr     r0, [pc, #0xf8] @ 0x22610bc, (=0x87e4)
	add     r0, r4, r0
	bl      Function_2265a08
	ldr     r0, [pc, #0xf4] @ 0x22610c0, (=0x862c)
	add     r0, r4, r0
	bl      Function_2265788
	ldr     r0, [pc, #0xdc] @ 0x22610b0, (=0x1f54)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	b       branch_2261050
@ 0x2260fda

.thumb
branch_2260fda: @ 2260fda :thumb
	ldr     r0, [pc, #0xd8] @ 0x22610b4, (=0x1ab4)
	mov     r5, r6
	add     r0, r4, r0
	bl      Function_2261aec
	cmp     r0, #0x0
	bne     branch_2260fea
	mov     r5, #0x0
.thumb
branch_2260fea: @ 2260fea :thumb
	mov     r0, r4
	bl      Function_2262304
	mov     r0, r4
	bl      Function_2262540
	mov     r0, r4
	bl      Function_22625c8
	cmp     r0, #0x1
	bne     branch_2261002
	mov     r5, #0x0
.thumb
branch_2261002: @ 2261002 :thumb
	ldr     r0, [pc, #0xb0] @ 0x22610b4, (=0x1ab4)
	add     r0, r4, r0
	bl      Function_2261b1c
	cmp     r0, #0x0
	bne     branch_2261010
	mov     r5, #0x0
.thumb
branch_2261010: @ 2261010 :thumb
	mov     r0, #0x2
	bl      Function_200ac1c
	cmp     r0, #0x0
	bne     branch_226101c
	mov     r5, #0x0
.thumb
branch_226101c: @ 226101c :thumb
	cmp     r5, #0x1
	bne     branch_2261050
	cmp     r7, #0x1
	bne     branch_2261050
	ldr     r0, [pc, #0x9c] @ 0x22610c4, (=0x1f58)
	mov     r1, #0x0
	str     r1, [r4, r0]
	.hword  0x1f01 @ sub r1, r0, #0x4
	ldr     r1, [r4, r1]
	.hword  0x1f00 @ sub r0, r0, #0x4
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	b       branch_2261050
@ 0x2261036

.thumb
branch_2261036: @ 2261036 :thumb
	add     r0, r1, #0x4
	ldr     r0, [r4, r0]
	add     r2, r0, #0x1
	add     r0, r1, #0x4
	str     r2, [r4, r0]
	ldr     r0, [r4, r0]
	cmp     r0, #0x40
	bcc     branch_2261050
	ldr     r0, [r4, r1]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, r1]
	b       branch_2261050
@ 0x226104e

.thumb
branch_226104e: @ 226104e :thumb
	mov     r6, #0x0
.thumb
branch_2261050: @ 2261050 :thumb
	ldr     r0, [pc, #0x74] @ 0x22610c8, (=0x8785)
	ldrb    r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_226105e
	mov     r2, #0x77
	mvn     r2, r2
	b       branch_2261060
@ 0x226105e

.thumb
branch_226105e: @ 226105e :thumb
	mov     r2, #0x78
.thumb
branch_2261060: @ 2261060 :thumb
	ldr     r1, [pc, #0x68] @ 0x22610cc, (=0x19cc)
	add     r0, r4, r1
	.hword  0x1c89 @ add r1, r1, #0x2
	ldrh    r1, [r4, r1]
	add     r1, r1, r2
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	bl      Function_2261c48
	ldr     r0, [pc, #0x5c] @ 0x22610d0, (=0x1f74)
	ldr     r1, [pc, #0x54] @ 0x22610cc, (=0x19cc)
	add     r0, r4, r0
	add     r1, r4, r1
	bl      Function_22640c0
	ldr     r0, [pc, #0x50] @ 0x22610d0, (=0x1f74)
	ldr     r1, [pc, #0x48] @ 0x22610cc, (=0x19cc)
	add     r0, r4, r0
	add     r1, r4, r1
	bl      Function_22640ec
	ldr     r0, [pc, #0x44] @ 0x22610d0, (=0x1f74)
	ldr     r1, [pc, #0x3c] @ 0x22610cc, (=0x19cc)
	ldr     r2, [r4, #0x0]
	add     r0, r4, r0
	add     r1, r4, r1
	bl      Function_22640a4
	ldr     r1, [pc, #0x18] @ 0x22610b4, (=0x1ab4)
	mov     r0, r4
	add     r1, r4, r1
	bl      Function_226369c
	ldr     r0, [pc, #0x1c] @ 0x22610c0, (=0x862c)
	add     r0, r4, r0
	bl      Function_2265820
	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x22610ae


.align 2


.word 0x1f54 @ 0x22610b0
.word 0x1ab4 @ 0x22610b4
.word 0x21a4 @ 0x22610b8
.word 0x87e4 @ 0x22610bc
.word 0x862c @ 0x22610c0
.word 0x1f58 @ 0x22610c4
.word 0x8785 @ 0x22610c8
.word 0x19cc @ 0x22610cc
.word 0x1f74 @ 0x22610d0
.thumb
Function_22610d4: @ 22610d4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r2, [r4, #0x0]
	cmp     r2, #0x2
	bcs     branch_22610fa
	ldr     r0, [pc, #0xc0] @ 0x22611a0, (=0x2265b3c)
	lsl     r1, r2, #2
	ldr     r1, [r0, r1]
	ldr     r0, [r4, #0x8]
	cmp     r1, r0
	bhi     branch_22610fa
	add     r0, r2, #0x1
	str     r0, [r4, #0x0]
	cmp     r0, #0x1
	bne     branch_22610fa
	ldr     r0, [pc, #0xb0] @ 0x22611a4, (=0x87e4)
	add     r0, r4, r0
	bl      Function_22658e0
.thumb
branch_22610fa: @ 22610fa :thumb
	ldr     r0, [pc, #0xac] @ 0x22611a8, (=0x86ec)
	mov     r1, #0x1
	add     r0, r4, r0
	mov     r2, #0x0
	bl      Function_201e564
	mov     r0, r4
	bl      Function_2262974
	ldr     r0, [pc, #0x9c] @ 0x22611ac, (=0x8730)
	add     r0, r4, r0
	bl      Function_2262e64
	cmp     r0, #0x0
	bne     branch_2261122
	ldr     r1, [pc, #0x90] @ 0x22611ac, (=0x8730)
	mov     r0, r4
	add     r1, r4, r1
	bl      Function_2262efc
.thumb
branch_2261122: @ 2261122 :thumb
	ldr     r0, [pc, #0x8c] @ 0x22611b0, (=0x87cc)
	ldr     r1, [r4, #0x10]
	add     r0, r4, r0
	bl      Function_22632dc
	cmp     r0, #0x1
	bne     branch_2261150
	ldr     r0, [pc, #0x7c] @ 0x22611b0, (=0x87cc)
	add     r0, r4, r0
	bl      Function_22632d8
	mov     r1, r0
	ldr     r0, [pc, #0x78] @ 0x22611b4, (=0xffff)
	cmp     r1, r0
	beq     branch_2261148
	ldr     r0, [pc, #0x74] @ 0x22611b8, (=0x1f74)
	add     r0, r4, r0
	bl      Function_2264268
.thumb
branch_2261148: @ 2261148 :thumb
	ldr     r0, [pc, #0x64] @ 0x22611b0, (=0x87cc)
	add     r0, r4, r0
	bl      Function_22632c8
.thumb
branch_2261150: @ 2261150 :thumb
	mov     r0, r4
	bl      Function_2262304
	ldr     r1, [pc, #0x64] @ 0x22611bc, (=0x19cc)
	mov     r0, r4
	add     r1, r4, r1
	bl      Function_2261bbc
	ldr     r1, [pc, #0x5c] @ 0x22611c0, (=0x1ab4)
	mov     r0, r4
	add     r1, r4, r1
	bl      Function_2263640
	mov     r0, r4
	bl      Function_2262524
	ldr     r0, [pc, #0x30] @ 0x22611a4, (=0x87e4)
	ldr     r1, [pc, #0x50] @ 0x22611c4, (=0x1c54)
	ldr     r2, [pc, #0x40] @ 0x22611b8, (=0x1f74)
	add     r0, r4, r0
	add     r1, r4, r1
	add     r2, r4, r2
	bl      Function_22658f8
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x1
	bne     branch_226118c
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
.thumb
branch_226118c: @ 226118c :thumb
	ldr     r1, [r4, #0xc]
	ldr     r0, [r4, #0x8]
	cmp     r0, r1
	blt     branch_226119a
	str     r1, [r4, #0x8]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x226119a

.thumb
branch_226119a: @ 226119a :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x226119e

.align 2
.word Unknown_2265b3c @ 0x22611a0
.word 0x87e4 @ 0x22611a4
.word 0x86ec @ 0x22611a8
.word 0x8730 @ 0x22611ac
.word 0x87cc @ 0x22611b0
.word 0xffff @ 0x22611b4
.word 0x1f74 @ 0x22611b8
.word 0x19cc @ 0x22611bc
.word 0x1ab4 @ 0x22611c0
.word 0x1c54 @ 0x22611c4



.thumb
Function_22611c8: @ 22611c8 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x10] @ 0x22611dc, (=0x1ab4)
	ldr     r0, [r0, r1]
	bl      Function_201c2b8
	bl      Function_201dcac
	bl      Function_200a858
	pop     {r3,pc}
@ 0x22611dc

.word 0x1ab4 @ 0x22611dc
.thumb
Function_22611e0: @ 22611e0 :thumb
	ldr     r0, [r0, #0x8]
	bx      lr
@ 0x22611e4

.thumb
Function_22611e4: @ 22611e4 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x28
	mov     r4, r1
	mov     r5, r0
	ldrh    r0, [r4, #0x0]
	ldr     r1, [r5, #0x14]
	cmp     r1, r0
	beq     branch_226121c
	mov     r0, r4
	add     r1, sp, #0x0
	bl      Function_226218c
	mov     r0, r5
	add     r1, sp, #0x0
	mov     r2, #0x2
	bl      Function_22621dc
	ldrh    r0, [r4, #0x2]
	cmp     r0, #0x0
	beq     branch_226121c
	mov     r2, #0x12
	ldr     r0, [pc, #0x10] @ 0x2261220, (=0x1e38)
	ldrh    r1, [r4, #0x0]
	ldsb    r2, [r4, r2]
	ldr     r3, [r5, #0x0]
	add     r0, r5, r0
	bl      Function_226158c
.thumb
branch_226121c: @ 226121c :thumb
	add     sp, #0x28
	pop     {r3-r5,pc}
@ 0x2261220

.word 0x1e38 @ 0x2261220
.thumb
Function_2261224: @ 2261224 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r2, #0x0
	mov     r3, r5
.thumb
branch_226122c: @ 226122c :thumb
	mov     r0, r3
	add     r0, #0x4c
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x4
	bne     branch_2261252
	mov     r0, #0x44
	mov     r4, r2
	mul     r4, r0
	mov     r0, r5
	add     r0, #0x50
	add     r0, r0, r4
	bl      Function_2262134
	add     r5, #0x4c
	add     r0, r5, r4
	bl      Function_22622f8
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2261252

.thumb
branch_2261252: @ 2261252 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r3, #0x44
	cmp     r2, #0x60
	blt     branch_226122c
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x226125e


.align 2, 0


.thumb
Function_2261260: @ 2261260 :thumb
	mov     r3, r1
	ldr     r1, [pc, #0xc] @ 0x2261270, (=0x86dc)
	add     r2, r0, r1
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	bx      lr
@ 0x2261270

.word 0x86dc @ 0x2261270
.thumb
Function_2261274: @ 2261274 :thumb
	ldr     r0, [r0, #0x18]
	bx      lr
@ 0x2261278

.thumb
Function_2261278: @ 2261278 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r4, [pc, #0x28] @ 0x22612a8, (=0x8780)
	mov     r3, r0
	ldrh    r2, [r3, r4]
	add     r0, r4, #0x2
	strh    r2, [r3, r0]
	strh    r1, [r3, r4]
	ldrh    r0, [r3, r4]
	add     r2, r4, #0x4
	.hword  0x1f21 @ sub r1, r4, #0x4
	str     r0, [sp, #0x0]
	mov     r0, r4
	sub     r0, #0x50
	.hword  0x1ca4 @ add r4, r4, #0x2
	add     r0, r3, r0
	ldr     r1, [r3, r1]
	add     r2, r3, r2
	ldrh    r3, [r3, r4]
	bl      Function_2262dc4
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x22612a6


.align 2


.word 0x8780 @ 0x22612a8
.thumb
Function_22612ac: @ 22612ac :thumb
	ldr     r3, [pc, #0x4] @ 0x22612b4, (=0x87cc)
	add     r0, r0, r3
	ldr     r3, [pc, #0x4] @ 0x22612b8, (=0x2263295)
	bx      r3
@ 0x22612b4

.word 0x87cc @ 0x22612b4
.word Function_2263294+1 @ =0x2263295, 0x22612b8
.thumb
Function_22612bc: @ 22612bc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r1, #0x0]
	ldr     r2, [pc, #0x38] @ 0x22612fc, (=0x8784)
	strb    r0, [r4, r2]
	ldrb    r3, [r1, #0x1]
	add     r0, r2, #0x1
	strb    r3, [r4, r0]
	ldrb    r3, [r1, #0x2]
	add     r0, r2, #0x2
	strb    r3, [r4, r0]
	ldrb    r1, [r1, #0x3]
	add     r0, r2, #0x3
	strb    r1, [r4, r0]
	mov     r1, #0x1
	add     r0, r2, #0x4
	str     r1, [r4, r0]
	mov     r1, r2
	mov     r0, r2
	sub     r1, #0x8
	sub     r0, #0x54
	ldr     r1, [r4, r1]
	add     r0, r4, r0
	add     r2, r4, r2
	bl      Function_2262db0
	ldr     r1, [pc, #0xc] @ 0x2261300, (=0x8730)
	mov     r0, r4
	add     r1, r4, r1
	bl      Function_2262efc
	pop     {r4,pc}
@ 0x22612fc

.word 0x8784 @ 0x22612fc
.word 0x8730 @ 0x2261300
.thumb
Function_2261304: @ 2261304 :thumb
	push    {r3-r7,lr}
	ldr     r4, [sp, #0x18]
	mov     r5, r0
	mov     r7, r2
	mov     r0, r3
	mov     r6, r1
	lsl     r2, r4, #12
	str     r3, [sp, #0x0]
	asr     r1, r0, #31
	asr     r3, r2, #31
	blx     _ll_mul
	mov     r2, r0
	sub     r0, r7, r6
	mov     r7, #0x2
	mov     r3, #0x0
	lsl     r7, r7, #10
	add     r2, r2, r7
	adc     r1, r3
	lsl     r1, r1, #20
	lsr     r2, r2, #12
	orr     r2, r1
	sub     r2, r0, r2
	asr     r1, r2, #31
	lsr     r0, r2, #19
	lsl     r1, r1, #13
	orr     r1, r0
	lsl     r0, r2, #13
	add     r0, r0, r7
	adc     r1, r3
	lsl     r1, r1, #20
	lsr     r0, r0, #12
	orr     r0, r1
	mov     r1, r4
	mul     r1, r4
	lsl     r1, r1, #12
	blx     FX_Div
	str     r6, [r5, #0x0]
	ldr     r1, [sp, #0x0]
	str     r6, [r5, #0x4]
	str     r1, [r5, #0x8]
	str     r0, [r5, #0xc]
	mov     r0, #0x0
	str     r0, [r5, #0x10]
	str     r4, [r5, #0x14]
	pop     {r3-r7,pc}
@ 0x2261362


.align 2, 0


.thumb
Function_2261364: @ 2261364 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r6, [r5, #0x10]
	ldr     r0, [r5, #0x8]
	lsl     r2, r6, #12
	asr     r1, r0, #31
	asr     r3, r2, #31
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsr     r4, r2, #12
	lsl     r0, r1, #20
	mov     r2, r6
	orr     r4, r0
	ldr     r0, [r5, #0xc]
	mul     r2, r6
	lsl     r2, r2, #12
	asr     r1, r0, #31
	asr     r3, r2, #31
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r0, r0, r2
	adc     r1, r3
	lsl     r1, r1, #20
	lsr     r0, r0, #12
	orr     r0, r1
	lsl     r1, r2, #2
	blx     FX_Div
	ldr     r1, [r5, #0x4]
	add     r0, r4, r0
	add     r0, r1, r0
	str     r0, [r5, #0x0]
	ldr     r0, [r5, #0x10]
	ldr     r1, [r5, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r0, r1
	bgt     branch_22613c4
	str     r0, [r5, #0x10]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x22613c4

.thumb
branch_22613c4: @ 22613c4 :thumb
	str     r1, [r5, #0x10]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x22613ca


.align 2, 0


.thumb
Function_22613cc: @ 22613cc :thumb
	push    {r3,r4}
	lsl     r4, r0, #5
	lsl     r0, r2, #3
	ldr     r2, [pc, #0x1c] @ 0x22613f0, (=0x2265e84)
	lsl     r1, r1, #7
	add     r2, r2, r1
	add     r2, r4, r2
	ldr     r2, [r0, r2]
	str     r2, [r3, #0x0]
	ldr     r2, [pc, #0x14] @ 0x22613f4, (=0x2265e88)
	add     r1, r2, r1
	add     r1, r4, r1
	ldr     r1, [r0, r1]
	ldr     r0, [sp, #0x8]
	str     r1, [r0, #0x0]
	pop     {r3,r4}
	bx      lr
@ 0x22613ee


.align 2


.word 0x2265e84 @ 0x22613f0
.word 0x2265e88 @ 0x22613f4
.thumb
Function_22613f8: @ 22613f8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x28
	mov     r5, r0
	ldr     r0, [r5, #0x14]
	mov     r4, r3
	add     r3, sp, #0x0
	strh    r0, [r3, #0x0]
	mov     r0, #0x0
	strh    r0, [r3, #0x2]
	sub     r3, r1, r4
	lsr     r1, r3, #31
	add     r1, r3, r1
	asr     r1, r1, #1
	lsl     r1, r1, #16
	asr     r1, r1, #4
	str     r1, [sp, #0x4]
	add     r1, sp, #0x28
	ldrh    r1, [r1, #0x10]
	sub     r2, r2, r1
	lsr     r1, r2, #31
	add     r1, r2, r1
	asr     r1, r1, #1
	lsl     r1, r1, #16
	asr     r1, r1, #4
	str     r0, [sp, #0x8]
	add     r0, sp, #0x4
	str     r1, [sp, #0xc]
	blx     VEC_Mag
	ldr     r1, [pc, #0xbc] @ 0x22614f0, (=0x1e200)
	cmp     r0, r1
	ble     branch_226147a
	add     r0, sp, #0x4
	mov     r1, r0
	blx     VEC_Normalize
	ldr     r0, [sp, #0x4]
	ldr     r2, [pc, #0xac] @ 0x22614f0, (=0x1e200)
	asr     r1, r0, #31
	mov     r3, #0x0
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	ldr     r0, [sp, #0xc]
	str     r1, [sp, #0x4]
	ldr     r2, [pc, #0x8c] @ 0x22614f0, (=0x1e200)
	asr     r1, r0, #31
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	str     r1, [sp, #0xc]
.thumb
branch_226147a: @ 226147a :thumb
	mov     r0, #0x26
	lsl     r0, r0, #12
	str     r0, [sp, #0x8]
	add     r0, sp, #0x4
	blx     VEC_Mag
	ldr     r2, [pc, #0x6c] @ 0x22614f4, (=0x99a)
	asr     r1, r0, #31
	mov     r3, #0x0
	str     r0, [sp, #0x10]
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	add     r0, sp, #0x4
	str     r1, [sp, #0x10]
	mov     r1, r0
	blx     VEC_Normalize
	lsl     r0, r4, #16
	add     r2, sp, #0x28
	mov     r1, #0x10
	ldsh    r1, [r2, r1]
	asr     r0, r0, #16
	add     r2, sp, #0x14
	bl      Function_22642f8
	mov     r0, #0x0
	str     r0, [sp, #0x18]
	add     r2, sp, #0x0
	add     r0, sp, #0x14
	ldrh    r2, [r2, #0x0]
	ldr     r3, [r5, #0x10]
	mov     r1, r0
	bl      Function_2264354
	add     r2, sp, #0x0
	add     r0, sp, #0x4
	ldrh    r2, [r2, #0x0]
	ldr     r3, [r5, #0x10]
	mov     r1, r0
	bl      Function_2264354
	mov     r0, #0x0
	str     r0, [sp, #0x24]
	ldr     r2, [sp, #0x3c]
	mov     r0, r5
	add     r1, sp, #0x0
	bl      Function_22621dc
	add     sp, #0x28
	pop     {r3-r5,pc}
@ 0x22614ee


.align 2


.word 0x1e200 @ 0x22614f0
.word 0x99a @ 0x22614f4
.thumb
Function_22614f8: @ 22614f8 :thumb
	ldr     r1, [r0, #0x1c]
	cmp     r1, #0x3
	blt     branch_2261502
	mov     r1, #0x2
	b       branch_2261506
@ 0x2261502

.thumb
branch_2261502: @ 2261502 :thumb
	lsl     r1, r1, #24
	lsr     r1, r1, #24
.thumb
branch_2261506: @ 2261506 :thumb
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x10] @ 0x226151c, (=0x2265b2c)
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, r2]
	cmp     r0, #0x2
	bne     branch_2261516
	lsl     r0, r1, #1
	add     r1, r1, r0
.thumb
branch_2261516: @ 2261516 :thumb
	mov     r0, r1
	bx      lr
@ 0x226151a

.align 2
.word Unknown_2265b2c @ 0x226151c



.thumb
Function_2261520: @ 2261520 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x44
	mov     r6, r1
	mov     r5, r0
	ldr     r0, [r6, #0x1c]
	ldr     r7, [sp, #0x58]
	str     r0, [sp, #0x14]
	mov     r0, #0x56
	lsl     r0, r0, #2
	add     r0, r6, r0
	str     r0, [sp, #0x18]
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r0, [sp, #0x28]
	str     r0, [sp, #0x2c]
	str     r0, [sp, #0x30]
	mov     r4, #0x0
	add     r0, sp, #0x14
	strh    r4, [r0, #0x20]
	mov     r0, #0x1
	str     r2, [sp, #0xc]
	str     r3, [sp, #0x10]
	str     r4, [sp, #0x38]
	str     r0, [sp, #0x3c]
	str     r7, [sp, #0x40]
.thumb
branch_2261552: @ 2261552 :thumb
	ldr     r0, [sp, #0x10]
	str     r4, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r3, [sp, #0xc]
	mov     r0, r5
	add     r1, sp, #0x14
	mov     r2, r6
	str     r7, [sp, #0x8]
	bl      Function_22615b0
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x40
	cmp     r4, #0x4
	blt     branch_2261552
	add     sp, #0x44
	pop     {r4-r7,pc}
@ 0x2261572


.align 2, 0


.thumb
Function_2261574: @ 2261574 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_226157a: @ 226157a :thumb
	mov     r0, r5
	bl      Function_2261648
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x40
	cmp     r4, #0x4
	blt     branch_226157a
	pop     {r3-r5,pc}
@ 0x226158a


.align 2, 0


.thumb
Function_226158c: @ 226158c :thumb
	push    {r4,lr}
	lsl     r4, r1, #6
	add     r0, r0, r4
	bl      Function_2261660
	pop     {r4,pc}
@ 0x2261598

.thumb
Function_2261598: @ 2261598 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_226159e: @ 226159e :thumb
	mov     r0, r5
	bl      Function_2261744
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x40
	cmp     r4, #0x4
	blt     branch_226159e
	pop     {r3-r5,pc}
@ 0x22615ae


.align 2, 0


.thumb
Function_22615b0: @ 22615b0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x28]
	ldr     r6, [sp, #0x4]
	str     r0, [sp, #0x28]
	ldr     r0, [sp, #0x2c]
	mov     r5, r1
	str     r3, [sp, #0x8]
	str     r0, [sp, #0x2c]
	mov     r7, #0x0
	mov     r4, r6
.thumb
branch_22615c8: @ 22615c8 :thumb
	add     r0, sp, #0xc
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x2c]
	ldr     r2, [sp, #0x28]
	add     r3, sp, #0x10
	bl      Function_22613cc
	ldr     r0, [sp, #0x10]
	mov     r3, r5
	lsl     r0, r0, #12
	str     r0, [r5, #0x8]
	ldr     r0, [sp, #0xc]
	mov     r2, r6
	lsl     r0, r0, #12
	add     r3, #0x8
	str     r0, [r5, #0xc]
	ldmia   r3!, {r0,r1}
	add     r2, #0x18
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	mov     r0, r5
	bl      Function_2021aa0
	str     r0, [r4, #0x0]
	mov     r1, #0x2
	bl      Function_2021d6c
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	bl      Function_2021cac
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_2021cc8
	mov     r1, #0x6
	ldr     r0, [r4, #0x0]
	lsl     r1, r1, #10
	bl      Function_2021ce4
	mov     r0, #0x0
	str     r0, [r4, #0xc]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r6, #0xc
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r7, #0x3
	blt     branch_22615c8
	ldr     r1, [sp, #0x2c]
	ldr     r0, [sp, #0x28]
	cmp     r1, r0
	bne     branch_226163c
	ldr     r0, [sp, #0x4]
	mov     r1, #0x1
	str     r1, [r0, #0x3c]
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x226163c

.thumb
branch_226163c: @ 226163c :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, #0x0
	str     r1, [r0, #0x3c]
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2261646


.align 2, 0


.thumb
Function_2261648: @ 2261648 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_226164e: @ 226164e :thumb
	ldr     r0, [r5, #0x0]
	bl      Function_2021bd4
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x3
	blt     branch_226164e
	pop     {r3-r5,pc}
@ 0x226165e


.align 2, 0


.thumb
Function_2261660: @ 2261660 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r4, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r4
	.hword  0x1e40 @ sub r0, r0, #0x1
	ldr     r5, [sp, #0x0]
	str     r1, [sp, #0x4]
	str     r2, [sp, #0x8]
	str     r3, [sp, #0xc]
	str     r4, [sp, #0x10]
	str     r0, [sp, #0x14]
	mov     r6, r4
.thumb
branch_226167a: @ 226167a :thumb
	ldr     r0, [r5, #0x0]
	bl      Function_2021d34
	cmp     r0, #0x0
	bne     branch_226168c
	mov     r0, #0x1
	str     r6, [sp, #0x14]
	str     r0, [sp, #0x10]
	b       branch_22616ac
@ 0x226168c

.thumb
branch_226168c: @ 226168c :thumb
	ldr     r0, [r5, #0x0]
	bl      Function_2021f74
	mov     r7, r0
	ldr     r0, [r5, #0x0]
	add     r1, r7, #0x1
	bl      Function_2021f58
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x0
	bne     branch_22616ac
	add     r0, r7, #0x1
	cmp     r4, r0
	bhi     branch_22616ac
	mov     r4, r0
	str     r6, [sp, #0x14]
.thumb
branch_22616ac: @ 22616ac :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x3
	blt     branch_226167a
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x0
	bge     branch_22616be
	bl      ErrorHandling
.thumb
branch_22616be: @ 22616be :thumb
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x3
	bcc     branch_22616c8
	mov     r0, #0x2
	str     r0, [sp, #0x8]
.thumb
branch_22616c8: @ 22616c8 :thumb
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x2
	beq     branch_22616ea
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x3c]
	cmp     r0, #0x1
	bne     branch_22616de
	ldr     r0, [sp, #0x8]
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [sp, #0x8]
	b       branch_22616e4
@ 0x22616de

.thumb
branch_22616de: @ 22616de :thumb
	ldr     r0, [sp, #0x8]
	add     r0, #0x8
	str     r0, [sp, #0x8]
.thumb
branch_22616e4: @ 22616e4 :thumb
	ldr     r0, [sp, #0x4]
	add     r4, r0, #0x3
	b       branch_2261702
@ 0x22616ea

.thumb
branch_22616ea: @ 22616ea :thumb
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x3c]
	cmp     r0, #0x1
	bne     branch_22616fa
	ldr     r0, [sp, #0x8]
	.hword  0x1d40 @ add r0, r0, #0x5
	str     r0, [sp, #0x8]
	b       branch_2261700
@ 0x22616fa

.thumb
branch_22616fa: @ 22616fa :thumb
	ldr     r0, [sp, #0x8]
	add     r0, #0xb
	str     r0, [sp, #0x8]
.thumb
branch_2261700: @ 2261700 :thumb
	mov     r4, #0x7
.thumb
branch_2261702: @ 2261702 :thumb
	ldr     r0, [sp, #0x14]
	ldr     r1, [sp, #0x8]
	lsl     r5, r0, #2
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, r5]
	bl      Function_2021d6c
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	add     r0, r0, r5
	str     r1, [r0, #0xc]
	ldr     r0, [sp, #0x0]
	mov     r1, #0x1
	ldr     r0, [r0, r5]
	bl      Function_2021cac
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x14]
	bl      Function_226177c
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [r0, r5]
	bl      Function_2021f58
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	ldr     r0, [r0, r5]
	bl      Function_2021e90
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2261742


.align 2, 0


.thumb
Function_2261744: @ 2261744 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_226174c: @ 226174c :thumb
	ldr     r0, [r5, #0x0]
	bl      Function_2021d34
	cmp     r0, #0x1
	bne     branch_2261772
	ldr     r0, [r5, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0xc]
	cmp     r0, #0x10
	bls     branch_226176a
	mov     r0, r6
	mov     r1, r4
	bl      Function_22617d8
	b       branch_2261772
@ 0x226176a

.thumb
branch_226176a: @ 226176a :thumb
	mov     r0, r6
	mov     r1, r4
	bl      Function_226177c
.thumb
branch_2261772: @ 2261772 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x3
	blt     branch_226174c
	pop     {r4-r6,pc}
@ 0x226177c

.thumb
Function_226177c: @ 226177c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r6, r1
	mov     r5, r0
	lsl     r4, r6, #2
	add     r0, r5, r4
	ldr     r0, [r0, #0xc]
	ldr     r2, [pc, #0x48] @ 0x22617d4, (=0xffff0000)
	lsl     r0, r0, #12
	asr     r1, r0, #31
	asr     r3, r2, #16
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r0, r0, r2
	adc     r1, r3
	lsl     r1, r1, #20
	lsr     r0, r0, #12
	orr     r0, r1
	lsl     r1, r2, #5
	blx     FX_Div
	mov     r2, r0
	mov     r0, #0xc
	mul     r0, r6
	add     r6, r5, r0
	add     r6, #0x18
	add     r3, sp, #0x0
	ldmia   r6!, {r0,r1}
	mov     r7, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, r7
	str     r0, [r3, #0x0]
	ldr     r0, [sp, #0x4]
	add     r0, r0, r2
	str     r0, [sp, #0x4]
	ldr     r0, [r5, r4]
	bl      Function_2021c50
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22617d4

.word 0xffff0000 @ 0x22617d4
.thumb
Function_22617d8: @ 22617d8 :thumb
	ldr     r3, [pc, #0x8] @ 0x22617e4, (=0x2021cad)
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	mov     r1, #0x0
	bx      r3
@ 0x22617e2


.align 2


.word 0x2021cad @ 0x22617e4
.thumb
Function_22617e8: @ 22617e8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x40
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x58]
	mov     r5, r2
	str     r1, [sp, #0x18]
	str     r0, [sp, #0x58]
	ldr     r4, [sp, #0x60]
	ldr     r2, [sp, #0x14]
	str     r3, [sp, #0x1c]
	mov     r1, #0x1c
	mov     r0, #0x0
.thumb
branch_2261800: @ 2261800 :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_2261800
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0x1c
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0x5
	str     r0, [sp, #0xc]
	mov     r0, #0xa
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x14]
	ldr     r0, [r0, #0x0]
	add     r1, #0xc
	mov     r2, #0x1
	mov     r3, #0x2
	bl      Function_201a7e8
	mov     r0, #0xe0
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x14]
	mov     r2, #0x0
	add     r0, #0xc
	mov     r1, #0xf
	mov     r3, r2
	bl      Function_201ae78
	mov     r0, #0x80
	mov     r1, r4
	bl      Function_2023790
	mov     r6, r0
	ldr     r0, [sp, #0x18]
	mov     r1, #0x0
	ldr     r0, [r0, #0x8]
	mov     r2, r6
	bl      Function_200b1b8
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18c] @ 0x22619f0, (=0x1020f)
	mov     r2, r6
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x14]
	mov     r3, r1
	add     r0, #0xc
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	mov     r0, r6
	bl      Function_20237bc
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r2, [sp, #0x18]
	str     r4, [sp, #0xc]
	ldr     r0, [sp, #0x5c]
	ldr     r2, [r2, #0x0]
	mov     r1, #0x12
	mov     r3, #0x2
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r1, [sp, #0x1c]
	ldr     r2, [sp, #0x18]
	str     r4, [sp, #0xc]
	ldr     r0, [sp, #0x5c]
	ldr     r2, [r2, #0x0]
	add     r1, #0x12
	mov     r3, #0x2
	bl      Function_200710c
	mov     r0, #0x80
	str     r0, [sp, #0x0]
	mov     r2, #0x0
	ldr     r0, [sp, #0x5c]
	mov     r1, #0x13
	mov     r3, r2
	str     r4, [sp, #0x4]
	bl      Function_2007130
	add     r0, sp, #0x30
	bl      Function_201a7a0
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x4]
	mov     r2, #0x2
	str     r2, [sp, #0x8]
	mov     r0, #0x5
	str     r0, [sp, #0xc]
	add     r0, #0xfb
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x18]
	add     r1, sp, #0x30
	ldr     r0, [r0, #0x0]
	bl      Function_201a7e8
	mov     r0, #0x1
	lsl     r0, r0, #8
	str     r0, [sp, #0x28]
	mov     r0, #0x80
	mov     r1, r4
	bl      Function_2023790
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x1c]
	mov     r4, #0x0
	cmp     r0, #0x0
	bls     branch_22619ca
	ldr     r0, [sp, #0x58]
	ldr     r1, [pc, #0xf8] @ 0x22619f4, (=0x2265ca4)
	lsl     r0, r0, #7
	add     r1, r1, r0
	ldr     r0, [sp, #0x1c]
	lsl     r0, r0, #5
	add     r6, r1, r0
.thumb
branch_2261906: @ 2261906 :thumb
	ldr     r0, [sp, #0x58]
	cmp     r4, r0
	beq     branch_22619be
	mov     r0, r6
	sub     r0, #0x20
	ldr     r0, [r0, #0x0]
	mov     r1, #0x2
	str     r0, [sp, #0x2c]
	mov     r0, r6
	sub     r0, #0x1c
	ldr     r7, [r0, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	ldr     r2, [sp, #0x2c]
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x18]
	.hword  0x1e52 @ sub r2, r2, #0x1
	.hword  0x1e7b @ sub r3, r7, #0x1
	lsl     r2, r2, #24
	lsl     r3, r3, #24
	ldr     r0, [r0, #0x0]
	lsr     r2, r2, #24
	lsr     r3, r3, #24
	bl      Function_2019e2c
	add     r0, sp, #0x30
	mov     r1, #0xf
	bl      Function_201ada4
	ldr     r0, [r5, #0x18]
	cmp     r0, #0x1
	bne     branch_2261954
	ldr     r0, [pc, #0xa8] @ 0x22619f8, (=0x5060f)
	str     r0, [sp, #0x20]
	b       branch_2261958
@ 0x2261954

.thumb
branch_2261954: @ 2261954 :thumb
	ldr     r0, [pc, #0x98] @ 0x22619f0, (=0x1020f)
	str     r0, [sp, #0x20]
.thumb
branch_2261958: @ 2261958 :thumb
	ldr     r0, [r5, #0x8]
	ldr     r1, [sp, #0x24]
	bl      Function_2025ef4
	ldr     r1, [sp, #0x2c]
	add     r0, sp, #0x30
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_201c2ac
	lsl     r1, r7, #24
	add     r0, sp, #0x30
	lsr     r1, r1, #24
	bl      Function_201c2b0
	add     r0, sp, #0x30
	ldrh    r1, [r0, #0xa]
	ldr     r0, [pc, #0x80] @ 0x22619fc, (=0xffff8000)
	and     r0, r1
	ldr     r1, [sp, #0x28]
	lsl     r1, r1, #16
	lsr     r2, r1, #16
	ldr     r1, [pc, #0x78] @ 0x2261a00, (=0x7fff)
	and     r1, r2
	orr     r1, r0
	add     r0, sp, #0x30
	strh    r1, [r0, #0xa]
	mov     r0, #0x0
	ldr     r1, [sp, #0x24]
	mov     r2, r0
	bl      Function_2002d7c
	mov     r7, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x20]
	mov     r3, #0x40
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	sub     r3, r3, r7
	str     r0, [sp, #0xc]
	ldr     r2, [sp, #0x24]
	add     r0, sp, #0x30
	mov     r1, #0x0
	lsr     r3, r3, #1
	bl      Function_201d78c
	ldr     r0, [sp, #0x28]
	add     r0, #0x10
	str     r0, [sp, #0x28]
.thumb
branch_22619be: @ 22619be :thumb
	ldr     r0, [sp, #0x1c]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r6, #0x8
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, r0
	bcc     branch_2261906
.thumb
branch_22619ca: @ 22619ca :thumb
	ldr     r0, [sp, #0x24]
	bl      Function_20237bc
	add     r0, sp, #0x30
	bl      Function_201a8fc
	ldr     r0, [sp, #0x14]
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	mov     r0, #0x2
	bl      Function_201ff0c
	mov     r0, #0x4
	mov     r1, #0x0
	bl      Function_201ff0c
	add     sp, #0x40
	pop     {r3-r7,pc}
@ 0x22619ee


.align 2


.word 0x1020f @ 0x22619f0
.word 0x2265ca4 @ 0x22619f4
.word 0x5060f @ 0x22619f8
.word 0xffff8000 @ 0x22619fc
.word 0x7fff @ 0x2261a00
.thumb
Function_2261a04: @ 2261a04 :thumb
	ldr     r3, [pc, #0x4] @ 0x2261a0c, (=0x201a8fd)
	add     r0, #0xc
	bx      r3
@ 0x2261a0a


.align 2


.word 0x201a8fd @ 0x2261a0c
.thumb
Function_2261a10: @ 2261a10 :thumb
	push    {r4,lr}
	mov     r4, r1
	add     r0, #0xc
	mov     r1, #0x0
	mov     r2, #0x1
	mov     r3, #0x4
	bl      Function_200dc48
	mov     r0, #0x2
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x4
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x6f
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      0x225cb8c
	pop     {r4,pc}
@ 0x2261a3c

.thumb
Function_2261a3c: @ 2261a3c :thumb
	push    {r3,lr}
	mov     r0, #0x6f
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	bl      0x225cbe0
	cmp     r0, #0x1
	beq     branch_2261a50
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2261a50

.thumb
branch_2261a50: @ 2261a50 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2261a54

.thumb
Function_2261a54: @ 2261a54 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0xc
	mov     r1, #0x1
	bl      Function_200dc9c
	add     r4, #0xc
	mov     r0, r4
	bl      Function_201ad10
	mov     r0, #0x4
	mov     r1, #0x0
	bl      Function_201ff0c
	pop     {r4,pc}
@ 0x2261a72


.align 2, 0


.thumb
Function_2261a74: @ 2261a74 :thumb
	push    {r4,lr}
	mov     r0, #0x13
	mov     r4, r1
	lsl     r0, r0, #6
	add     r0, r4, r0
	mov     r1, #0x1
	bl      Function_2264190
	ldr     r0, [pc, #0x18] @ 0x2261aa0, (=0x66c)
	mov     r1, #0x2d
	add     r0, r4, r0
	lsl     r1, r1, #14
	bl      Function_2017240
	mov     r0, #0x13
	lsl     r0, r0, #6
	add     r0, r4, r0
	mov     r1, #0x1
	bl      Function_226422c
	pop     {r4,pc}
@ 0x2261a9e


.align 2


.word 0x66c @ 0x2261aa0
.thumb
Function_2261aa4: @ 2261aa4 :thumb
	ldr     r1, [r0, #0x4]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x4]
	cmp     r1, #0x8
	bge     branch_2261ab2
	mov     r0, #0x1
	bx      lr
@ 0x2261ab2

.thumb
branch_2261ab2: @ 2261ab2 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2261ab6


.align 2, 0


.thumb
Function_2261ab8: @ 2261ab8 :thumb
	mov     r2, #0x13
	lsl     r2, r2, #6
	ldr     r3, [pc, #0x4] @ 0x2261ac4, (=0x22640c1)
	add     r0, r0, r2
	bx      r3
@ 0x2261ac2


.align 2


.word 0x22640c1 @ 0x2261ac4
.thumb
Function_2261ac8: @ 2261ac8 :thumb
	mov     r1, #0x4a
	mov     r2, #0x0
	lsl     r1, r1, #4
	str     r2, [r0, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r2, [r0, r1]
	bx      lr
@ 0x2261ad6


.align 2, 0


.thumb
Function_2261ad8: @ 2261ad8 :thumb
	bx      lr
@ 0x2261ada


.align 2, 0


.thumb
Function_2261adc: @ 2261adc :thumb
	mov     r1, #0x13
	lsl     r1, r1, #6
	add     r0, r0, r1
	ldr     r3, [pc, #0x4] @ 0x2261ae8, (=0x2264191)
	mov     r1, #0x5
	bx      r3
@ 0x2261ae8

.word Function_2264190+1 @ =0x2264191, 0x2261ae8
.thumb
Function_2261aec: @ 2261aec :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x24] @ 0x2261b14, (=0x4a4)
	ldr     r2, [r0, r1]
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r2, [r0, r1]
	ldr     r1, [r0, r1]
	cmp     r1, #0x3c
	bcc     branch_2261b10
	ldr     r1, [pc, #0x18] @ 0x2261b18, (=0x6bc)
	add     r0, r0, r1
	mov     r1, #0x2
	lsl     r1, r1, #12
	bl      Function_2017204
	cmp     r0, #0x1
	bne     branch_2261b10
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2261b10

.thumb
branch_2261b10: @ 2261b10 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2261b14

.word 0x4a4 @ 0x2261b14
.word 0x6bc @ 0x2261b18
.thumb
Function_2261b1c: @ 2261b1c :thumb
	push    {r3,lr}
	mov     r1, #0x6f
	lsl     r1, r1, #4
	ldr     r0, [r0, r1]
	bl      0x225cbe0
	cmp     r0, #0x1
	bne     branch_2261b30
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2261b30

.thumb
branch_2261b30: @ 2261b30 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2261b34

.thumb
Function_2261b34: @ 2261b34 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r0, #0x0
	strh    r0, [r4, #0x6]
	ldr     r1, [pc, #0x6c] @ 0x2261bac, (=0x7fff)
	mov     r0, r4
	bl      Function_2261c48
	ldr     r1, [pc, #0x68] @ 0x2261bb0, (=0xe38)
	mov     r0, r4
	bl      Function_2261c1c
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	mov     r0, #0x1
	strb    r0, [r4, #0x1]
	mov     r1, #0x32
	mov     r0, r4
	add     r2, sp, #0x0
	lsl     r1, r1, #14
	add     r0, #0x94
	str     r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0x7b
	add     r0, #0x98
	str     r1, [r0, #0x0]
	mov     r0, #0x5
	lsl     r0, r0, #16
	ldr     r5, [pc, #0x44] @ 0x2261bb4, (=0x2265b20)
	str     r0, [r4, #0x8]
	ldmia   r5!, {r0,r1}
	mov     r3, r2
	stmia   r2!, {r0,r1}
	ldr     r0, [r5, #0x0]
	str     r0, [r2, #0x0]
	mov     r2, r4
	ldmia   r3!, {r0,r1}
	add     r2, #0x9c
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	ldr     r1, [pc, #0x30] @ 0x2261bb8, (=0x9c4)
	str     r0, [r2, #0x0]
	mov     r0, r4
	bl      Function_2261f94
	add     r3, sp, #0x0
	mov     r2, r4
	ldmia   r3!, {r0,r1}
	add     r2, #0xd8
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	mov     r0, r4
	add     r0, #0xc0
	ldr     r0, [r0, #0x0]
	add     r4, #0xe4
	str     r0, [r4, #0x0]
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2261bac

.word 0x7fff @ 0x2261bac
.word 0xe38 @ 0x2261bb0
.word Unknown_2265b20 @ 0x2261bb4
.word 0x9c4 @ 0x2261bb8



.thumb
Function_2261bbc: @ 2261bbc :thumb
	push    {r3-r5,lr}
	mov     r3, r0
	ldr     r0, [r3, #0x0]
	mov     r4, r1
	cmp     r0, #0x1
	bne     branch_2261bcc
	mov     r0, #0x0
	b       branch_2261bce
@ 0x2261bcc

.thumb
branch_2261bcc: @ 2261bcc :thumb
	mov     r0, #0x1
.thumb
branch_2261bce: @ 2261bce :thumb
	strb    r0, [r4, #0x1]
	ldr     r1, [r3, #0x8]
	ldr     r2, [r3, #0xc]
	ldr     r3, [r3, #0x0]
	mov     r0, r4
	lsl     r5, r3, #2
	ldr     r3, [pc, #0x38] @ 0x2261c14, (=0x2265b50)
	ldr     r3, [r3, r5]
	blx     r3
	mov     r1, r0
	mov     r0, r4
	bl      Function_2261c1c
	ldrh    r1, [r4, #0x4]
	mov     r0, r4
	bl      Function_2261f3c
	str     r0, [r4, #0x8]
	ldrh    r1, [r4, #0x4]
	mov     r0, r4
	bl      Function_2261f68
	mov     r1, r4
	add     r1, #0xe4
	str     r0, [r1, #0x0]
	ldrh    r2, [r4, #0x2]
	ldrh    r1, [r4, #0x6]
	mov     r0, r4
	add     r1, r2, r1
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	bl      Function_2261c48
	pop     {r3-r5,pc}
@ 0x2261c12

.align 2
.word Unknown_2265b50 @ 0x2261c14



.thumb
Function_2261c18: @ 2261c18 :thumb
	strb    r1, [r0, #0x0]
	bx      lr
@ 0x2261c1c


.thumb
Function_2261c1c: @ 2261c1c :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r5, r1
	add     r0, #0xc
	strh    r5, [r4, #0x4]
	blx     MTX_Identity33_
	asr     r0, r5, #4
	lsl     r2, r0, #1
	lsl     r1, r2, #1
	ldr     r3, [pc, #0x10] @ 0x2261c44, (=0x20f983c)
	.hword  0x1c52 @ add r2, r2, #0x1
	lsl     r2, r2, #1
	add     r4, #0xc
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	mov     r0, r4
	bl      MTX_RotX33_
	pop     {r3-r5,pc}
@ 0x2261c44

.word 0x20f983c @ 0x2261c44
.thumb
Function_2261c48: @ 2261c48 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r4, r1
	add     r0, #0x54
	strh    r4, [r5, #0x2]
	blx     MTX_Identity33_
	mov     r0, r5
	add     r0, #0x30
	blx     MTX_Identity33_
	asr     r0, r4, #4
	lsl     r2, r0, #1
	lsl     r1, r2, #1
	ldr     r3, [pc, #0x114] @ 0x2261d7c, (=0x20f983c)
	.hword  0x1c52 @ add r2, r2, #0x1
	lsl     r2, r2, #1
	mov     r0, r5
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	add     r0, #0x30
	bl      MTX_RotY33_
	mov     r0, r5
	mov     r1, r5
	mov     r2, r5
	add     r0, #0xc
	add     r1, #0x30
	add     r2, #0x54
	blx     MTX_Concat33
	mov     r1, r5
	mov     r2, r5
	ldr     r0, [pc, #0xf0] @ 0x2261d80, (=0x2265b44)
	add     r1, #0x54
	add     r2, #0x78
	blx     MTX_MultVec33
	mov     r0, #0x0
	mov     r1, r5
	mov     r2, r5
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x8]
	add     r1, #0x54
	neg     r0, r0
	str     r0, [sp, #0x10]
	add     r0, sp, #0x8
	add     r2, #0x84
	blx     MTX_MultVec33
	mov     r0, r5
	add     r0, #0xb8
	ldr     r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	add     r0, r1, r0
	str     r0, [sp, #0x8]
	mov     r0, r5
	add     r0, #0xbc
	ldr     r0, [r0, #0x0]
	str     r0, [sp, #0xc]
	mov     r0, r5
	add     r0, #0xa4
	ldr     r1, [r0, #0x0]
	mov     r0, #0x5
	lsl     r0, r0, #16
	add     r0, r1, r0
	str     r0, [sp, #0x10]
	add     r0, sp, #0x8
	mov     r1, r5
	add     r1, #0x30
	mov     r2, r0
	blx     MTX_MultVec33
	mov     r1, r5
	add     r1, #0x84
	add     r0, sp, #0x8
	mov     r2, r1
	blx     VEC_Add
	mov     r0, r5
	mov     r2, r5
	add     r0, #0x80
	add     r2, #0x8c
	ldr     r0, [r0, #0x0]
	ldr     r2, [r2, #0x0]
	asr     r1, r0, #31
	asr     r3, r2, #31
	blx     _ll_mul
	mov     r2, r5
	add     r2, #0x84
	str     r0, [sp, #0x4]
	ldr     r2, [r2, #0x0]
	ldr     r0, [r5, #0x78]
	mov     r6, r1
	asr     r1, r0, #31
	asr     r3, r2, #31
	blx     _ll_mul
	str     r0, [sp, #0x0]
	mov     r4, r1
	mov     r2, r5
	add     r2, #0x88
	ldr     r0, [r5, #0x7c]
	ldr     r2, [r2, #0x0]
	asr     r1, r0, #31
	asr     r3, r2, #31
	blx     _ll_mul
	mov     r2, r1
	mov     r3, #0x2
	mov     r7, r0
	ldr     r1, [sp, #0x4]
	mov     r0, #0x0
	lsl     r3, r3, #10
	add     r1, r1, r3
	adc     r6, r0
	lsl     r3, r6, #20
	lsr     r1, r1, #12
	orr     r1, r3
	mov     r3, #0x2
	ldr     r6, [sp, #0x0]
	lsl     r3, r3, #10
	add     r3, r6, r3
	adc     r4, r0
	lsl     r4, r4, #20
	lsr     r3, r3, #12
	orr     r3, r4
	mov     r4, #0x2
	lsl     r4, r4, #10
	add     r4, r7, r4
	adc     r2, r0
	lsl     r0, r2, #20
	lsr     r2, r4, #12
	orr     r2, r0
	add     r0, r3, r2
	add     r1, r1, r0
	mov     r0, r5
	add     r0, #0x90
	str     r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, r5
	add     r5, #0xd8
	add     r0, #0x9c
	add     r1, #0x30
	mov     r2, r5
	blx     MTX_MultVec33
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2261d7c

.word 0x20f983c @ 0x2261d7c
.word Unknown_2265b44 @ 0x2261d80



.thumb
Function_2261d84: @ 2261d84 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	mov     r4, r0
	ldrb    r0, [r4, #0x0]
	mov     r6, r1
	mov     r7, r3
	mov     r5, #0x0
	cmp     r0, #0x0
	bne     branch_2261d9c
	add     sp, #0x34
	mov     r0, r5
	pop     {r4-r7,pc}
@ 0x2261d9c

.thumb
branch_2261d9c: @ 2261d9c :thumb
	add     r0, sp, #0x28
	str     r0, [sp, #0x0]
	add     r0, sp, #0xc
	mov     r3, r4
	str     r0, [sp, #0x4]
	add     r3, #0x90
	mov     r1, r2
	mov     r2, r4
	ldr     r3, [r3, #0x0]
	mov     r0, r6
	add     r2, #0x78
	bl      Function_2265100
	mov     r0, r4
	add     r0, #0x84
	mov     r1, r6
	add     r2, sp, #0x1c
	blx     VEC_Subtract
	add     r0, sp, #0x1c
	blx     VEC_Mag
	mov     r6, r0
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x0
	blt     branch_2261df2
	mov     r1, #0x1
	lsl     r1, r1, #12
	cmp     r0, r1
	bgt     branch_2261df2
	ldr     r1, [r4, #0x8]
	cmp     r6, r1
	bgt     branch_2261dec
	ldrb    r1, [r4, #0x1]
	cmp     r1, #0x1
	bne     branch_2261de8
	mov     r5, #0x1
	b       branch_2261df2
@ 0x2261de8

.thumb
branch_2261de8: @ 2261de8 :thumb
	mov     r5, #0x2
	b       branch_2261df2
@ 0x2261dec

.thumb
branch_2261dec: @ 2261dec :thumb
	add     sp, #0x34
	mov     r0, #0x2
	pop     {r4-r7,pc}
@ 0x2261df2

.thumb
branch_2261df2: @ 2261df2 :thumb
	cmp     r0, #0x0
	ble     branch_2261ea2
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	cmp     r6, r0
	bge     branch_2261ea2
	mov     r2, r4
	add     r2, #0x98
	ldr     r2, [r2, #0x0]
	sub     r0, r0, r6
	asr     r1, r0, #31
	asr     r3, r2, #31
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r5, r2, #12
	orr     r5, r0
	add     r0, sp, #0x1c
	add     r1, sp, #0x10
	blx     VEC_Normalize
	asr     r0, r5, #31
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x10]
	ldr     r3, [sp, #0x8]
	asr     r1, r0, #31
	mov     r2, r5
	blx     _ll_mul
	mov     r2, r0
	mov     r0, #0x2
	mov     r3, #0x0
	lsl     r0, r0, #10
	add     r0, r2, r0
	adc     r1, r3
	lsl     r1, r1, #20
	lsr     r0, r0, #12
	orr     r0, r1
	str     r0, [r7, #0x0]
	ldr     r0, [sp, #0x14]
	ldr     r3, [sp, #0x8]
	asr     r1, r0, #31
	mov     r2, r5
	blx     _ll_mul
	mov     r2, r0
	mov     r0, #0x2
	mov     r3, #0x0
	lsl     r0, r0, #10
	add     r0, r2, r0
	adc     r1, r3
	lsl     r1, r1, #20
	lsr     r0, r0, #12
	orr     r0, r1
	str     r0, [r7, #0x4]
	ldr     r0, [sp, #0x18]
	ldr     r3, [sp, #0x8]
	asr     r1, r0, #31
	mov     r2, r5
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	str     r1, [r7, #0x8]
	ldr     r0, [r4, #0x8]
	sub     r1, r6, r5
	cmp     r1, r0
	bgt     branch_2261ea0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x1
	bne     branch_2261e9c
	mov     r5, #0x1
	b       branch_2261ea2
@ 0x2261e9c

.thumb
branch_2261e9c: @ 2261e9c :thumb
	mov     r5, #0x2
	b       branch_2261ea2
@ 0x2261ea0

.thumb
branch_2261ea0: @ 2261ea0 :thumb
	mov     r5, #0x3
.thumb
branch_2261ea2: @ 2261ea2 :thumb
	mov     r0, r5
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x2261ea8

.thumb
Function_2261ea8: @ 2261ea8 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x24
	mov     r5, r0
	ldrb    r0, [r5, #0x0]
	mov     r4, r1
	cmp     r0, #0x0
	bne     branch_2261ebc
	add     sp, #0x24
	mov     r0, #0x0
	pop     {r3-r6,pc}
@ 0x2261ebc

.thumb
branch_2261ebc: @ 2261ebc :thumb
	mov     r1, r5
	add     r1, #0xdc
	ldr     r0, [r4, #0x4]
	ldr     r2, [r1, #0x0]
	cmp     r2, r0
	bge     branch_2261f34
	mov     r1, r5
	add     r1, #0xe4
	ldr     r1, [r1, #0x0]
	add     r1, r2, r1
	cmp     r1, r0
	ble     branch_2261f34
	mov     r0, r5
	add     r0, #0xd8
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	str     r0, [sp, #0xc]
	mov     r0, r5
	add     r0, #0xe0
	ldr     r0, [r0, #0x0]
	add     r2, sp, #0x18
	str     r1, [sp, #0x10]
	str     r0, [sp, #0x14]
	ldr     r0, [r4, #0x0]
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x8]
	str     r0, [sp, #0x8]
	str     r1, [sp, #0x4]
	add     r0, sp, #0xc
	add     r1, sp, #0x0
	blx     VEC_Subtract
	add     r0, sp, #0x18
	blx     VEC_Mag
	mov     r6, r0
	mov     r0, r5
	add     r0, #0xdc
	ldr     r1, [r4, #0x4]
	ldr     r0, [r0, #0x0]
	sub     r0, r1, r0
	asr     r1, r0, #12
	mov     r0, r5
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	mul     r0, r1
	mov     r1, r5
	add     r1, #0xe4
	ldr     r1, [r1, #0x0]
	asr     r1, r1, #12
	blx     _s32_div_f
	add     r5, #0xcc
	ldr     r1, [r5, #0x0]
	sub     r0, r1, r0
	cmp     r6, r0
	bge     branch_2261f34
	add     sp, #0x24
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x2261f34

.thumb
branch_2261f34: @ 2261f34 :thumb
	mov     r0, #0x0
	add     sp, #0x24
	pop     {r3-r6,pc}
@ 0x2261f3a


.align 2, 0


.thumb
Function_2261f3c: @ 2261f3c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x5a
	lsl     r0, r0, #2
	mul     r0, r1
	ldr     r1, [pc, #0x1c] @ 0x2261f64, (=0xffff)
	blx     _s32_div_f
	mov     r1, #0x5a
	sub     r2, r1, r0
	mov     r0, r4
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	mul     r0, r2
	blx     _s32_div_f
	add     r4, #0xb0
	ldr     r1, [r4, #0x0]
	add     r0, r0, r1
	pop     {r4,pc}
@ 0x2261f64

.word 0xffff @ 0x2261f64
.thumb
Function_2261f68: @ 2261f68 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x5a
	lsl     r0, r0, #2
	mul     r0, r1
	ldr     r1, [pc, #0x1c] @ 0x2261f90, (=0xffff)
	blx     _s32_div_f
	mov     r1, r4
	add     r1, #0xc4
	ldr     r1, [r1, #0x0]
	mul     r1, r0
	mov     r0, r1
	mov     r1, #0x5a
	blx     _s32_div_f
	add     r4, #0xc0
	ldr     r1, [r4, #0x0]
	add     r0, r0, r1
	pop     {r4,pc}
@ 0x2261f90

.word 0xffff @ 0x2261f90
.thumb
Function_2261f94: @ 2261f94 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	add     r0, #0xa8
	mov     r2, #0x1e
	mov     r4, r1
	str     r1, [r0, #0x0]
	asr     r6, r1, #31
	mov     r0, r4
	mov     r1, r6
	lsl     r2, r2, #12
	mov     r3, #0x0
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	mov     r0, r5
	add     r0, #0xac
	str     r1, [r0, #0x0]
	mov     r2, #0x32
	mov     r0, r4
	mov     r1, r6
	lsl     r2, r2, #12
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	mov     r0, r5
	add     r0, #0xb0
	str     r1, [r0, #0x0]
	mov     r2, #0x5
	mov     r0, r4
	mov     r1, r6
	lsl     r2, r2, #16
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r7, r2, #12
	orr     r7, r0
	mov     r0, r5
	add     r0, #0xb4
	str     r7, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xb8
	mov     r2, #0x37
	str     r3, [r0, #0x0]
	mov     r0, r4
	mov     r1, r6
	lsl     r2, r2, #12
	blx     _ll_mul
	mov     r2, r0
	mov     r0, #0x2
	mov     r3, #0x0
	lsl     r0, r0, #10
	add     r0, r2, r0
	adc     r1, r3
	mov     r2, #0x96
	lsl     r1, r1, #20
	lsr     r0, r0, #12
	orr     r0, r1
	mov     r1, r5
	add     r1, #0xbc
	str     r0, [r1, #0x0]
	mov     r0, r4
	mov     r1, r6
	lsl     r2, r2, #12
	blx     _ll_mul
	mov     r2, r0
	mov     r0, #0x2
	mov     r3, #0x0
	lsl     r0, r0, #10
	add     r0, r2, r0
	adc     r1, r3
	mov     r2, #0xf
	lsl     r1, r1, #20
	lsr     r0, r0, #12
	orr     r0, r1
	mov     r1, r5
	add     r1, #0xc0
	str     r0, [r1, #0x0]
	mov     r0, r4
	mov     r1, r6
	lsl     r2, r2, #14
	blx     _ll_mul
	mov     r2, r0
	mov     r0, #0x2
	mov     r3, #0x0
	lsl     r0, r0, #10
	add     r0, r2, r0
	adc     r1, r3
	mov     r2, #0x1e
	lsl     r1, r1, #20
	lsr     r0, r0, #12
	orr     r0, r1
	mov     r1, r5
	add     r1, #0xc4
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0xc8
	str     r7, [r0, #0x0]
	mov     r0, r4
	mov     r1, r6
	lsl     r2, r2, #14
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	mov     r0, r5
	add     r0, #0xcc
	str     r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xcc
	ldr     r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xc8
	ldr     r0, [r0, #0x0]
	mov     r2, #0x6
	sub     r1, r1, r0
	mov     r0, r5
	add     r0, #0xd0
	str     r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, r6
	lsl     r2, r2, #10
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	add     r5, #0xd4
	str     r1, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x22620d8

.thumb
Function_22620d8: @ 22620d8 :thumb
	strh    r1, [r0, #0x6]
	bx      lr
@ 0x22620dc

.thumb
Function_22620dc: @ 22620dc :thumb
	add     r0, #0xa4
	str     r1, [r0, #0x0]
	bx      lr
@ 0x22620e2


.align 2, 0


.thumb
Function_22620e4: @ 22620e4 :thumb
	ldr     r0, [pc, #0x0] @ 0x22620e8, (=0xe38)
	bx      lr
@ 0x22620e8

.word 0xe38 @ 0x22620e8
.thumb
Function_22620ec: @ 22620ec :thumb
	ldr     r0, [pc, #0x0] @ 0x22620f0, (=0x3fff)
	bx      lr
@ 0x22620f0

.word 0x3fff @ 0x22620f0
.thumb
Function_22620f4: @ 22620f4 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x2c] @ 0x2262124, (=0x2ee)
	sub     r0, r1, r0
	mov     r1, #0x32
	blx     _u32_div_f
	ldr     r0, [pc, #0x24] @ 0x2262128, (=0x638e)
	mul     r0, r1
	mov     r1, #0x32
	blx     _s32_div_f
	ldr     r1, [pc, #0x20] @ 0x226212c, (=0x31c7)
	cmp     r0, r1
	ble     branch_2262118
	blx     _s32_div_f
	ldr     r0, [pc, #0x14] @ 0x226212c, (=0x31c7)
	sub     r0, r0, r1
.thumb
branch_2262118: @ 2262118 :thumb
	ldr     r1, [pc, #0x14] @ 0x2262130, (=0xe38)
	add     r0, r0, r1
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	pop     {r3,pc}
@ 0x2262122


.align 2


.word 0x2ee @ 0x2262124
.word 0x638e @ 0x2262128
.word 0x31c7 @ 0x226212c
.word 0xe38 @ 0x2262130
.thumb
Function_2262134: @ 2262134 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldrh    r0, [r5, #0x0]
	mov     r4, r1
	ldr     r2, [pc, #0x48] @ 0x2262188, (=0x28f)
	strh    r0, [r4, #0x0]
	ldrh    r0, [r5, #0x2]
	mov     r3, #0x0
	strh    r0, [r4, #0x2]
	ldr     r0, [r5, #0x4]
	strh    r0, [r4, #0x4]
	ldr     r0, [r5, #0x8]
	strh    r0, [r4, #0x6]
	ldr     r0, [r5, #0xc]
	strh    r0, [r4, #0x8]
	ldr     r0, [r5, #0x10]
	asr     r1, r0, #31
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	strh    r1, [r4, #0x10]
	ldr     r0, [r5, #0x14]
	asr     r0, r0, #12
	strh    r0, [r4, #0xa]
	ldr     r0, [r5, #0x18]
	asr     r0, r0, #12
	strh    r0, [r4, #0xc]
	ldr     r0, [r5, #0x1c]
	asr     r0, r0, #12
	strh    r0, [r4, #0xe]
	ldr     r0, [r5, #0x20]
	strb    r0, [r4, #0x12]
	ldr     r0, [r5, #0x24]
	strb    r0, [r4, #0x13]
	pop     {r3-r5,pc}
@ 0x2262188

.word 0x28f @ 0x2262188
.thumb
Function_226218c: @ 226218c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldrh    r0, [r5, #0x0]
	mov     r4, r1
	ldr     r1, [pc, #0x40] @ 0x22621d8, (=0x28f)
	strh    r0, [r4, #0x0]
	ldrh    r0, [r5, #0x2]
	strh    r0, [r4, #0x2]
	mov     r0, #0x4
	ldsh    r0, [r5, r0]
	str     r0, [r4, #0x4]
	mov     r0, #0x6
	ldsh    r0, [r5, r0]
	str     r0, [r4, #0x8]
	mov     r0, #0x8
	ldsh    r0, [r5, r0]
	str     r0, [r4, #0xc]
	mov     r0, #0x10
	ldsh    r0, [r5, r0]
	blx     FX_Div
	str     r0, [r4, #0x10]
	mov     r0, #0xa
	ldsh    r0, [r5, r0]
	lsl     r0, r0, #12
	str     r0, [r4, #0x14]
	mov     r0, #0xc
	ldsh    r0, [r5, r0]
	lsl     r0, r0, #12
	str     r0, [r4, #0x18]
	mov     r0, #0xe
	ldsh    r0, [r5, r0]
	lsl     r0, r0, #12
	str     r0, [r4, #0x1c]
	ldrb    r0, [r5, #0x13]
	str     r0, [r4, #0x24]
	pop     {r3-r5,pc}
@ 0x22621d6


.align 2


.word 0x28f @ 0x22621d8
.thumb
Function_22621dc: @ 22621dc :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r6, r1
	str     r2, [sp, #0x0]
	mov     r1, #0x0
	mov     r2, r4
.thumb
branch_22621ea: @ 22621ea :thumb
	mov     r0, r2
	add     r0, #0x4c
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2262244
	mov     r0, #0x44
	mov     r5, r1
	mul     r5, r0
	add     r3, r4, r5
	mov     r7, r6
	add     r3, #0x50
	mov     r2, #0x5
.thumb
branch_2262202: @ 2262202 :thumb
	ldmia   r7!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2262202
	add     r1, r4, r5
	ldr     r0, [sp, #0x0]
	add     r1, #0x4c
	add     r2, r4, r5
	add     r6, #0x14
	strb    r0, [r1, #0x0]
	ldmia   r6!, {r0,r1}
	add     r2, #0x78
	stmia   r2!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, #0x0
	str     r0, [r2, #0x0]
	add     r0, r4, r5
	add     r0, #0x4e
	strh    r1, [r0, #0x0]
	add     r0, r4, r5
	add     r0, #0x88
	str     r1, [r0, #0x0]
	ldr     r0, [pc, #0xb8] @ 0x22622e8, (=0x1ab4)
	mov     r1, r4
	add     r1, #0x4c
	ldr     r2, [r4, #0x10]
	ldr     r3, [r4, #0x14]
	add     r0, r4, r0
	add     r1, r1, r5
	bl      Function_2264620
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2262244

.thumb
branch_2262244: @ 2262244 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r2, #0x44
	cmp     r1, #0x60
	blt     branch_22621ea
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x1
	bne     branch_22622e2
	mov     r0, #0x0
	mov     r2, r4
.thumb
branch_2262256: @ 2262256 :thumb
	mov     r1, r2
	add     r1, #0x4c
	ldrb    r1, [r1, #0x0]
	cmp     r1, #0x2
	beq     branch_2262264
	cmp     r1, #0x5
	bne     branch_22622d6
.thumb
branch_2262264: @ 2262264 :thumb
	mov     r5, r0
	mov     r0, r4
	str     r0, [sp, #0x8]
	add     r0, #0x4c
	mov     r1, #0x44
	str     r0, [sp, #0x8]
	mul     r5, r1
	ldr     r0, [pc, #0x74] @ 0x22622e8, (=0x1ab4)
	ldr     r1, [sp, #0x8]
	add     r0, r4, r0
	add     r1, r1, r5
	bl      Function_226464c
	mov     r0, r4
	str     r0, [sp, #0x4]
	add     r0, #0x4c
	str     r0, [sp, #0x4]
	add     r0, r0, r5
	bl      Function_22622f8
	add     r2, r4, r5
	mov     r12, r6
	add     r2, #0x50
	mov     r7, #0x5
.thumb
branch_2262294: @ 2262294 :thumb
	mov     r3, r12
	ldmia   r3!, {r0,r1}
	mov     r12, r3
	stmia   r2!, {r0,r1}
	.hword  0x1e7f @ sub r7, r7, #0x1
	bne     branch_2262294
	ldr     r1, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	add     r2, r4, r5
	add     r6, #0x14
	strb    r1, [r0, r5]
	ldmia   r6!, {r0,r1}
	add     r2, #0x78
	stmia   r2!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, #0x0
	str     r0, [r2, #0x0]
	add     r0, r4, r5
	add     r0, #0x4e
	strh    r1, [r0, #0x0]
	add     r0, r4, r5
	add     r0, #0x88
	str     r1, [r0, #0x0]
	ldr     r0, [pc, #0x24] @ 0x22622e8, (=0x1ab4)
	ldr     r1, [sp, #0x8]
	ldr     r2, [r4, #0x10]
	ldr     r3, [r4, #0x14]
	add     r0, r4, r0
	add     r1, r1, r5
	bl      Function_2264620
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22622d6

.thumb
branch_22622d6: @ 22622d6 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r2, #0x44
	cmp     r0, #0x60
	blt     branch_2262256
	bl      ErrorHandling
.thumb
branch_22622e2: @ 22622e2 :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22622e6


.align 2


.word 0x1ab4 @ 0x22622e8
.thumb
Function_22622ec: @ 22622ec :thumb
	mov     r0, #0x1
	strb    r0, [r1, #0x1]
	strh    r2, [r1, #0x6]
	str     r3, [r1, #0x24]
	bx      lr
@ 0x22622f6


.align 2, 0


.thumb
Function_22622f8: @ 22622f8 :thumb
	ldr     r3, [pc, #0x4] @ 0x2262300, (=Call_FillMemWithValue)
	mov     r1, #0x0
	mov     r2, #0x44
	bx      r3
@ 0x2262300

.word Call_FillMemWithValue @ 0x2262300
.thumb
Function_2262304: @ 2262304 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r5
	mov     r7, #0x0
	mov     r6, r5
	add     r4, #0x4c
.thumb
branch_2262310: @ 2262310 :thumb
	mov     r0, r6
	add     r0, #0x4c
	ldrb    r0, [r0, #0x0]
	mov     r1, r0
	add     r1, #0xff
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	cmp     r1, #0x1
	bhi     branch_226232c
	mov     r0, r5
	mov     r1, r4
	bl      Function_2262354
	b       branch_2262346
@ 0x226232c

.thumb
branch_226232c: @ 226232c :thumb
	cmp     r0, #0x5
	bne     branch_226233a
	mov     r0, r4
	mov     r1, r5
	bl      Function_22627b4
	b       branch_2262346
@ 0x226233a

.thumb
branch_226233a: @ 226233a :thumb
	cmp     r0, #0x3
	bne     branch_2262346
	mov     r0, r4
	mov     r1, r5
	bl      Function_22628ec
.thumb
branch_2262346: @ 2262346 :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r6, #0x44
	add     r4, #0x44
	cmp     r7, #0x60
	blt     branch_2262310
	pop     {r3-r7,pc}
@ 0x2262352


.align 2, 0


.thumb
Function_2262354: @ 2262354 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r4, r1
	ldrb    r7, [r4, #0x0]
	mov     r5, r0
	cmp     r7, #0x1
	beq     branch_2262368
	cmp     r7, #0x2
	beq     branch_2262368
	b       branch_22624f2
@ 0x2262368

.thumb
branch_2262368: @ 2262368 :thumb
	ldr     r0, [r4, #0x30]
	add     r1, sp, #0x14
	str     r0, [sp, #0x4]
	mov     r0, r4
	bl      Function_2262620
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x1
	bne     branch_226238e
	ldr     r0, [pc, #0x17c] @ 0x22624f8, (=0x19cc)
	mov     r1, r4
	add     r0, r5, r0
	add     r1, #0x2c
	add     r2, sp, #0x14
	add     r3, sp, #0x8
	bl      Function_2261d84
	mov     r6, r0
	b       branch_2262390
@ 0x226238e

.thumb
branch_226238e: @ 226238e :thumb
	mov     r6, #0x0
.thumb
branch_2262390: @ 2262390 :thumb
	mov     r0, r4
	add     r1, sp, #0x14
	bl      Function_226294c
	cmp     r6, #0x3
	beq     branch_22623a0
	cmp     r6, #0x1
	bne     branch_22623a8
.thumb
branch_22623a0: @ 22623a0 :thumb
	mov     r0, r4
	add     r1, sp, #0x8
	bl      Function_226294c
.thumb
branch_22623a8: @ 22623a8 :thumb
	ldrh    r0, [r4, #0x2]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x2]
	cmp     r6, #0x1
	bne     branch_226243c
	mov     r0, r5
	bl      Function_22614f8
	ldr     r1, [r5, #0x18]
	add     r1, r1, r0
	ldr     r0, [pc, #0x13c] @ 0x22624fc, (=0x1869f)
	str     r1, [r5, #0x18]
	cmp     r1, r0
	ble     branch_22623c6
	str     r0, [r5, #0x18]
.thumb
branch_22623c6: @ 22623c6 :thumb
	ldr     r0, [r5, #0x1c]
	cmp     r0, #0x0
	beq     branch_22623d2
	cmp     r0, #0x1
	beq     branch_22623e0
	b       branch_22623ee
@ 0x22623d2

.thumb
branch_22623d2: @ 22623d2 :thumb
	ldr     r0, [pc, #0x12c] @ 0x2262500, (=0x56a)
	bl      Function_2005748
	ldr     r0, [pc, #0x128] @ 0x2262504, (=0x56b)
	bl      Function_2005748
	b       branch_22623fa
@ 0x22623e0

.thumb
branch_22623e0: @ 22623e0 :thumb
	ldr     r0, [pc, #0x11c] @ 0x2262500, (=0x56a)
	bl      Function_2005748
	ldr     r0, [pc, #0x120] @ 0x2262508, (=0x56c)
	bl      Function_2005748
	b       branch_22623fa
@ 0x22623ee

.thumb
branch_22623ee: @ 22623ee :thumb
	ldr     r0, [pc, #0x110] @ 0x2262500, (=0x56a)
	bl      Function_2005748
	ldr     r0, [pc, #0x114] @ 0x226250c, (=0x56d)
	bl      Function_2005748
.thumb
branch_22623fa: @ 22623fa :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_22628dc
	ldr     r0, [pc, #0x10c] @ 0x2262510, (=0x1e38)
	ldr     r1, [r5, #0x14]
	ldr     r2, [r5, #0x1c]
	ldr     r3, [r5, #0x0]
	add     r0, r5, r0
	bl      Function_226158c
	ldr     r0, [r5, #0x1c]
	cmp     r0, #0x63
	bge     branch_226241a
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x1c]
.thumb
branch_226241a: @ 226241a :thumb
	ldr     r2, [r5, #0x1c]
	ldr     r0, [pc, #0xf4] @ 0x2262514, (=0x862c)
	cmp     r2, #0x3
	ldr     r1, [pc, #0xf4] @ 0x2262518, (=0x1ab4)
	bne     branch_2262430
	add     r0, r5, r0
	add     r1, r5, r1
	bl      Function_2265700
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2262430

.thumb
branch_2262430: @ 2262430 :thumb
	add     r0, r5, r0
	add     r1, r5, r1
	bl      Function_22657a8
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x226243c

.thumb
branch_226243c: @ 226243c :thumb
	ldr     r0, [pc, #0xb8] @ 0x22624f8, (=0x19cc)
	mov     r1, r4
	add     r0, r5, r0
	add     r1, #0x2c
	mov     r6, #0x0
	bl      Function_2261ea8
	cmp     r0, #0x1
	bne     branch_2262466
	mov     r6, #0x1
	cmp     r7, #0x1
	bne     branch_226245a
	ldr     r0, [pc, #0xc4] @ 0x226251c, (=0x722)
	bl      Function_2005748
.thumb
branch_226245a: @ 226245a :thumb
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x1
	bl      Function_22626bc
	b       branch_22624de
@ 0x2262466

.thumb
branch_2262466: @ 2262466 :thumb
	ldr     r1, [r4, #0x30]
	ldr     r0, [pc, #0xb4] @ 0x2262520, (=0xfffce000)
	cmp     r1, r0
	bgt     branch_22624b6
	mov     r0, r4
	bl      Function_2262888
	cmp     r0, #0x0
	bne     branch_226249c
	ldr     r1, [pc, #0xa4] @ 0x2262520, (=0xfffce000)
	ldr     r0, [sp, #0x4]
	mov     r6, #0x1
	cmp     r0, r1
	bgt     branch_2262490
	ldr     r3, [r5, #0x1c]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_22622ec
	b       branch_22624de
@ 0x2262490

.thumb
branch_2262490: @ 2262490 :thumb
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x0
	bl      Function_22626bc
	b       branch_22624de
@ 0x226249c

.thumb
branch_226249c: @ 226249c :thumb
	mov     r0, #0x1
	ldr     r1, [r4, #0x30]
	lsl     r0, r0, #10
	cmp     r1, r0
	bgt     branch_22624de
	ldr     r3, [r5, #0x1c]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x0
	mov     r6, #0x1
	bl      Function_22622ec
	b       branch_22624de
@ 0x22624b6

.thumb
branch_22624b6: @ 22624b6 :thumb
	mov     r0, r4
	bl      Function_22628b8
	cmp     r0, #0x1
	bne     branch_22624de
	mov     r0, r4
	add     r0, #0x2c
	mov     r6, #0x1
	add     r1, sp, #0x14
	mov     r2, r0
	blx     VEC_Subtract
	mov     r0, #0x0
	mov     r2, r6
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, r5
	lsl     r3, r2, #10
	bl      Function_22626e0
.thumb
branch_22624de: @ 22624de :thumb
	cmp     r6, #0x1
	bne     branch_22624f2
	cmp     r7, #0x1
	bne     branch_22624f2
	mov     r0, #0x0
	str     r0, [r5, #0x1c]
	ldr     r0, [pc, #0x28] @ 0x2262514, (=0x862c)
	add     r0, r5, r0
	bl      Function_2265788
.thumb
branch_22624f2: @ 22624f2 :thumb
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x22624f6


.align 2


.word 0x19cc @ 0x22624f8
.word 0x1869f @ 0x22624fc
.word 0x56a @ 0x2262500
.word 0x56b @ 0x2262504
.word 0x56c @ 0x2262508
.word 0x56d @ 0x226250c
.word 0x1e38 @ 0x2262510
.word 0x862c @ 0x2262514
.word 0x1ab4 @ 0x2262518
.word 0x722 @ 0x226251c
.word 0xfffce000 @ 0x2262520
.thumb
Function_2262524: @ 2262524 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r5, r6
	mov     r4, #0x0
	add     r5, #0x4c
.thumb
branch_226252e: @ 226252e :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_2262574
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x44
	cmp     r4, #0x60
	blt     branch_226252e
	pop     {r4-r6,pc}
@ 0x2262540

.thumb
Function_2262540: @ 2262540 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r5, r7
	mov     r6, #0x0
	mov     r4, r7
	add     r5, #0x4c
.thumb
branch_226254c: @ 226254c :thumb
	mov     r0, r4
	add     r0, #0x4d
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_226255e
	mov     r1, r4
	add     r1, #0x4c
	mov     r0, #0x2
	strb    r0, [r1, #0x0]
.thumb
branch_226255e: @ 226255e :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_2262574
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x44
	add     r5, #0x44
	cmp     r6, #0x60
	blt     branch_226254c
	pop     {r3-r7,pc}
@ 0x2262572


.align 2, 0


.thumb
Function_2262574: @ 2262574 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldrb    r0, [r5, #0x1]
	mov     r4, r1
	cmp     r0, #0x0
	beq     branch_22625a2
	ldrb    r0, [r5, #0x0]
	cmp     r0, #0x3
	bne     branch_2262592
	ldrh    r0, [r5, #0x6]
	cmp     r0, #0x1
	bne     branch_2262592
	mov     r0, #0x4
	strb    r0, [r5, #0x0]
	b       branch_2262598
@ 0x2262592

.thumb
branch_2262592: @ 2262592 :thumb
	mov     r0, r5
	bl      Function_22622f8
.thumb
branch_2262598: @ 2262598 :thumb
	ldr     r0, [pc, #0x8] @ 0x22625a4, (=0x1ab4)
	mov     r1, r5
	add     r0, r4, r0
	bl      Function_226464c
.thumb
branch_22625a2: @ 22625a2 :thumb
	pop     {r3-r5,pc}
@ 0x22625a4

.word 0x1ab4 @ 0x22625a4
.thumb
Function_22625a8: @ 22625a8 :thumb
	mov     r3, #0x0
	mov     r2, #0x2
.thumb
branch_22625ac: @ 22625ac :thumb
	mov     r1, r0
	add     r1, #0x4c
	ldrb    r1, [r1, #0x0]
	cmp     r1, #0x1
	bne     branch_22625bc
	mov     r1, r0
	add     r1, #0x4c
	strb    r2, [r1, #0x0]
.thumb
branch_22625bc: @ 22625bc :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	add     r0, #0x44
	cmp     r3, #0x60
	blt     branch_22625ac
	bx      lr
@ 0x22625c6


.align 2, 0


.thumb
Function_22625c8: @ 22625c8 :thumb
	mov     r2, #0x0
.thumb
branch_22625ca: @ 22625ca :thumb
	mov     r1, r0
	add     r1, #0x4c
	ldrb    r1, [r1, #0x0]
	cmp     r1, #0x1
	beq     branch_22625e0
	cmp     r1, #0x2
	beq     branch_22625e0
	cmp     r1, #0x5
	beq     branch_22625e0
	cmp     r1, #0x3
	bne     branch_22625e4
.thumb
branch_22625e0: @ 22625e0 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x22625e4

.thumb
branch_22625e4: @ 22625e4 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r0, #0x44
	cmp     r2, #0x60
	blt     branch_22625ca
	mov     r0, #0x0
	bx      lr
@ 0x22625f0

.thumb
Function_22625f0: @ 22625f0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrh    r0, [r4, #0x2]
	mov     r2, #0x67
	lsl     r2, r2, #4
	lsl     r0, r0, #12
	asr     r1, r0, #31
	mov     r3, #0x0
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	ldr     r4, [r4, #0x14]
	orr     r1, r0
	sub     r0, r4, r1
	bpl     branch_226261c
	mov     r0, r3
.thumb
branch_226261c: @ 226261c :thumb
	pop     {r4,pc}
@ 0x226261e


.align 2, 0


.thumb
Function_2262620: @ 2262620 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_22625f0
	mov     r7, r0
	ldr     r0, [r5, #0x8]
	asr     r6, r7, #31
	asr     r1, r0, #31
	mov     r2, r7
	mov     r3, r6
	blx     _ll_mul
	mov     r2, r0
	mov     r0, #0x2
	mov     r3, #0x0
	lsl     r0, r0, #10
	add     r0, r2, r0
	adc     r1, r3
	lsl     r1, r1, #20
	lsr     r0, r0, #12
	orr     r0, r1
	str     r0, [r4, #0x0]
	ldr     r0, [r5, #0xc]
	mov     r2, r7
	asr     r1, r0, #31
	mov     r3, r6
	blx     _ll_mul
	mov     r2, r0
	mov     r0, #0x2
	mov     r3, #0x0
	lsl     r0, r0, #10
	add     r0, r2, r0
	adc     r1, r3
	ldr     r2, [pc, #0x4c] @ 0x22626b4, (=0xffffeccc)
	lsl     r1, r1, #20
	lsr     r0, r0, #12
	orr     r0, r1
	str     r0, [r4, #0x4]
	ldrh    r0, [r5, #0x2]
	asr     r3, r2, #13
	lsl     r0, r0, #12
	asr     r1, r0, #31
	blx     _ll_mul
	mov     r3, #0x2
	mov     r2, r0
	lsl     r3, r3, #10
	add     r3, r2, r3
	ldr     r2, [pc, #0x30] @ 0x22626b8, (=0x0)
	ldr     r0, [r4, #0x4]
	adc     r1, r2
	lsr     r2, r3, #12
	lsl     r1, r1, #20
	orr     r2, r1
	add     r0, r0, r2
	str     r0, [r4, #0x4]
	ldr     r0, [r5, #0x10]
	mov     r2, r7
	asr     r1, r0, #31
	mov     r3, r6
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	str     r1, [r4, #0x8]
	pop     {r3-r7,pc}
@ 0x22626b4

.word 0xffffeccc @ 0x22626b4
.word 0x0 @ 0x22626b8
.thumb
Function_22626bc: @ 22626bc :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	cmp     r2, #0x1
	bne     branch_22626c8
	ldr     r3, [pc, #0x10] @ 0x22626d8, (=0xd9a)
	b       branch_22626ca
@ 0x22626c8

.thumb
branch_22626c8: @ 22626c8 :thumb
	ldr     r3, [pc, #0x10] @ 0x22626dc, (=0xccd)
.thumb
branch_22626ca: @ 22626ca :thumb
	mov     r4, #0x1
	str     r4, [sp, #0x0]
	bl      Function_22626e0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x22626d6


.align 2


.word 0xd9a @ 0x22626d8
.word 0xccd @ 0x22626dc
.thumb
Function_22626e0: @ 22626e0 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r4, r3
	cmp     r2, #0x0
	beq     branch_2262776
	ldr     r0, [r5, #0x8]
	neg     r0, r0
	str     r0, [r5, #0x8]
	ldr     r0, [r5, #0x10]
	neg     r0, r0
	str     r0, [r5, #0x10]
	ldr     r0, [sp, #0x20]
	cmp     r0, #0x0
	beq     branch_2262776
	bl      Function_201d35c
	ldr     r2, [r5, #0x10]
	mov     r1, r0
	cmp     r2, #0x0
	bge     branch_226270e
	neg     r0, r2
	b       branch_2262710
@ 0x226270e

.thumb
branch_226270e: @ 226270e :thumb
	mov     r0, r2
.thumb
branch_2262710: @ 2262710 :thumb
	ldr     r3, [r5, #0x8]
	cmp     r3, #0x0
	bge     branch_226271a
	neg     r6, r3
	b       branch_226271c
@ 0x226271a

.thumb
branch_226271a: @ 226271a :thumb
	mov     r6, r3
.thumb
branch_226271c: @ 226271c :thumb
	cmp     r6, r0
	bgt     branch_226274c
	asr     r0, r2, #31
	lsr     r3, r2, #20
	lsl     r0, r0, #12
	lsl     r6, r2, #12
	mov     r2, #0x2
	orr     r0, r3
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r6, r2
	adc     r0, r3
	lsl     r0, r0, #20
	lsr     r2, r2, #12
	orr     r2, r0
	mov     r0, #0x1
	and     r0, r1
	cmp     r0, #0x1
	bne     branch_2262748
	neg     r0, r2
	str     r0, [r5, #0x8]
	b       branch_2262776
@ 0x2262748

.thumb
branch_2262748: @ 2262748 :thumb
	str     r2, [r5, #0x8]
	b       branch_2262776
@ 0x226274c

.thumb
branch_226274c: @ 226274c :thumb
	asr     r0, r3, #31
	lsr     r2, r3, #20
	lsl     r0, r0, #12
	orr     r0, r2
	mov     r2, #0x2
	lsl     r6, r3, #12
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r6, r2
	adc     r0, r3
	lsl     r0, r0, #20
	lsr     r2, r2, #12
	orr     r2, r0
	mov     r0, #0x1
	and     r0, r1
	cmp     r0, #0x1
	bne     branch_2262774
	neg     r0, r2
	str     r0, [r5, #0x10]
	b       branch_2262776
@ 0x2262774

.thumb
branch_2262774: @ 2262774 :thumb
	str     r2, [r5, #0x10]
.thumb
branch_2262776: @ 2262776 :thumb
	ldr     r0, [r5, #0x14]
	asr     r3, r4, #31
	asr     r1, r0, #31
	mov     r2, r4
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	str     r1, [r5, #0x14]
	strh    r3, [r5, #0x2]
	mov     r0, #0x5
	strb    r0, [r5, #0x0]
	mov     r0, r5
	add     r1, sp, #0x0
	bl      Function_2262620
	mov     r0, r5
	add     r1, sp, #0x0
	bl      Function_226294c
	ldrh    r0, [r5, #0x2]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x2]
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x22627b4

.thumb
Function_22627b4: @ 22627b4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r4, r1
	ldrb    r1, [r5, #0x0]
	mov     r6, #0x0
	cmp     r1, #0x5
	bne     branch_2262878
	add     r1, sp, #0x4
	ldr     r7, [r5, #0x30]
	bl      Function_2262620
	mov     r0, r5
	add     r1, sp, #0x4
	bl      Function_226294c
	ldrh    r0, [r5, #0x2]
	mov     r1, r5
	add     r1, #0x2c
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x2]
	ldr     r0, [pc, #0x9c] @ 0x226287c, (=0x19cc)
	add     r0, r4, r0
	bl      Function_2261ea8
	cmp     r0, #0x1
	bne     branch_22627f6
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x1
	bl      Function_22626bc
	b       branch_226285c
@ 0x22627f6

.thumb
branch_22627f6: @ 22627f6 :thumb
	ldr     r1, [r5, #0x30]
	ldr     r0, [pc, #0x84] @ 0x2262880, (=0xfffce000)
	cmp     r1, r0
	bgt     branch_2262836
	mov     r0, r5
	bl      Function_2262888
	cmp     r0, #0x0
	bne     branch_226281e
	ldr     r0, [pc, #0x74] @ 0x2262880, (=0xfffce000)
	cmp     r7, r0
	bgt     branch_2262812
	mov     r6, #0x1
	b       branch_2262828
@ 0x2262812

.thumb
branch_2262812: @ 2262812 :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_22626bc
	b       branch_2262828
@ 0x226281e

.thumb
branch_226281e: @ 226281e :thumb
	ldr     r1, [r5, #0x30]
	ldr     r0, [pc, #0x60] @ 0x2262884, (=0xfff9c000)
	cmp     r1, r0
	bgt     branch_2262828
	mov     r6, #0x1
.thumb
branch_2262828: @ 2262828 :thumb
	mov     r0, #0x2
	ldr     r1, [r5, #0x14]
	lsl     r0, r0, #12
	cmp     r1, r0
	bgt     branch_226285c
	mov     r6, #0x1
	b       branch_226285c
@ 0x2262836

.thumb
branch_2262836: @ 2262836 :thumb
	mov     r0, r5
	bl      Function_22628b8
	cmp     r0, #0x1
	bne     branch_226285c
	mov     r0, r5
	add     r0, #0x2c
	add     r1, sp, #0x4
	mov     r2, r0
	blx     VEC_Subtract
	mov     r0, r6
	mov     r2, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, r4
	lsl     r3, r2, #10
	bl      Function_22626e0
.thumb
branch_226285c: @ 226285c :thumb
	mov     r0, #0x1
	ldr     r1, [r5, #0x14]
	lsl     r0, r0, #12
	cmp     r1, r0
	bgt     branch_2262868
	mov     r6, #0x1
.thumb
branch_2262868: @ 2262868 :thumb
	cmp     r6, #0x1
	bne     branch_2262878
	ldr     r3, [r4, #0x1c]
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x0
	bl      Function_22622ec
.thumb
branch_2262878: @ 2262878 :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x226287c

.word 0x19cc @ 0x226287c
.word 0xfffce000 @ 0x2262880
.word 0xfff9c000 @ 0x2262884
.thumb
Function_2262888: @ 2262888 :thumb
	ldr     r1, [r0, #0x40]
	mov     r0, #0x2f
	lsl     r0, r0, #14
	cmp     r1, r0
	blt     branch_226289e
	mov     r0, #0xf
	lsl     r0, r0, #16
	cmp     r1, r0
	bgt     branch_226289e
	mov     r0, #0x1
	bx      lr
@ 0x226289e

.thumb
branch_226289e: @ 226289e :thumb
	mov     r0, #0x0
	bx      lr
@ 0x22628a2


.align 2, 0


.thumb
Function_22628a4: @ 22628a4 :thumb
	ldr     r1, [r0, #0x40]
	mov     r0, #0x1e
	lsl     r0, r0, #14
	cmp     r1, r0
	bgt     branch_22628b2
	mov     r0, #0x1
	bx      lr
@ 0x22628b2

.thumb
branch_22628b2: @ 22628b2 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x22628b6


.align 2, 0


.thumb
Function_22628b8: @ 22628b8 :thumb
	mov     r1, #0xf
	ldr     r2, [r0, #0x40]
	lsl     r1, r1, #16
	cmp     r2, r1
	blt     branch_22628cc
	ldr     r0, [r0, #0x3c]
	cmp     r0, #0x1
	bne     branch_22628d6
	mov     r0, #0x1
	bx      lr
@ 0x22628cc

.thumb
branch_22628cc: @ 22628cc :thumb
	ldr     r1, [r0, #0x3c]
	cmp     r1, #0x0
	bne     branch_22628d6
	mov     r1, #0x1
	str     r1, [r0, #0x3c]
.thumb
branch_22628d6: @ 22628d6 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x22628da


.align 2, 0


.thumb
Function_22628dc: @ 22628dc :thumb
	mov     r2, #0x3
	strb    r2, [r0, #0x0]
	mov     r2, #0x8
	strh    r2, [r0, #0x38]
	ldr     r1, [r1, #0x1c]
	strh    r1, [r0, #0x3a]
	bx      lr
@ 0x22628ea


.align 2, 0


.thumb
Function_22628ec: @ 22628ec :thumb
	push    {r4-r6,lr}
	add     sp, #-0x18
	mov     r6, r1
	add     r1, sp, #0xc
	mov     r5, r0
	bl      Function_2262620
	ldr     r0, [pc, #0x4c] @ 0x2262948, (=0x19cc)
	mov     r1, r5
	add     r0, r6, r0
	add     r1, #0x2c
	add     r2, sp, #0xc
	add     r3, sp, #0x0
	bl      Function_2261d84
	mov     r4, r0
	mov     r0, r5
	add     r1, sp, #0xc
	bl      Function_226294c
	cmp     r4, #0x3
	beq     branch_226291c
	cmp     r4, #0x1
	bne     branch_2262924
.thumb
branch_226291c: @ 226291c :thumb
	mov     r0, r5
	add     r1, sp, #0x0
	bl      Function_226294c
.thumb
branch_2262924: @ 2262924 :thumb
	ldrh    r0, [r5, #0x2]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x2]
	mov     r0, #0x38
	ldsh    r1, [r5, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strh    r1, [r5, #0x38]
	ldsh    r0, [r5, r0]
	cmp     r0, #0x0
	bgt     branch_2262944
	ldrh    r3, [r5, #0x3a]
	mov     r0, r6
	mov     r1, r5
	mov     r2, #0x1
	bl      Function_22622ec
.thumb
branch_2262944: @ 2262944 :thumb
	add     sp, #0x18
	pop     {r4-r6,pc}
@ 0x2262948

.word 0x19cc @ 0x2262948
.thumb
Function_226294c: @ 226294c :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	add     r0, #0x2c
	mov     r2, r0
	blx     VEC_Add
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x2c]
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x34]
	str     r0, [sp, #0x8]
	add     r0, sp, #0x0
	blx     VEC_Mag
	str     r0, [r4, #0x40]
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2262972


.align 2, 0


.thumb
Function_2262974: @ 2262974 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x14] @ 0x226298c, (=0x21bf6bc)
	ldrh    r1, [r1, #0x22]
	cmp     r1, #0x0
	bne     branch_2262984
	bl      Function_2262990
	pop     {r3,pc}
@ 0x2262984

.thumb
branch_2262984: @ 2262984 :thumb
	bl      Function_2262b70
	pop     {r3,pc}
@ 0x226298a


.align 2


.word 0x21bf6bc @ 0x226298c
.thumb
Function_2262990: @ 2262990 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x30
	mov     r5, r0
	ldr     r0, [r5, #0x20]
	mov     r4, #0x0
	cmp     r0, #0x0
	bne     branch_22629a8
	ldr     r0, [r5, #0x48]
	add     sp, #0x30
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x48]
	pop     {r4-r6,pc}
@ 0x22629a8

.thumb
branch_22629a8: @ 22629a8 :thumb
	mov     r0, r5
	add     r0, #0x20
	add     r1, sp, #0x4
	bl      Function_2262d3c
	cmp     r0, #0x0
	bne     branch_22629ba
	bl      ErrorHandling
.thumb
branch_22629ba: @ 22629ba :thumb
	mov     r0, r5
	add     r0, #0x20
	add     r1, sp, #0x0
	bl      Function_2262d58
	cmp     r0, #0x0
	bne     branch_22629cc
	bl      ErrorHandling
.thumb
branch_22629cc: @ 22629cc :thumb
	mov     r0, r5
	add     r0, #0x20
	bl      Function_2262d7c
	mov     r6, r0
	cmp     r6, #0x2
	bge     branch_22629dc
	b       branch_2262b3e
@ 0x22629dc

.thumb
branch_22629dc: @ 22629dc :thumb
	ldr     r0, [r5, #0x14]
	add     r1, sp, #0x0
	strh    r0, [r1, #0x8]
	mov     r3, #0x0
	strh    r3, [r1, #0xa]
	mov     r0, #0x4
	ldsh    r2, [r1, r0]
	ldsh    r0, [r1, r3]
	mov     r1, r6
	sub     r0, r2, r0
	blx     _s32_div_f
	lsl     r0, r0, #16
	asr     r0, r0, #4
	str     r0, [sp, #0xc]
	add     r1, sp, #0x0
	mov     r0, #0x6
	ldsh    r2, [r1, r0]
	mov     r0, #0x2
	ldsh    r0, [r1, r0]
	mov     r1, r6
	sub     r0, r2, r0
	blx     _s32_div_f
	lsl     r0, r0, #16
	asr     r0, r0, #4
	str     r0, [sp, #0x14]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	add     r0, sp, #0xc
	blx     VEC_Mag
	mov     r1, #0x2
	lsl     r1, r1, #14
	cmp     r0, r1
	bge     branch_2262a6c
	cmp     r0, #0x0
	beq     branch_2262a68
	add     r0, sp, #0xc
	mov     r1, r0
	blx     VEC_Normalize
	ldr     r3, [sp, #0xc]
	asr     r1, r3, #31
	lsr     r0, r3, #17
	lsl     r2, r1, #15
	orr     r2, r0
	mov     r0, #0x2
	lsl     r3, r3, #15
	mov     r1, #0x0
	lsl     r0, r0, #10
	add     r3, r3, r0
	adc     r2, r1
	lsl     r2, r2, #20
	lsr     r3, r3, #12
	orr     r3, r2
	ldr     r2, [sp, #0x14]
	str     r3, [sp, #0xc]
	asr     r3, r2, #31
	lsr     r6, r2, #17
	lsl     r3, r3, #15
	orr     r3, r6
	lsl     r2, r2, #15
	add     r2, r2, r0
	adc     r3, r1
	lsl     r0, r3, #20
	lsr     r1, r2, #12
	orr     r1, r0
	str     r1, [sp, #0x14]
	b       branch_2262ab4
@ 0x2262a68

.thumb
branch_2262a68: @ 2262a68 :thumb
	mov     r4, #0x1
	b       branch_2262ab4
@ 0x2262a6c

.thumb
branch_2262a6c: @ 2262a6c :thumb
	ldr     r1, [pc, #0xf4] @ 0x2262b64, (=0x1e200)
	cmp     r0, r1
	ble     branch_2262ab4
	add     r0, sp, #0xc
	mov     r1, r0
	blx     VEC_Normalize
	ldr     r0, [sp, #0xc]
	ldr     r2, [pc, #0xe4] @ 0x2262b64, (=0x1e200)
	asr     r1, r0, #31
	mov     r3, #0x0
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	ldr     r0, [sp, #0x14]
	str     r1, [sp, #0xc]
	ldr     r2, [pc, #0xc8] @ 0x2262b64, (=0x1e200)
	asr     r1, r0, #31
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	str     r1, [sp, #0x14]
.thumb
branch_2262ab4: @ 2262ab4 :thumb
	cmp     r4, #0x0
	bne     branch_2262b40
	mov     r0, #0x26
	lsl     r0, r0, #12
	str     r0, [sp, #0x10]
	add     r0, sp, #0xc
	blx     VEC_Mag
	ldr     r2, [pc, #0xa0] @ 0x2262b68, (=0x99a)
	asr     r1, r0, #31
	mov     r3, #0x0
	str     r0, [sp, #0x18]
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	add     r0, sp, #0xc
	str     r1, [sp, #0x18]
	mov     r1, r0
	blx     VEC_Normalize
	add     r2, sp, #0x0
	mov     r0, #0x0
	mov     r1, #0x2
	ldsh    r0, [r2, r0]
	ldsh    r1, [r2, r1]
	add     r2, sp, #0x1c
	bl      Function_22642f8
	mov     r0, #0x0
	str     r0, [sp, #0x20]
	add     r2, sp, #0x0
	add     r0, sp, #0x1c
	ldrh    r2, [r2, #0x8]
	ldr     r3, [r5, #0x10]
	mov     r1, r0
	bl      Function_2264354
	add     r2, sp, #0x0
	add     r0, sp, #0xc
	ldrh    r2, [r2, #0x8]
	ldr     r3, [r5, #0x10]
	mov     r1, r0
	bl      Function_2264354
	ldr     r0, [r5, #0x1c]
	cmp     r0, #0x5
	blt     branch_2262b26
	mov     r0, #0x1
	str     r0, [sp, #0x2c]
	b       branch_2262b2a
@ 0x2262b26

.thumb
branch_2262b26: @ 2262b26 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x2c]
.thumb
branch_2262b2a: @ 2262b2a :thumb
	mov     r0, r5
	add     r1, sp, #0x8
	mov     r2, #0x1
	bl      Function_22621dc
	mov     r0, #0x65
	lsl     r0, r0, #4
	bl      Function_2005748
	b       branch_2262b40
@ 0x2262b3e

.thumb
branch_2262b3e: @ 2262b3e :thumb
	mov     r4, #0x1
.thumb
branch_2262b40: @ 2262b40 :thumb
	cmp     r4, #0x1
	bne     branch_2262b56
	add     r3, sp, #0x0
	mov     r1, #0x0
	mov     r2, #0x2
	ldr     r0, [pc, #0x20] @ 0x2262b6c, (=0x854c)
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	add     r0, r5, r0
	bl      Function_2264d80
.thumb
branch_2262b56: @ 2262b56 :thumb
	mov     r0, r5
	bl      Function_2262d90
	mov     r0, #0x0
	str     r0, [r5, #0x48]
	add     sp, #0x30
	pop     {r4-r6,pc}
@ 0x2262b64

.word 0x1e200 @ 0x2262b64
.word 0x99a @ 0x2262b68
.word 0x854c @ 0x2262b6c
.thumb
Function_2262b70: @ 2262b70 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r1, [r4, #0x20]
	cmp     r1, #0x0
	bne     branch_2262b98
	bl      Function_2262c60
	cmp     r0, #0x1
	bne     branch_2262b98
	mov     r0, #0x1
	str     r0, [r4, #0x20]
	ldr     r0, [pc, #0xc4] @ 0x2262c50, (=0x8544)
	add     r0, r4, r0
	bl      Function_2264bac
	ldr     r0, [pc, #0xc0] @ 0x2262c54, (=0x21a8)
	add     r0, r4, r0
	bl      Function_22653cc
.thumb
branch_2262b98: @ 2262b98 :thumb
	ldr     r0, [r4, #0x20]
	cmp     r0, #0x1
	bne     branch_2262c4a
	ldr     r1, [pc, #0xb8] @ 0x2262c58, (=0x86ec)
	ldrh    r0, [r4, r1]
	cmp     r0, #0x1
	bne     branch_2262bce
	add     r0, r1, #0x2
	ldrh    r0, [r4, r0]
	add     r2, sp, #0x0
	mov     r3, sp
	strh    r0, [r2, #0x0]
	add     r0, r1, #0x4
	ldrh    r0, [r4, r0]
	.hword  0x1f1b @ sub r3, r3, #0x4
	add     r4, #0x20
	strh    r0, [r2, #0x2]
	ldrh    r1, [r2, #0x0]
	mov     r0, r4
	strh    r1, [r3, #0x0]
	ldrh    r1, [r2, #0x2]
	strh    r1, [r3, #0x2]
	ldr     r1, [r3, #0x0]
	bl      Function_2262cbc
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2262bce

.thumb
branch_2262bce: @ 2262bce :thumb
	cmp     r0, #0x2
	bcc     branch_2262c28
	add     r0, r1, #0x2
	ldrh    r0, [r4, r0]
	add     r2, sp, #0x0
	mov     r3, sp
	strh    r0, [r2, #0x0]
	add     r0, r1, #0x4
	ldrh    r0, [r4, r0]
	.hword  0x1f1b @ sub r3, r3, #0x4
	strh    r0, [r2, #0x2]
	ldrh    r1, [r2, #0x0]
	mov     r0, r4
	add     r0, #0x20
	strh    r1, [r3, #0x0]
	ldrh    r1, [r2, #0x2]
	strh    r1, [r3, #0x2]
	ldr     r1, [r3, #0x0]
	bl      Function_2262cbc
	ldr     r0, [pc, #0x60] @ 0x2262c58, (=0x86ec)
	ldrh    r1, [r4, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	lsl     r1, r1, #3
	add     r3, r4, r1
	add     r1, r0, #0x2
	ldrh    r2, [r3, r1]
	add     r1, sp, #0x0
	.hword  0x1d00 @ add r0, r0, #0x4
	strh    r2, [r1, #0x0]
	ldrh    r0, [r3, r0]
	mov     r3, sp
	.hword  0x1f1b @ sub r3, r3, #0x4
	strh    r0, [r1, #0x2]
	ldrh    r2, [r1, #0x0]
	add     r4, #0x20
	mov     r0, r4
	strh    r2, [r3, #0x0]
	ldrh    r1, [r1, #0x2]
	strh    r1, [r3, #0x2]
	ldr     r1, [r3, #0x0]
	bl      Function_2262cbc
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2262c28

.thumb
branch_2262c28: @ 2262c28 :thumb
	ldr     r0, [pc, #0x30] @ 0x2262c5c, (=0x21bf6bc)
	mov     r3, sp
	ldrh    r2, [r0, #0x1c]
	add     r1, sp, #0x0
	.hword  0x1f1b @ sub r3, r3, #0x4
	strh    r2, [r1, #0x0]
	ldrh    r0, [r0, #0x1e]
	add     r4, #0x20
	strh    r0, [r1, #0x2]
	ldrh    r2, [r1, #0x0]
	mov     r0, r4
	strh    r2, [r3, #0x0]
	ldrh    r1, [r1, #0x2]
	strh    r1, [r3, #0x2]
	ldr     r1, [r3, #0x0]
	bl      Function_2262cbc
.thumb
branch_2262c4a: @ 2262c4a :thumb
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2262c4e


.align 2


.word 0x8544 @ 0x2262c50
.word 0x21a8 @ 0x2262c54
.word 0x86ec @ 0x2262c58
.word 0x21bf6bc @ 0x2262c5c
.thumb
Function_2262c60: @ 2262c60 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x48]
	cmp     r0, #0x2
	bcs     branch_2262c6c
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2262c6c

.thumb
branch_2262c6c: @ 2262c6c :thumb
	ldr     r1, [pc, #0x2c] @ 0x2262c9c, (=0x21bf6bc)
	mov     r0, #0x80
	ldrh    r2, [r1, #0x1c]
	ldrh    r1, [r1, #0x1e]
	sub     r3, r0, r2
	sub     r0, #0xe0
	sub     r2, r0, r1
	mov     r1, r3
	mov     r0, r2
	mul     r1, r3
	mul     r0, r2
	add     r0, r1, r0
	lsl     r0, r0, #12
	blx     FX_Sqrt
	asr     r1, r0, #12
	ldr     r0, [pc, #0x10] @ 0x2262ca0, (=0x11e)
	cmp     r1, r0
	bgt     branch_2262c96
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2262c96

.thumb
branch_2262c96: @ 2262c96 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2262c9a


.align 2


.word 0x21bf6bc @ 0x2262c9c
.word 0x11e @ 0x2262ca0
.thumb
Function_2262ca4: @ 2262ca4 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, r4, #0x4
	mov     r1, #0x0
	mov     r2, #0x20
	blx     Call_FillMemWithValue
	mov     r0, #0x0
	strh    r0, [r4, #0x24]
	strh    r0, [r4, #0x26]
	pop     {r4,pc}
@ 0x2262cba


.align 2, 0


.thumb
Function_2262cbc: @ 2262cbc :thumb
	push    {r0-r3}
.thumb
Function_2262cbe: @ 2262cbe :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldrh    r1, [r4, #0x26]
	.hword  0x1c49 @ add r1, r1, #0x1
	lsr     r3, r1, #31
	lsl     r2, r1, #29
	sub     r2, r2, r3
	mov     r1, #0x1d
	ror     r2, r1
	ldrh    r1, [r4, #0x24]
	add     r2, r3, r2
	cmp     r2, r1
	bne     branch_2262ce0
	add     r1, sp, #0x0
	bl      Function_2262d0c
.thumb
branch_2262ce0: @ 2262ce0 :thumb
	ldrh    r0, [r4, #0x26]
	lsl     r0, r0, #2
	add     r2, r4, r0
	add     r0, sp, #0x10
	ldrh    r1, [r0, #0x4]
	strh    r1, [r2, #0x4]
	ldrh    r0, [r0, #0x6]
	strh    r0, [r2, #0x6]
	ldrh    r0, [r4, #0x26]
	.hword  0x1c40 @ add r0, r0, #0x1
	lsr     r2, r0, #31
	lsl     r1, r0, #29
	sub     r1, r1, r2
	mov     r0, #0x1d
	ror     r1, r0
	add     r0, r2, r1
	strh    r0, [r4, #0x26]
	add     sp, #0x4
	pop     {r3,r4}
	pop     {r3}
	add     sp, #0x10
	bx      r3
@ 0x2262d0c

.thumb
Function_2262d0c: @ 2262d0c :thumb
	ldrh    r3, [r0, #0x24]
	ldrh    r2, [r0, #0x26]
	cmp     r2, r3
	bne     branch_2262d18
	mov     r0, #0x0
	bx      lr
@ 0x2262d18

.thumb
branch_2262d18: @ 2262d18 :thumb
	lsl     r2, r3, #2
	add     r3, r0, r2
	ldrh    r2, [r3, #0x4]
	strh    r2, [r1, #0x0]
	ldrh    r2, [r3, #0x6]
	strh    r2, [r1, #0x2]
	ldrh    r1, [r0, #0x24]
	.hword  0x1c49 @ add r1, r1, #0x1
	lsr     r3, r1, #31
	lsl     r2, r1, #29
	sub     r2, r2, r3
	mov     r1, #0x1d
	ror     r2, r1
	add     r1, r3, r2
	strh    r1, [r0, #0x24]
	mov     r0, #0x1
	bx      lr
@ 0x2262d3a


.align 2, 0


.thumb
Function_2262d3c: @ 2262d3c :thumb
	ldrh    r3, [r0, #0x24]
	ldrh    r2, [r0, #0x26]
	cmp     r2, r3
	bne     branch_2262d48
	mov     r0, #0x0
	bx      lr
@ 0x2262d48

.thumb
branch_2262d48: @ 2262d48 :thumb
	lsl     r2, r3, #2
	add     r2, r0, r2
	ldrh    r0, [r2, #0x4]
	strh    r0, [r1, #0x0]
	ldrh    r0, [r2, #0x6]
	strh    r0, [r1, #0x2]
	mov     r0, #0x1
	bx      lr
@ 0x2262d58

.thumb
Function_2262d58: @ 2262d58 :thumb
	ldrh    r3, [r0, #0x26]
	ldrh    r2, [r0, #0x24]
	cmp     r3, r2
	bne     branch_2262d64
	mov     r0, #0x0
	bx      lr
@ 0x2262d64

.thumb
branch_2262d64: @ 2262d64 :thumb
	.hword  0x1e5a @ sub r2, r3, #0x1
	bpl     branch_2262d6a
	add     r2, #0x8
.thumb
branch_2262d6a: @ 2262d6a :thumb
	lsl     r2, r2, #2
	add     r2, r0, r2
	ldrh    r0, [r2, #0x4]
	strh    r0, [r1, #0x0]
	ldrh    r0, [r2, #0x6]
	strh    r0, [r1, #0x2]
	mov     r0, #0x1
	bx      lr
@ 0x2262d7a


.align 2, 0


.thumb
Function_2262d7c: @ 2262d7c :thumb
	ldrh    r2, [r0, #0x26]
	ldrh    r1, [r0, #0x24]
	cmp     r1, r2
	bls     branch_2262d8c
	mov     r0, #0x8
	sub     r0, r0, r1
	add     r0, r0, r2
	bx      lr
@ 0x2262d8c

.thumb
branch_2262d8c: @ 2262d8c :thumb
	sub     r0, r2, r1
	bx      lr
@ 0x2262d90

.thumb
Function_2262d90: @ 2262d90 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [r4, #0x20]
	mov     r0, r4
	add     r0, #0x20
	bl      Function_2262ca4
	ldr     r0, [pc, #0x8] @ 0x2262dac, (=0x8544)
	add     r0, r4, r0
	bl      Function_2264bf8
	pop     {r4,pc}
@ 0x2262daa


.align 2


.word 0x8544 @ 0x2262dac
.thumb
Function_2262db0: @ 2262db0 :thumb
	push    {r3,lr}
	mov     r3, r0
	mov     r0, #0x10
	str     r0, [r3, #0x48]
	mov     r0, r1
	mov     r1, r2
	mov     r2, #0x0
	bl      Function_2262f50
	pop     {r3,pc}
@ 0x2262dc4

.thumb
Function_2262dc4: @ 2262dc4 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x30
	mov     r6, r2
	mov     r4, r1
	mov     r5, r0
	mov     r2, r3
	mov     r0, r4
	mov     r1, r6
	add     r3, sp, #0x18
	bl      Function_2262f50
	add     r2, sp, #0x30
	ldrh    r2, [r2, #0x10]
	mov     r0, r4
	mov     r1, r6
	add     r3, sp, #0x0
	bl      Function_2262f50
	mov     r2, r5
	add     r3, sp, #0x18
	add     r2, #0x18
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	add     r3, sp, #0x18
	mov     r2, r5
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r1, [sp, #0x0]
	ldr     r0, [sp, #0x18]
	sub     r0, r1, r0
	str     r0, [r5, #0x30]
	ldr     r1, [sp, #0x8]
	ldr     r0, [sp, #0x20]
	sub     r0, r1, r0
	str     r0, [r5, #0x38]
	ldr     r1, [sp, #0x10]
	ldr     r0, [sp, #0x28]
	sub     r0, r1, r0
	str     r0, [r5, #0x40]
	ldr     r1, [sp, #0x14]
	ldr     r0, [sp, #0x2c]
	sub     r0, r1, r0
	str     r0, [r5, #0x44]
	ldr     r2, [sp, #0x4]
	ldr     r0, [pc, #0x30] @ 0x2262e60, (=0xffff)
	ldr     r3, [sp, #0x1c]
	add     r0, r2, r0
	sub     r1, r0, r3
	sub     r0, r2, r3
	cmp     r0, r1
	bge     branch_2262e3e
	str     r0, [r5, #0x34]
	b       branch_2262e40
@ 0x2262e3e

.thumb
branch_2262e3e: @ 2262e3e :thumb
	str     r1, [r5, #0x34]
.thumb
branch_2262e40: @ 2262e40 :thumb
	ldr     r2, [sp, #0xc]
	ldr     r0, [pc, #0x1c] @ 0x2262e60, (=0xffff)
	ldr     r3, [sp, #0x24]
	add     r0, r2, r0
	sub     r1, r0, r3
	sub     r0, r2, r3
	cmp     r0, r1
	bge     branch_2262e54
	str     r0, [r5, #0x3c]
	b       branch_2262e56
@ 0x2262e54

.thumb
branch_2262e54: @ 2262e54 :thumb
	str     r1, [r5, #0x3c]
.thumb
branch_2262e56: @ 2262e56 :thumb
	mov     r0, #0x0
	str     r0, [r5, #0x48]
	add     sp, #0x30
	pop     {r4-r6,pc}
@ 0x2262e5e


.align 2


.word 0xffff @ 0x2262e60
.thumb
Function_2262e64: @ 2262e64 :thumb
	push    {r3,r4}
	ldr     r1, [r0, #0x48]
	cmp     r1, #0x10
	blt     branch_2262e72
	mov     r0, #0x1
	pop     {r3,r4}
	bx      lr
@ 0x2262e72

.thumb
branch_2262e72: @ 2262e72 :thumb
	add     r2, r1, #0x1
	str     r2, [r0, #0x48]
	ldr     r1, [r0, #0x30]
	ldr     r3, [r0, #0x18]
	mul     r2, r1
	asr     r1, r2, #3
	lsr     r1, r1, #28
	add     r1, r2, r1
	asr     r1, r1, #4
	add     r1, r3, r1
	str     r1, [r0, #0x0]
	ldr     r2, [r0, #0x34]
	ldr     r1, [r0, #0x48]
	mov     r3, r2
	mul     r3, r1
	asr     r1, r3, #3
	lsr     r1, r1, #28
	add     r1, r3, r1
	ldr     r4, [r0, #0x1c]
	asr     r1, r1, #4
	add     r1, r4, r1
	str     r1, [r0, #0x4]
	ldr     r2, [r0, #0x38]
	ldr     r1, [r0, #0x48]
	mov     r3, r2
	mul     r3, r1
	asr     r1, r3, #3
	lsr     r1, r1, #28
	add     r1, r3, r1
	ldr     r4, [r0, #0x20]
	asr     r1, r1, #4
	add     r1, r4, r1
	str     r1, [r0, #0x8]
	ldr     r2, [r0, #0x3c]
	ldr     r1, [r0, #0x48]
	mov     r3, r2
	mul     r3, r1
	asr     r1, r3, #3
	lsr     r1, r1, #28
	add     r1, r3, r1
	ldr     r4, [r0, #0x24]
	asr     r1, r1, #4
	add     r1, r4, r1
	str     r1, [r0, #0xc]
	ldr     r2, [r0, #0x40]
	ldr     r1, [r0, #0x48]
	mov     r3, r2
	mul     r3, r1
	asr     r1, r3, #3
	lsr     r1, r1, #28
	add     r1, r3, r1
	ldr     r4, [r0, #0x28]
	asr     r1, r1, #4
	add     r1, r4, r1
	str     r1, [r0, #0x10]
	ldr     r2, [r0, #0x44]
	ldr     r1, [r0, #0x48]
	mov     r3, r2
	mul     r3, r1
	asr     r1, r3, #3
	lsr     r1, r1, #28
	add     r1, r3, r1
	ldr     r4, [r0, #0x2c]
	asr     r1, r1, #4
	add     r1, r4, r1
	str     r1, [r0, #0x14]
	mov     r0, #0x0
	pop     {r3,r4}
	bx      lr
@ 0x2262efc

.thumb
Function_2262efc: @ 2262efc :thumb
	ldr     r3, [pc, #0x0] @ 0x2262f00, (=0x2262f05)
	bx      r3
@ 0x2262f00

.word 0x2262f05 @ 0x2262f00
.thumb
Function_2262f04: @ 2262f04 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x4]
	mov     r5, r0
	ldr     r0, [pc, #0x38] @ 0x2262f48, (=0x19cc)
	lsl     r1, r1, #16
	add     r0, r5, r0
	lsr     r1, r1, #16
	bl      Function_22620d8
	ldr     r0, [pc, #0x30] @ 0x2262f4c, (=0x1ab4)
	ldr     r1, [r4, #0x8]
	add     r0, r5, r0
	bl      Function_2265274
	ldr     r1, [r4, #0xc]
	ldr     r0, [pc, #0x24] @ 0x2262f4c, (=0x1ab4)
	lsl     r1, r1, #16
	add     r0, r5, r0
	lsr     r1, r1, #16
	bl      Function_226527c
	ldr     r0, [pc, #0x14] @ 0x2262f48, (=0x19cc)
	ldr     r1, [r4, #0x10]
	add     r0, r5, r0
	bl      Function_22620dc
	ldr     r0, [pc, #0xc] @ 0x2262f48, (=0x19cc)
	ldr     r1, [r4, #0x14]
	add     r0, r5, r0
	bl      Function_2261f94
	pop     {r3-r5,pc}
@ 0x2262f46


.align 2


.word 0x19cc @ 0x2262f48
.word 0x1ab4 @ 0x2262f4c
.thumb
Function_2262f50: @ 2262f50 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r6, r2
	mov     r7, r1
	mov     r4, r3
	cmp     r6, r0
	bcc     branch_2262f64
	bl      ErrorHandling
.thumb
branch_2262f64: @ 2262f64 :thumb
	mov     r0, #0x18
	ldr     r1, [r5, #0x4]
	mul     r0, r6
	add     r3, r1, r0
	mov     r2, r4
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r4, #0x4]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [r4, #0x4]
	ldr     r0, [r4, #0xc]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [r4, #0xc]
	ldrb    r0, [r7, #0x0]
	cmp     r0, #0x0
	beq     branch_2262fa6
	add     r1, r6, #0x1
	mov     r0, #0x6
	sub     r2, r0, r1
	bpl     branch_2262f9a
	mov     r2, #0x0
.thumb
branch_2262f9a: @ 2262f9a :thumb
	mov     r0, #0x18
	ldr     r1, [r5, #0x4]
	mul     r0, r2
	add     r0, r1, r0
	ldr     r0, [r0, #0x14]
	str     r0, [r4, #0x14]
.thumb
branch_2262fa6: @ 2262fa6 :thumb
	ldrb    r0, [r7, #0x1]
	cmp     r0, #0x0
	beq     branch_2262fb2
	ldr     r0, [r4, #0x4]
	neg     r0, r0
	str     r0, [r4, #0x4]
.thumb
branch_2262fb2: @ 2262fb2 :thumb
	pop     {r3-r7,pc}
@ 0x2262fb4

.thumb
Function_2262fb4: @ 2262fb4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x4c
	mov     r4, r1
	mov     r6, r2
	mov     r1, #0x0
	mov     r2, #0x40
	mov     r5, r0
	blx     Call_FillMemWithValue
	mov     r0, #0xab
	mov     r1, r6
	bl      LoadFromNARC_8
	mov     r1, #0x78
	mov     r7, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	str     r6, [sp, #0x8]
	add     r1, #0xd0
	ldr     r0, [r4, r1]
	mov     r1, r7
	mov     r2, #0x15
	mov     r3, #0x0
	bl      Function_2009a4c
	str     r0, [r5, #0x0]
	mov     r1, #0x78
	str     r1, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r6, [sp, #0xc]
	add     r1, #0xd4
	ldr     r0, [r4, r1]
	mov     r1, r7
	mov     r2, #0x14
	mov     r3, #0x0
	bl      Function_2009b04
	str     r0, [r5, #0x4]
	mov     r1, #0x78
	str     r1, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	str     r6, [sp, #0x8]
	add     r1, #0xd8
	ldr     r0, [r4, r1]
	mov     r1, r7
	mov     r2, #0x16
	mov     r3, #0x0
	bl      Function_2009bc4
	str     r0, [r5, #0x8]
	mov     r1, #0x78
	str     r1, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	str     r6, [sp, #0x8]
	add     r1, #0xdc
	ldr     r0, [r4, r1]
	mov     r1, r7
	mov     r2, #0x17
	mov     r3, #0x0
	bl      Function_2009bc4
	str     r0, [r5, #0xc]
	ldr     r0, [r5, #0x0]
	bl      Function_200a450
	cmp     r0, #0x0
	bne     branch_2263048
	bl      ErrorHandling
.thumb
branch_2263048: @ 2263048 :thumb
	ldr     r0, [r5, #0x4]
	bl      Function_200a640
	cmp     r0, #0x0
	bne     branch_2263056
	bl      ErrorHandling
.thumb
branch_2263056: @ 2263056 :thumb
	ldr     r0, [r5, #0x0]
	bl      Function_2009d4c
	ldr     r0, [r5, #0x4]
	bl      Function_2009d4c
	mov     r1, #0x78
	mov     r0, r1
	mov     r2, r1
	str     r1, [sp, #0x0]
	sub     r0, #0x79
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	add     r2, #0xd0
	ldr     r2, [r4, r2]
	mov     r3, r1
	str     r2, [sp, #0x14]
	mov     r2, r1
	add     r2, #0xd4
	ldr     r2, [r4, r2]
	str     r2, [sp, #0x18]
	mov     r2, r1
	add     r2, #0xd8
	ldr     r2, [r4, r2]
	str     r2, [sp, #0x1c]
	mov     r2, r1
	add     r2, #0xdc
	ldr     r2, [r4, r2]
	str     r2, [sp, #0x20]
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	mov     r0, r5
	add     r0, #0x10
	mov     r2, r1
	bl      Function_20093b4
	ldr     r0, [r4, #0x1c]
	str     r0, [sp, #0x2c]
	mov     r0, r5
	add     r0, #0x10
	str     r0, [sp, #0x30]
	mov     r0, #0x2
	lsl     r0, r0, #18
	str     r0, [sp, #0x34]
	mov     r0, #0x9e
	lsl     r0, r0, #14
	str     r0, [sp, #0x38]
	mov     r0, #0x0
	str     r0, [sp, #0x40]
	mov     r0, #0x2
	str     r0, [sp, #0x44]
	add     r0, sp, #0x2c
	str     r6, [sp, #0x48]
	bl      Function_2021b90
	mov     r1, #0x0
	str     r0, [r5, #0x34]
	bl      Function_2021cac
	mov     r0, r7
	bl      Call_FS_CloseFile
	add     sp, #0x4c
	pop     {r4-r7,pc}
@ 0x22630dc

.thumb
Function_22630dc: @ 22630dc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x34]
	mov     r4, r1
	bl      Function_2021bd4
	ldr     r0, [r5, #0x0]
	bl      Function_200a4e4
	ldr     r0, [r5, #0x4]
	bl      Function_200a6dc
	mov     r0, #0x52
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	ldr     r1, [r5, #0x0]
	bl      Function_2009d68
	mov     r0, #0x53
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	ldr     r1, [r5, #0x4]
	bl      Function_2009d68
	mov     r0, #0x15
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	ldr     r1, [r5, #0x8]
	bl      Function_2009d68
	mov     r0, #0x55
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	ldr     r1, [r5, #0xc]
	bl      Function_2009d68
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, #0x40
	blx     Call_FillMemWithValue
	pop     {r3-r5,pc}
@ 0x2263130

.thumb
Function_2263130: @ 2263130 :thumb
	mov     r2, r0
	mov     r1, #0x1
	add     r2, #0x38
	strb    r1, [r2, #0x0]
	mov     r2, r0
	mov     r3, #0x0
	add     r2, #0x3a
	strb    r3, [r2, #0x0]
	mov     r2, r0
	add     r2, #0x39
	strb    r3, [r2, #0x0]
	ldr     r3, [pc, #0x4] @ 0x226314c, (=0x2021cad)
	ldr     r0, [r0, #0x34]
	bx      r3
@ 0x226314c

.word 0x2021cad @ 0x226314c
.thumb
Function_2263150: @ 2263150 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r4, r0
	add     r0, #0x3a
	ldrb    r0, [r0, #0x0]
	mov     r5, r1
	cmp     r0, #0x3
	bhi     branch_2263260
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x226316c

Jumppoints_226316c:
.hword branch_2263174 - Jumppoints_226316c - 2
.hword branch_22631a6 - Jumppoints_226316c - 2
.hword branch_2263236 - Jumppoints_226316c - 2
.hword branch_2263248 - Jumppoints_226316c - 2
.thumb
branch_2263174: @ 2263174 :thumb
	ldr     r0, [r4, #0x34]
	mov     r1, #0x0
	bl      Function_2021e50
	ldr     r0, [pc, #0xf4] @ 0x2263274, (=0x8544)
	add     r0, r5, r0
	bl      Function_2264bac
	ldr     r0, [pc, #0xec] @ 0x2263274, (=0x8544)
	mov     r1, #0x80
	add     r0, r5, r0
	mov     r2, #0xb1
	bl      Function_2264bd8
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0x3b
	strb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x3a
	ldrb    r0, [r0, #0x0]
	add     r4, #0x3a
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x0]
	b       branch_2263260
@ 0x22631a6

.thumb
branch_22631a6: @ 22631a6 :thumb
	mov     r1, #0x2
	ldr     r0, [r4, #0x34]
	lsl     r1, r1, #12
	bl      Function_2021e2c
	ldr     r0, [r4, #0x34]
	bl      Function_2021e74
	mov     r6, r0
	cmp     r6, #0xa
	beq     branch_22631c2
	cmp     r6, #0xb
	beq     branch_22631f0
	b       branch_2263224
@ 0x22631c2

.thumb
branch_22631c2: @ 22631c2 :thumb
	mov     r0, r4
	add     r0, #0x3b
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2263224
	mov     r0, #0x40
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	mov     r1, #0x80
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, #0x60
	mov     r3, r1
	bl      Function_22613f8
	mov     r0, #0x65
	lsl     r0, r0, #4
	bl      Function_2005748
	mov     r0, #0x1
	add     r4, #0x3b
	strb    r0, [r4, #0x0]
	b       branch_2263224
@ 0x22631f0

.thumb
branch_22631f0: @ 22631f0 :thumb
	mov     r0, r4
	add     r0, #0x39
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x39
	strb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x39
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x2
	bcc     branch_2263210
	mov     r0, #0x3
	add     r4, #0x3a
	strb    r0, [r4, #0x0]
	b       branch_226321c
@ 0x2263210

.thumb
branch_2263210: @ 2263210 :thumb
	mov     r0, r4
	mov     r1, #0x2
	add     r0, #0x3a
	strb    r1, [r0, #0x0]
	mov     r0, #0x10
	str     r0, [r4, #0x3c]
.thumb
branch_226321c: @ 226321c :thumb
	ldr     r0, [pc, #0x54] @ 0x2263274, (=0x8544)
	add     r0, r5, r0
	bl      Function_2264bf8
.thumb
branch_2263224: @ 2263224 :thumb
	ldr     r2, [pc, #0x50] @ 0x2263278, (=0x2265b7c)
	lsl     r3, r6, #1
	ldr     r0, [pc, #0x48] @ 0x2263274, (=0x8544)
	ldsh    r2, [r2, r3]
	add     r0, r5, r0
	mov     r1, #0x80
	bl      Function_2264bd8
	b       branch_2263260
@ 0x2263236

.thumb
branch_2263236: @ 2263236 :thumb
	ldr     r0, [r4, #0x3c]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x3c]
	cmp     r0, #0x0
	bgt     branch_2263260
	mov     r0, #0x0
	add     r4, #0x3a
	strb    r0, [r4, #0x0]
	b       branch_2263260
@ 0x2263248

.thumb
branch_2263248: @ 2263248 :thumb
	mov     r0, r5
	bl      Function_22625c8
	cmp     r0, #0x0
	bne     branch_2263260
	ldr     r0, [r4, #0x34]
	mov     r1, #0x0
	bl      Function_2021cac
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2263260

.thumb
branch_2263260: @ 2263260 :thumb
	mov     r0, r5
	bl      Function_2262304
	mov     r0, r5
	bl      Function_2262524
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2263272

.align 2
.word 0x8544 @ 0x2263274
.word Unknown_2265b7c @ 0x2263278



.thumb
Function_226327c: @ 226327c :thumb
	mov     r3, r0
	mov     r2, #0x18
	mov     r1, #0x0
branch_2263282: @ 2263282 :thumb
	strb    r1, [r3, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2263282
	ldr     r1, [pc, #0x4] @ 0x2263290, (=0xffff)
	str     r1, [r0, #0x14]
	bx      lr
@ 0x2263290

.word 0xffff @ 0x2263290
.thumb
Function_2263294: @ 2263294 :thumb
	push    {r3,r4}
	lsl     r3, r2, #2
	str     r1, [r0, r3]
	mov     r3, #0x1
	ldr     r4, [r0, #0x10]
	lsl     r3, r2
	orr     r3, r4
	str     r3, [r0, #0x10]
	cmp     r1, #0x0
	beq     branch_22632c0
	ldr     r4, [r0, #0x14]
	ldr     r3, [pc, #0x18] @ 0x22632c4, (=0xffff)
	cmp     r4, r3
	beq     branch_22632be
	lsl     r3, r4, #2
	ldr     r3, [r0, r3]
	cmp     r3, r1
	bcs     branch_22632c0
	str     r2, [r0, #0x14]
	pop     {r3,r4}
	bx      lr
@ 0x22632be

.thumb
branch_22632be: @ 22632be :thumb
	str     r2, [r0, #0x14]
.thumb
branch_22632c0: @ 22632c0 :thumb
	pop     {r3,r4}
	bx      lr
@ 0x22632c4

.word 0xffff @ 0x22632c4
.thumb
Function_22632c8: @ 22632c8 :thumb
	mov     r1, #0x0
	str     r1, [r0, #0x10]
	ldr     r1, [pc, #0x4] @ 0x22632d4, (=0xffff)
	str     r1, [r0, #0x14]
	bx      lr
@ 0x22632d2


.align 2


.word 0xffff @ 0x22632d4
.thumb
Function_22632d8: @ 22632d8 :thumb
	ldr     r0, [r0, #0x14]
	bx      lr
@ 0x22632dc

.thumb
Function_22632dc: @ 22632dc :thumb
	push    {r4,r5}
	mov     r4, #0x0
	ldr     r5, [r0, #0x10]
	mov     r3, r4
	mov     r0, #0x1
.thumb
branch_22632e6: @ 22632e6 :thumb
	mov     r2, r0
	lsl     r2, r3
	tst     r2, r5
	beq     branch_22632f0
	.hword  0x1c64 @ add r4, r4, #0x1
.thumb
branch_22632f0: @ 22632f0 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	cmp     r3, #0x4
	blt     branch_22632e6
	cmp     r1, r4
	bhi     branch_2263300
	mov     r0, #0x1
	pop     {r4,r5}
	bx      lr
@ 0x2263300

.thumb
branch_2263300: @ 2263300 :thumb
	mov     r0, #0x0
	pop     {r4,r5}
	bx      lr
@ 0x2263306


.align 2, 0


.thumb
Function_2263308: @ 2263308 :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [pc, #0x14] @ 0x2263324, (=0x2265c7c)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_2263312: @ 2263312 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2263312
	add     r0, sp, #0x0
	bl      Function_201fe94
	add     sp, #0x28
	pop     {r4,pc}
@ 0x2263324

.word 0x2265c7c @ 0x2263324
.thumb
Function_2263328: @ 2263328 :thumb
	push    {r3,lr}
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff0c
	ldr     r0, [pc, #0x64] @ 0x2263398, (=0x4000008)
	mov     r1, #0x3
	ldrh    r2, [r0, #0x0]
	bic     r2, r1
	mov     r1, #0x2
	orr     r1, r2
	strh    r1, [r0, #0x0]
	add     r0, #0x58
	ldrh    r2, [r0, #0x0]
	ldr     r1, [pc, #0x54] @ 0x226339c, (=0xffffcffd)
	and     r2, r1
	strh    r2, [r0, #0x0]
	ldrh    r3, [r0, #0x0]
	add     r2, r1, #0x2
	and     r3, r2
	mov     r2, #0x10
	orr     r2, r3
	strh    r2, [r0, #0x0]
	ldrh    r3, [r0, #0x0]
	ldr     r2, [pc, #0x44] @ 0x22633a0, (=0xcffb)
	and     r2, r3
	strh    r2, [r0, #0x0]
	add     r2, r1, #0x2
	ldrh    r3, [r0, #0x0]
	.hword  0x1c89 @ add r1, r1, #0x2
	and     r3, r2
	mov     r2, #0x8
	orr     r2, r3
	strh    r2, [r0, #0x0]
	ldrh    r2, [r0, #0x0]
	and     r2, r1
	mov     r1, #0x20
	orr     r1, r2
	strh    r1, [r0, #0x0]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	blx     G3X_SetFog
	mov     r1, #0x0
	ldr     r0, [pc, #0x1c] @ 0x22633a4, (=0x6b5a)
	ldr     r2, [pc, #0x20] @ 0x22633a8, (=0x7fff)
	mov     r3, #0x3f
	str     r1, [sp, #0x0]
	blx     G3X_SetClearColor
	ldr     r1, [pc, #0x18] @ 0x22633ac, (=0xbfff0000)
	ldr     r0, [pc, #0x1c] @ 0x22633b0, (=0x4000580)
	str     r1, [r0, #0x0]
	pop     {r3,pc}
@ 0x2263398

.word 0x4000008 @ 0x2263398
.word 0xffffcffd @ 0x226339c
.word 0xcffb @ 0x22633a0
.word 0x6b5a @ 0x22633a4
.word 0x7fff @ 0x22633a8
.word 0xbfff0000 @ 0x22633ac
.word 0x4000580 @ 0x22633b0
.thumb
Function_22633b4: @ 22633b4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x28] @ 0x22633e8, (=0x2263329)
	mov     r6, r1
	mov     r7, r2
	mov     r4, r3
	mov     r1, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, #0x1
	mov     r3, r1
	bl      Function_2024220
	str     r0, [r5, #0x18]
	mov     r0, r5
	mov     r1, r6
	mov     r2, r7
	mov     r3, r4
	bl      Function_2263c24
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x22633e6


.align 2


.word 0x2263329 @ 0x22633e8
.thumb
Function_22633ec: @ 22633ec :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2263cc0
	ldr     r0, [r4, #0x18]
	bl      Function_20242c4
	pop     {r4,pc}
@ 0x22633fc

.thumb
Function_22633fc: @ 22633fc :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [pc, #0x128] @ 0x226352c, (=0x86cc)
	mov     r2, #0x20
	add     r0, r5, r0
	mov     r4, r1
	bl      Function_20182cc
	bl      Function_2263308
	ldr     r0, [pc, #0x11c] @ 0x2263530, (=0x1ab4)
	ldr     r1, [r5, #0x10]
	ldr     r2, [r5, #0x14]
	add     r0, r5, r0
	mov     r3, r4
	bl      Function_22633b4
	ldr     r0, [pc, #0x10c] @ 0x2263530, (=0x1ab4)
	mov     r1, r4
	add     r0, r5, r0
	bl      Function_226376c
	ldr     r0, [pc, #0x104] @ 0x2263530, (=0x1ab4)
	mov     r1, r4
	add     r0, r5, r0
	bl      Function_2263990
	ldr     r0, [pc, #0xf8] @ 0x2263530, (=0x1ab4)
	mov     r1, r4
	add     r0, r5, r0
	bl      Function_2263bcc
	mov     r0, #0x9e
	mov     r1, r4
	bl      LoadFromNARC_8
	mov     r6, r0
	ldr     r0, [pc, #0xe4] @ 0x2263530, (=0x1ab4)
	mov     r1, r6
	add     r0, r5, r0
	mov     r2, r4
	bl      Function_2263a74
	ldr     r0, [r5, #0x14]
	ldr     r1, [pc, #0xd8] @ 0x2263530, (=0x1ab4)
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xd0] @ 0x226352c, (=0x86cc)
	str     r4, [sp, #0x4]
	add     r0, r5, r0
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0xd0] @ 0x2263534, (=0x1c54)
	ldr     r3, [r5, #0x10]
	add     r0, r5, r0
	add     r1, r5, r1
	mov     r2, r6
	bl      Function_2264e48
	ldr     r0, [pc, #0xc4] @ 0x2263538, (=0x1f74)
	ldr     r3, [pc, #0xb8] @ 0x226352c, (=0x86cc)
	add     r0, r5, r0
	mov     r1, r6
	mov     r2, r4
	add     r3, r5, r3
	bl      Function_2263df8
	ldr     r0, [pc, #0xac] @ 0x2263530, (=0x1ab4)
	mov     r1, r6
	add     r0, r5, r0
	mov     r2, r4
	bl      Function_22643ec
	ldr     r0, [pc, #0xa0] @ 0x2263530, (=0x1ab4)
	ldr     r1, [pc, #0xac] @ 0x226353c, (=0x8544)
	ldr     r2, [r5, #0x14]
	add     r0, r5, r0
	add     r1, r5, r1
	mov     r3, r4
	bl      Function_2264b40
	ldr     r0, [pc, #0x90] @ 0x2263530, (=0x1ab4)
	ldr     r1, [pc, #0xa0] @ 0x2263540, (=0x854c)
	ldr     r2, [r5, #0x14]
	add     r0, r5, r0
	add     r1, r5, r1
	mov     r3, r4
	bl      Function_2264c0c
	ldr     r0, [pc, #0x80] @ 0x2263530, (=0x1ab4)
	ldr     r2, [r5, #0x14]
	add     r0, r5, r0
	mov     r1, r6
	mov     r3, r4
	bl      Function_2263cd8
	ldr     r0, [r5, #0x14]
	ldr     r1, [pc, #0x70] @ 0x2263530, (=0x1ab4)
	str     r0, [sp, #0x0]
	str     r6, [sp, #0x4]
	str     r4, [sp, #0x8]
	ldr     r2, [pc, #0x7c] @ 0x2263544, (=0x877c)
	ldr     r0, [pc, #0x80] @ 0x2263548, (=0x1f38)
	ldr     r2, [r5, r2]
	ldr     r3, [r5, #0x10]
	add     r0, r5, r0
	add     r1, r5, r1
	bl      Function_22617e8
	ldr     r0, [pc, #0x58] @ 0x2263530, (=0x1ab4)
	ldr     r1, [r5, #0x10]
	ldr     r2, [r5, #0x14]
	add     r0, r5, r0
	mov     r3, r4
	bl      Function_2261ac8
	str     r4, [sp, #0x0]
	ldr     r0, [pc, #0x64] @ 0x226354c, (=0x1e38)
	ldr     r1, [pc, #0x48] @ 0x2263530, (=0x1ab4)
	ldr     r2, [r5, #0x10]
	ldr     r3, [r5, #0x14]
	add     r0, r5, r0
	add     r1, r5, r1
	bl      Function_2261520
	ldr     r1, [r5, #0x14]
	ldr     r0, [pc, #0x58] @ 0x2263550, (=0x21a8)
	lsl     r1, r1, #24
	add     r0, r5, r0
	lsr     r1, r1, #24
	bl      Function_22652a4
	ldr     r0, [pc, #0x50] @ 0x2263554, (=0x862c)
	ldr     r1, [pc, #0x28] @ 0x2263530, (=0x1ab4)
	add     r0, r5, r0
	add     r1, r5, r1
	mov     r2, r6
	mov     r3, r4
	bl      Function_2265478
	mov     r0, r6
	bl      Call_FS_CloseFile
	ldr     r0, [pc, #0x3c] @ 0x2263558, (=0x1ad0)
	mov     r1, r4
	ldr     r0, [r5, r0]
	bl      0x225cad4
	ldr     r1, [pc, #0x38] @ 0x226355c, (=0x21a4)
	str     r0, [r5, r1]
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x226352a


.align 2


.word 0x86cc @ 0x226352c
.word 0x1ab4 @ 0x2263530
.word 0x1c54 @ 0x2263534
.word 0x1f74 @ 0x2263538
.word 0x8544 @ 0x226353c
.word 0x854c @ 0x2263540
.word 0x877c @ 0x2263544
.word 0x1f38 @ 0x2263548
.word 0x1e38 @ 0x226354c
.word 0x21a8 @ 0x2263550
.word 0x862c @ 0x2263554
.word 0x1ad0 @ 0x2263558
.word 0x21a4 @ 0x226355c
.thumb
Function_2263560: @ 2263560 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0xa8] @ 0x2263610, (=0x862c)
	ldr     r1, [pc, #0xac] @ 0x2263614, (=0x1ab4)
	add     r0, r4, r0
	add     r1, r4, r1
	bl      Function_2265688
	ldr     r0, [pc, #0xa4] @ 0x2263618, (=0x1e38)
	ldr     r1, [pc, #0xa0] @ 0x2263614, (=0x1ab4)
	add     r0, r4, r0
	add     r1, r4, r1
	bl      Function_2261574
	ldr     r0, [pc, #0x94] @ 0x2263614, (=0x1ab4)
	ldr     r1, [r4, #0x10]
	add     r0, r4, r0
	bl      Function_2261ad8
	ldr     r0, [pc, #0x94] @ 0x226361c, (=0x1f38)
	ldr     r1, [pc, #0x88] @ 0x2263614, (=0x1ab4)
	add     r0, r4, r0
	add     r1, r4, r1
	bl      Function_2261a04
	ldr     r0, [pc, #0x80] @ 0x2263614, (=0x1ab4)
	add     r0, r4, r0
	bl      Function_2263df4
	ldr     r0, [pc, #0x78] @ 0x2263614, (=0x1ab4)
	ldr     r1, [pc, #0x80] @ 0x2263620, (=0x854c)
	add     r0, r4, r0
	add     r1, r4, r1
	bl      Function_2264c78
	ldr     r0, [pc, #0x7c] @ 0x2263624, (=0x8544)
	add     r0, r4, r0
	bl      Function_2264ba0
	ldr     r0, [pc, #0x64] @ 0x2263614, (=0x1ab4)
	add     r0, r4, r0
	bl      Function_2264564
	ldr     r0, [pc, #0x70] @ 0x2263628, (=0x1f74)
	ldr     r1, [pc, #0x70] @ 0x226362c, (=0x86cc)
	add     r0, r4, r0
	add     r1, r4, r1
	bl      Function_2263ff4
	ldr     r0, [pc, #0x6c] @ 0x2263630, (=0x1c54)
	ldr     r1, [pc, #0x4c] @ 0x2263614, (=0x1ab4)
	ldr     r2, [pc, #0x64] @ 0x226362c, (=0x86cc)
	add     r0, r4, r0
	add     r1, r4, r1
	add     r2, r4, r2
	bl      Function_2264f68
	ldr     r0, [pc, #0x40] @ 0x2263614, (=0x1ab4)
	add     r0, r4, r0
	bl      Function_2263b78
	ldr     r0, [pc, #0x58] @ 0x2263634, (=0x21a4)
	ldr     r0, [r4, r0]
	bl      0x225cb38
	ldr     r0, [pc, #0x30] @ 0x2263614, (=0x1ab4)
	add     r0, r4, r0
	bl      Function_2263954
	ldr     r0, [pc, #0x28] @ 0x2263614, (=0x1ab4)
	add     r0, r4, r0
	bl      Function_2263a3c
	ldr     r0, [pc, #0x20] @ 0x2263614, (=0x1ab4)
	add     r0, r4, r0
	bl      Function_2263c04
	ldr     r0, [pc, #0x18] @ 0x2263614, (=0x1ab4)
	add     r0, r4, r0
	bl      Function_22633ec
	ldr     r0, [pc, #0x34] @ 0x2263638, (=0x4000050)
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	ldr     r0, [pc, #0x30] @ 0x226363c, (=0x4001050)
	strh    r1, [r0, #0x0]
	pop     {r4,pc}
@ 0x226360e


.align 2


.word 0x862c @ 0x2263610
.word 0x1ab4 @ 0x2263614
.word 0x1e38 @ 0x2263618
.word 0x1f38 @ 0x226361c
.word 0x854c @ 0x2263620
.word 0x8544 @ 0x2263624
.word 0x1f74 @ 0x2263628
.word 0x86cc @ 0x226362c
.word 0x1c54 @ 0x2263630
.word 0x21a4 @ 0x2263634
.word 0x4000050 @ 0x2263638
.word 0x4001050 @ 0x226363c
.thumb
Function_2263640: @ 2263640 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r0, #0x13
	ldr     r1, [pc, #0x40] @ 0x226368c, (=0x19cc)
	lsl     r0, r0, #6
	ldr     r2, [r5, #0x0]
	add     r0, r4, r0
	add     r1, r5, r1
	bl      Function_2264044
	mov     r0, #0x13
	ldr     r1, [pc, #0x30] @ 0x226368c, (=0x19cc)
	lsl     r0, r0, #6
	ldr     r2, [r5, #0x0]
	add     r0, r4, r0
	add     r1, r5, r1
	bl      Function_22640a4
	ldr     r0, [pc, #0x28] @ 0x2263690, (=0x6a90)
	add     r0, r4, r0
	bl      Function_2264bc0
	mov     r0, r5
	mov     r1, r4
	bl      Function_226369c
	ldr     r0, [pc, #0x1c] @ 0x2263694, (=0x6f4)
	mov     r1, r4
	add     r0, r4, r0
	bl      Function_22652c0
	ldr     r0, [pc, #0x14] @ 0x2263698, (=0x6b78)
	add     r0, r4, r0
	bl      Function_2265820
	pop     {r3-r5,pc}
@ 0x226368a


.align 2


.word 0x19cc @ 0x226368c
.word 0x6a90 @ 0x2263690
.word 0x6f4 @ 0x2263694
.word 0x6b78 @ 0x2263698
.thumb
Function_226369c: @ 226369c :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [pc, #0xb8] @ 0x226375c, (=0x6a98)
	mov     r4, r1
	add     r0, r4, r0
	bl      Function_2264c90
	mov     r0, #0xe1
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_2261598
	bl      Call_G3X_Reset
	mov     r0, r4
	bl      Function_2263cd0
	mov     r0, #0x0
	ldr     r2, [pc, #0x9c] @ 0x2263760, (=0xfffff000)
	mov     r1, r0
	mov     r3, r0
	blx     Function_20af51c
	ldr     r1, [pc, #0x94] @ 0x2263764, (=0x7fff)
	mov     r0, #0x0
	blx     Function_20af558
	ldr     r0, [pc, #0x8c] @ 0x2263764, (=0x7fff)
	mov     r2, #0x0
	mov     r1, r0
	blx     Function_20af56c
	ldr     r0, [pc, #0x84] @ 0x2263764, (=0x7fff)
	mov     r2, #0x0
	mov     r1, r0
	blx     Function_20af590
	mov     r1, #0x0
	mov     r0, #0x11
	mov     r2, r1
	blx     Function_20b275c
	mov     r0, #0x1a
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_2264fa0
	mov     r2, #0x1
	mov     r0, #0x12
	add     r1, sp, #0x8
	str     r2, [sp, #0x8]
	blx     Function_20b275c
	mov     r1, #0x0
	mov     r0, #0x11
	mov     r2, r1
	blx     Function_20b275c
	mov     r0, #0x13
	ldr     r1, [pc, #0x50] @ 0x2263768, (=0x19cc)
	lsl     r0, r0, #6
	add     r0, r4, r0
	add     r1, r5, r1
	bl      Function_2264134
	mov     r2, #0x1
	mov     r0, #0x12
	add     r1, sp, #0x4
	str     r2, [sp, #0x4]
	blx     Function_20b275c
	mov     r1, #0x0
	mov     r0, #0x11
	mov     r2, r1
	blx     Function_20b275c
	ldr     r1, [r5, #0x10]
	mov     r0, r4
	bl      Function_2264684
	mov     r2, #0x1
	mov     r0, #0x12
	add     r1, sp, #0x0
	str     r2, [sp, #0x0]
	blx     Function_20b275c
	mov     r0, #0x0
	mov     r1, r0
	bl      Function_20241bc
	ldr     r0, [r4, #0x1c]
	bl      Function_20219f8
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x226375c

.word 0x6a98 @ 0x226375c
.word 0xfffff000 @ 0x2263760
.word 0x7fff @ 0x2263764
.word 0x19cc @ 0x2263768
.thumb
Function_226376c: @ 226376c :thumb
	push    {r4-r6,lr}
	add     sp, #-0xc0
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	bl      Function_2018340
	add     r3, sp, #0xb0
	ldr     r6, [pc, #0x1b8] @ 0x2263938, (=0x2265b6c)
	str     r0, [r5, #0x0]
	mov     r2, r3
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      Function_2018368
	ldr     r6, [pc, #0x1a8] @ 0x226393c, (=0x2265b94)
	add     r3, sp, #0x94
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, #0x1
	str     r0, [r3, #0x0]
	ldr     r0, [r5, #0x0]
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x1
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, r4
	bl      Function_2019690
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	bl      Function_2019ebc
	ldr     r6, [pc, #0x178] @ 0x2263940, (=0x2265bb0)
	add     r3, sp, #0x78
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, #0x2
	str     r0, [r3, #0x0]
	ldr     r0, [r5, #0x0]
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x2
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, r4
	bl      Function_2019690
	ldr     r0, [r5, #0x0]
	mov     r1, #0x2
	bl      Function_2019ebc
	ldr     r6, [pc, #0x148] @ 0x2263944, (=0x2265bcc)
	add     r3, sp, #0x5c
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, #0x4
	str     r0, [r3, #0x0]
	ldr     r0, [r5, #0x0]
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x4
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, r4
	bl      Function_2019690
	ldr     r0, [r5, #0x0]
	mov     r1, #0x4
	bl      Function_2019ebc
	ldr     r6, [pc, #0x118] @ 0x2263948, (=0x2265be8)
	add     r3, sp, #0x40
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, #0x5
	str     r0, [r3, #0x0]
	ldr     r0, [r5, #0x0]
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x5
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, r4
	bl      Function_2019690
	ldr     r0, [r5, #0x0]
	mov     r1, #0x5
	bl      Function_2019ebc
	ldr     r6, [pc, #0xe8] @ 0x226394c, (=0x2265c04)
	add     r3, sp, #0x24
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, #0x6
	str     r0, [r3, #0x0]
	ldr     r0, [r5, #0x0]
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x6
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, r4
	bl      Function_2019690
	ldr     r0, [r5, #0x0]
	mov     r1, #0x6
	bl      Function_2019ebc
	ldr     r6, [pc, #0xb8] @ 0x2263950, (=0x2265c20)
	add     r3, sp, #0x8
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, #0x7
	str     r0, [r3, #0x0]
	ldr     r0, [r5, #0x0]
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x7
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, r4
	bl      Function_2019690
	ldr     r0, [r5, #0x0]
	mov     r1, #0x7
	bl      Function_2019ebc
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff0c
	mov     r0, #0x2
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x4
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x8
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff74
	mov     r0, #0x2
	mov     r1, #0x1
	bl      Function_201ff74
	mov     r0, #0x4
	mov     r1, #0x1
	bl      Function_201ff74
	mov     r0, #0x8
	mov     r1, #0x1
	bl      Function_201ff74
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff74
	mov     r0, #0x0
	mov     r1, #0xa0
	mov     r2, r4
	bl      Function_2002e98
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r4, [sp, #0x4]
	mov     r1, #0x1
	ldr     r0, [r5, #0x0]
	mov     r2, r1
	mov     r3, #0x4
	bl      Function_200daa4
	add     sp, #0xc0
	pop     {r4-r6,pc}
@ 0x2263938

.word Unknown_2265b6c @ 0x2263938
.word Unknown_2265b94 @ 0x226393c
.word Unknown_2265bb0 @ 0x2263940
.word Unknown_2265bcc @ 0x2263944
.word Unknown_2265be8 @ 0x2263948
.word Unknown_2265c04 @ 0x226394c
.word Unknown_2265c20 @ 0x2263950



.thumb
Function_2263954: @ 2263954 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_2019044
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	bl      Function_2019044
	ldr     r0, [r4, #0x0]
	mov     r1, #0x4
	bl      Function_2019044
	ldr     r0, [r4, #0x0]
	mov     r1, #0x5
	bl      Function_2019044
	ldr     r0, [r4, #0x0]
	mov     r1, #0x6
	bl      Function_2019044
	ldr     r0, [r4, #0x0]
	mov     r1, #0x7
	bl      Function_2019044
	ldr     r0, [r4, #0x0]
	bl      free
	pop     {r4,pc}
@ 0x2263990

.thumb
Function_2263990: @ 2263990 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r7, r0
	mov     r6, r1
	blx     Function_20a7944
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x7e
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r3, #0x1f
	str     r3, [sp, #0xc]
	mov     r2, r0
	str     r6, [sp, #0x10]
	bl      Function_200a784
	ldr     r4, [pc, #0x80] @ 0x2263a34, (=0x2265b5c)
	add     r3, sp, #0x14
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r1, [pc, #0x74] @ 0x2263a38, (=0x200010)
	mov     r0, r2
	mov     r2, r1
	str     r6, [sp, #0x20]
	bl      Function_201e88c
	mov     r0, #0x10
	mov     r1, r6
	bl      Function_201f834
	bl      Function_201e994
	bl      Function_201f8e4
	ldr     r1, [pc, #0x58] @ 0x2263a38, (=0x200010)
	mov     r0, #0x1
	bl      Function_200966c
	mov     r0, #0x1
	bl      Function_2009704
	mov     r1, r7
	mov     r0, #0x80
	add     r1, #0x20
	mov     r2, r6
	bl      Function_20095c4
	str     r0, [r7, #0x1c]
	mov     r0, r7
	mov     r2, #0x2
	add     r0, #0x20
	mov     r1, #0x0
	lsl     r2, r2, #20
	bl      Function_200964c
	mov     r4, #0x0
	mov     r5, r7
.thumb
branch_2263a0a: @ 2263a0a :thumb
	mov     r0, #0x10
	mov     r1, r4
	mov     r2, r6
	bl      Function_2009714
	mov     r1, #0x52
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_2263a0a
	mov     r0, #0x8
	mov     r1, r6
	bl      Function_2012744
	mov     r1, #0x63
	lsl     r1, r1, #2
	str     r0, [r7, r1]
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x2263a34

.word Unknown_2265b5c @ 0x2263a34
.word 0x200010 @ 0x2263a38



.thumb
Function_2263a3c: @ 2263a3c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, #0x63
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_20127bc
	ldr     r0, [r5, #0x1c]
	bl      Function_2021964
	mov     r6, #0x52
	mov     r4, #0x0
	lsl     r6, r6, #2
.thumb
branch_2263a56: @ 2263a56 :thumb
	ldr     r0, [r5, r6]
	bl      Function_2009754
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_2263a56
	bl      Function_201e958
	bl      Function_201f8b4
	bl      Function_200a878
	pop     {r4-r6,pc}
@ 0x2263a72


.align 2, 0


.thumb
Function_2263a74: @ 2263a74 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x2c
	mov     r4, r2
	mov     r2, #0xc8
	mov     r5, r0
	str     r2, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r4, [sp, #0x8]
	add     r2, #0x80
	ldr     r0, [r5, r2]
	mov     r2, #0x2
	mov     r3, #0x0
	mov     r6, r1
	bl      Function_2009a4c
	mov     r1, #0x5f
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r1, #0xc8
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	str     r4, [sp, #0xc]
	add     r1, #0x84
	ldr     r0, [r5, r1]
	mov     r1, r6
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2009b04
	mov     r1, #0x6
	lsl     r1, r1, #6
	str     r0, [r5, r1]
	mov     r1, #0xc8
	str     r1, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	str     r4, [sp, #0x8]
	add     r1, #0x88
	ldr     r0, [r5, r1]
	mov     r1, r6
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_2009bc4
	mov     r1, #0x61
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r1, #0xc8
	str     r1, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r2, #0x0
	str     r4, [sp, #0x8]
	add     r1, #0x8c
	ldr     r0, [r5, r1]
	mov     r1, r6
	mov     r3, r2
	bl      Function_2009bc4
	mov     r1, #0x62
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	sub     r1, #0xc
	ldr     r0, [r5, r1]
	bl      Function_200a450
	cmp     r0, #0x0
	bne     branch_2263b08
	bl      ErrorHandling
.thumb
branch_2263b08: @ 2263b08 :thumb
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	bl      Function_200a640
	cmp     r0, #0x0
	bne     branch_2263b1a
	bl      ErrorHandling
.thumb
branch_2263b1a: @ 2263b1a :thumb
	mov     r0, #0x5f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2009d4c
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	bl      Function_2009d4c
	mov     r1, #0xc8
	mov     r0, r1
	mov     r2, r1
	str     r1, [sp, #0x0]
	sub     r0, #0xc9
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	add     r2, #0x80
	ldr     r2, [r5, r2]
	mov     r3, r1
	str     r2, [sp, #0x14]
	mov     r2, r1
	add     r2, #0x84
	ldr     r2, [r5, r2]
	str     r2, [sp, #0x18]
	mov     r2, r1
	add     r2, #0x88
	ldr     r2, [r5, r2]
	str     r2, [sp, #0x1c]
	mov     r2, r1
	add     r2, #0x8c
	ldr     r2, [r5, r2]
	str     r2, [sp, #0x20]
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	mov     r0, r1
	add     r0, #0x90
	add     r0, r5, r0
	mov     r2, r1
	bl      Function_20093b4
	add     sp, #0x2c
	pop     {r3-r6,pc}
@ 0x2263b76


.align 2, 0


.thumb
Function_2263b78: @ 2263b78 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x5f
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_200a4e4
	mov     r0, #0x6
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	bl      Function_200a6dc
	mov     r1, #0x52
	lsl     r1, r1, #2
	ldr     r0, [r4, r1]
	add     r1, #0x34
	ldr     r1, [r4, r1]
	bl      Function_2009d68
	mov     r1, #0x53
	lsl     r1, r1, #2
	ldr     r0, [r4, r1]
	add     r1, #0x34
	ldr     r1, [r4, r1]
	bl      Function_2009d68
	mov     r1, #0x15
	lsl     r1, r1, #4
	ldr     r0, [r4, r1]
	add     r1, #0x34
	ldr     r1, [r4, r1]
	bl      Function_2009d68
	mov     r1, #0x55
	lsl     r1, r1, #2
	ldr     r0, [r4, r1]
	add     r1, #0x34
	ldr     r1, [r4, r1]
	bl      Function_2009d68
	pop     {r4,pc}
@ 0x2263bca


.align 2, 0


.thumb
Function_2263bcc: @ 2263bcc :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	bl      Function_200b358
	str     r0, [r5, #0x4]
	ldr     r2, [pc, #0x24] @ 0x2263c00, (=0x197)
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, r4
	bl      Function_200b144
	str     r0, [r5, #0x8]
	mov     r0, #0x80
	mov     r1, r4
	bl      Function_2023790
	str     r0, [r5, #0xc]
	mov     r0, #0x80
	mov     r1, r4
	bl      Function_2023790
	str     r0, [r5, #0x10]
	pop     {r3-r5,pc}
@ 0x2263bfe


.align 2


.word 0x197 @ 0x2263c00
.thumb
Function_2263c04: @ 2263c04 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x10]
	bl      Function_20237bc
	ldr     r0, [r4, #0xc]
	bl      Function_20237bc
	ldr     r0, [r4, #0x8]
	bl      Function_200b190
	ldr     r0, [r4, #0x4]
	bl      Function_200b3f0
	pop     {r4,pc}
@ 0x2263c22


.align 2, 0


.thumb
Function_2263c24: @ 2263c24 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x20
	mov     r5, r0
	mov     r0, r3
	mov     r4, r1
	mov     r6, r2
	bl      Function_20203ac
	mov     r1, #0x19
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r0, #0x0
	add     r2, r1, #0x4
	str     r0, [r5, r2]
	mov     r2, r1
	add     r2, #0x8
	str     r0, [r5, r2]
	mov     r2, r1
	add     r2, #0xc
	str     r0, [r5, r2]
	ldr     r3, [pc, #0x60] @ 0x2263cb0, (=0xf112)
	add     r2, sp, #0xc
	strh    r3, [r2, #0x0]
	ldr     r3, [pc, #0x60] @ 0x2263cb4, (=0x2265c54)
	lsl     r4, r4, #3
	lsl     r6, r6, #1
	add     r3, r3, r4
	ldrh    r3, [r6, r3]
	strh    r3, [r2, #0x2]
	strh    r0, [r2, #0x4]
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r5, r1]
	ldr     r3, [pc, #0x4c] @ 0x2263cb8, (=0xfa4)
	str     r0, [sp, #0x8]
	add     r0, r1, #0x4
	ldr     r1, [pc, #0x4c] @ 0x2263cbc, (=0x1d9000)
	add     r0, r5, r0
	add     r2, sp, #0xc
	bl      Function_20206d0
	mov     r1, #0x0
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r0, [sp, #0x18]
	str     r1, [sp, #0x14]
	str     r1, [sp, #0x1c]
	mov     r1, #0x19
	lsl     r1, r1, #4
	ldr     r1, [r5, r1]
	add     r0, sp, #0x14
	bl      Function_2020680
	mov     r0, #0x19
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      Function_20203d4
	mov     r0, #0x32
	lsl     r0, r0, #14
	lsr     r2, r0, #11
	mov     r1, #0xfa
	ldr     r2, [r5, r2]
	lsl     r1, r1, #14
	bl      Function_20206bc
	add     sp, #0x20
	pop     {r4-r6,pc}
@ 0x2263cae


.align 2


.word 0xf112 @ 0x2263cb0
.word 0x2265c54 @ 0x2263cb4
.word 0xfa4 @ 0x2263cb8
.word 0x1d9000 @ 0x2263cbc
.thumb
Function_2263cc0: @ 2263cc0 :thumb
	mov     r1, #0x19
	lsl     r1, r1, #4
	ldr     r3, [pc, #0x4] @ 0x2263ccc, (=0x20203b9)
	ldr     r0, [r0, r1]
	bx      r3
@ 0x2263cca


.align 2


.word 0x20203b9 @ 0x2263ccc
.thumb
Function_2263cd0: @ 2263cd0 :thumb
	ldr     r3, [pc, #0x0] @ 0x2263cd4, (=0x20203ed)
	bx      r3
@ 0x2263cd4

.word 0x20203ed @ 0x2263cd4
.thumb
Function_2263cd8: @ 2263cd8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r4, r3
	str     r0, [sp, #0x8]
	mov     r6, r1
	str     r4, [sp, #0xc]
	mov     r7, r2
	ldr     r2, [r5, #0x0]
	mov     r0, r6
	mov     r1, #0xc
	mov     r3, #0x4
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r4, [sp, #0xc]
	ldr     r2, [r5, #0x0]
	mov     r0, r6
	mov     r1, #0xe
	mov     r3, #0x7
	bl      Function_200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r4, [sp, #0xc]
	ldr     r2, [r5, #0x0]
	mov     r0, r6
	mov     r1, #0xf
	mov     r3, #0x6
	bl      Function_200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r4, [sp, #0xc]
	ldr     r2, [r5, #0x0]
	mov     r0, r6
	mov     r1, #0x10
	mov     r3, #0x5
	bl      Function_200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r4, [sp, #0xc]
	ldr     r2, [r5, #0x0]
	mov     r0, r6
	mov     r1, #0x11
	mov     r3, #0x4
	bl      Function_200710c
	mov     r0, #0x6
	lsl     r0, r0, #6
	str     r0, [sp, #0x0]
	mov     r0, r6
	mov     r1, #0xd
	mov     r2, #0x4
	mov     r3, #0x0
	str     r4, [sp, #0x4]
	bl      Function_2007130
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x80] @ 0x2263df0, (=0x2265ae4)
	mov     r2, #0x0
	ldrb    r0, [r0, r7]
	mov     r1, #0x7
	mov     r3, r2
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x0]
	bl      Function_2019e2c
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	lsl     r4, r7, #1
	str     r0, [sp, #0x4]
	add     r0, r4, #0x2
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	mov     r2, #0x0
	ldr     r0, [r5, #0x0]
	mov     r1, #0x6
	mov     r3, r2
	bl      Function_2019e2c
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r2, #0x0
	.hword  0x1c64 @ add r4, r4, #0x1
	str     r0, [sp, #0x4]
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x0]
	mov     r1, #0x5
	mov     r3, r2
	bl      Function_2019e2c
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	mov     r2, #0x0
	ldr     r0, [r5, #0x0]
	mov     r1, #0x4
	mov     r3, r2
	bl      Function_2019e2c
	ldr     r0, [r5, #0x0]
	mov     r1, #0x4
	bl      Function_2019448
	ldr     r0, [r5, #0x0]
	mov     r1, #0x5
	bl      Function_2019448
	ldr     r0, [r5, #0x0]
	mov     r1, #0x6
	bl      Function_2019448
	ldr     r0, [r5, #0x0]
	mov     r1, #0x7
	bl      Function_2019448
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2263df0

.word Unknown_2265ae4 @ 0x2263df0



.thumb
Function_2263df4: @ 2263df4 :thumb
	bx      lr
@ 0x2263df6


.align 2, 0
.thumb
Function_2263df8: @ 2263df8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x2c
	str     r2, [sp, #0x10]
	mov     r2, #0x23
	str     r1, [sp, #0xc]
	mov     r1, #0x0
	lsl     r2, r2, #4
	str     r0, [sp, #0x8]
	str     r3, [sp, #0x14]
	blx     Call_FillMemWithValue
	mov     r1, #0x5a
	ldr     r0, [sp, #0x8]
	lsl     r1, r1, #2
	ldr     r6, [pc, #0x1c4] @ 0x2263fdc, (=0x2265afc)
	mov     r7, #0x0
	add     r4, r0, r1
	mov     r5, r0
.thumb
branch_2263e1c: @ 2263e1c :thumb
	ldrh    r2, [r6, #0x0]
	ldr     r1, [sp, #0xc]
	ldr     r3, [sp, #0x10]
	mov     r0, r4
	bl      Function_20170d8
	mov     r0, r5
	mov     r1, r4
	bl      Function_2017258
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2017348
	mov     r1, #0x0
	ldr     r2, [pc, #0x1a4] @ 0x2263fe0, (=0xffede000)
	mov     r0, r5
	mov     r3, r1
	bl      Function_2017350
	mov     r1, #0x6
	lsl     r1, r1, #10
	mov     r0, r5
	mov     r2, r1
	mov     r3, r1
	bl      Function_201736c
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1cb6 @ add r6, r6, #0x2
	add     r4, #0x10
	add     r5, #0x78
	cmp     r7, #0x3
	blt     branch_2263e1c
	mov     r0, #0x0
	str     r0, [sp, #0x18]
	ldr     r0, [pc, #0x180] @ 0x2263fe4, (=0x2265b14)
	mov     r1, #0x66
	str     r0, [sp, #0x28]
	ldr     r0, [pc, #0x17c] @ 0x2263fe8, (=0x2266644)
	lsl     r1, r1, #2
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x8]
	ldr     r6, [sp, #0x8]
	add     r0, r0, r1
	str     r0, [sp, #0x20]
	ldr     r0, [pc, #0x174] @ 0x2263fec, (=0x22660a4)
	str     r0, [sp, #0x1c]
.thumb
branch_2263e7a: @ 2263e7a :thumb
	ldr     r0, [sp, #0x10]
	mov     r2, #0x5a
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x14]
	ldr     r1, [sp, #0x8]
	lsl     r2, r2, #2
	add     r2, r1, r2
	str     r0, [sp, #0x4]
	ldr     r1, [sp, #0x24]
	ldr     r3, [sp, #0x28]
	ldrb    r1, [r1, #0x0]
	ldrh    r3, [r3, #0x0]
	ldr     r0, [sp, #0x20]
	lsl     r1, r1, #4
	add     r1, r2, r1
	ldr     r2, [sp, #0xc]
	bl      Function_2017164
	ldr     r0, [sp, #0x20]
	mov     r1, #0x0
	bl      Function_2017240
	ldr     r0, [sp, #0x24]
	mov     r5, #0x0
	ldrb    r0, [r0, #0x0]
	lsl     r1, r0, #4
	ldr     r0, [sp, #0x8]
	add     r1, r0, r1
	mov     r0, #0x17
	lsl     r0, r0, #4
	ldr     r4, [r1, r0]
	cmp     r4, #0x0
	beq     branch_2263ec0
	add     r4, #0x40
	b       branch_2263ec2
@ 0x2263ec0

.thumb
branch_2263ec0: @ 2263ec0 :thumb
	mov     r4, r5
.thumb
branch_2263ec2: @ 2263ec2 :thumb
	cmp     r4, #0x0
	bne     branch_2263eca
	mov     r7, #0x1
	b       branch_2263edc
@ 0x2263eca

.thumb
branch_2263eca: @ 2263eca :thumb
	mov     r7, #0x0
	b       branch_2263edc
@ 0x2263ece

.thumb
branch_2263ece: @ 2263ece :thumb
	mov     r0, #0x1a
	lsl     r0, r0, #4
	ldr     r0, [r6, r0]
	mov     r1, r5
	blx     Function_20ae5cc
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_2263edc: @ 2263edc :thumb
	cmp     r7, #0x0
	bne     branch_2263efc
	cmp     r4, #0x0
	beq     branch_2263ef8
	ldrb    r0, [r4, #0x1]
	cmp     r5, r0
	bcs     branch_2263ef8
	ldrh    r0, [r4, #0x6]
	add     r1, r4, r0
	ldrh    r0, [r1, #0x2]
	add     r1, r1, r0
	lsl     r0, r5, #4
	add     r0, r1, r0
	b       branch_2263efe
@ 0x2263ef8

.thumb
branch_2263ef8: @ 2263ef8 :thumb
	mov     r0, #0x0
	b       branch_2263efe
@ 0x2263efc

.thumb
branch_2263efc: @ 2263efc :thumb
	mov     r0, #0x0
.thumb
branch_2263efe: @ 2263efe :thumb
	cmp     r0, #0x0
	bne     branch_2263ece
	ldr     r5, [sp, #0x1c]
	mov     r7, #0x0
.thumb
branch_2263f06: @ 2263f06 :thumb
	cmp     r4, #0x0
	beq     branch_2263f16
	mov     r0, r4
	mov     r1, r5
	blx     Function_20b3aa4
	mov     r1, r0
	b       branch_2263f1a
@ 0x2263f16

.thumb
branch_2263f16: @ 2263f16 :thumb
	mov     r1, #0x0
	mvn     r1, r1
.thumb
branch_2263f1a: @ 2263f1a :thumb
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r1, r0
	beq     branch_2263f2c
	mov     r0, #0x1a
	lsl     r0, r0, #4
	ldr     r0, [r6, r0]
	blx     Function_20ae590
.thumb
branch_2263f2c: @ 2263f2c :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r5, #0x10
	cmp     r7, #0xf
	blt     branch_2263f06
	ldr     r0, [sp, #0x28]
	add     r6, #0x14
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [sp, #0x28]
	ldr     r0, [sp, #0x24]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x20]
	add     r0, #0x14
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x1c]
	add     r0, #0xf0
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x18]
	cmp     r0, #0x6
	blt     branch_2263e7a
	ldr     r0, [pc, #0x94] @ 0x2263ff0, (=Unknown_2265ae0)
	mov     r4, #0x85
	ldrb    r5, [r0, #0x0]
	ldr     r0, [sp, #0x10]
	lsl     r4, r4, #2
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x14]
	mov     r2, r4
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x8]
	sub     r2, #0xac
	add     r2, r1, r2
	lsl     r1, r5, #4
	add     r1, r2, r1
	ldr     r2, [sp, #0xc]
	add     r0, r0, r4
	mov     r3, #0x20
	bl      Function_2017164
	mov     r0, #0x78
	mov     r1, r5
	mul     r1, r0
	ldr     r0, [sp, #0x8]
	add     r0, r0, r1
	ldr     r1, [sp, #0x8]
	add     r1, r1, r4
	bl      Function_201727c
	mov     r2, r4
	ldr     r0, [sp, #0x8]
	mov     r1, #0x4
	add     r2, #0x18
	strh    r1, [r0, r2]
	mov     r1, #0x0
	.hword  0x1c92 @ add r2, r2, #0x2
	strh    r1, [r0, r2]
	bl      Function_226422c
	ldr     r0, [sp, #0x8]
	mov     r2, r4
	ldr     r1, [sp, #0x8]
	sub     r2, #0x2c
	add     r0, #0x78
	add     r1, r1, r2
	bl      Function_201727c
	mov     r1, r4
	ldr     r0, [sp, #0x8]
	sub     r1, #0x2c
	add     r0, r0, r1
	mov     r1, #0x0
	bl      Function_2017240
	ldr     r0, [sp, #0x8]
	mov     r1, #0x1
	add     r0, #0x78
	bl      Function_2017348
	ldr     r0, [sp, #0x8]
	mov     r2, #0x4
	sub     r1, r4, #0x4
	strh    r2, [r0, r1]
	add     sp, #0x2c
	pop     {r4-r7,pc}
@ 0x2263fda

.align 2
.word Unknown_2265afc @ 0x2263fdc
.word 0xffede000 @ 0x2263fe0
.word Unknown_2265b14 @ 0x2263fe4
.word 0x2266644 @ 0x2263fe8
.word 0x22660a4 @ 0x2263fec
.word Unknown_2265ae0 @ 0x2263ff0



.thumb
Function_2263ff4: @ 2263ff4 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r0, #0x5a
	lsl     r0, r0, #2
	mov     r6, r1
	mov     r4, #0x0
	add     r5, r7, r0
.thumb
branch_2264002: @ 2264002 :thumb
	mov     r0, r5
	bl      Function_2017110
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x3
	blt     branch_2264002
	mov     r0, #0x66
	lsl     r0, r0, #2
	mov     r5, #0x0
	add     r4, r7, r0
.thumb
branch_2264018: @ 2264018 :thumb
	mov     r0, r4
	mov     r1, r6
	bl      Function_20171a0
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r4, #0x14
	cmp     r5, #0x6
	blt     branch_2264018
	mov     r0, #0x85
	lsl     r0, r0, #2
	add     r0, r7, r0
	mov     r1, r6
	bl      Function_20171a0
	mov     r2, #0x23
	mov     r0, r7
	mov     r1, #0x0
	lsl     r2, r2, #4
	blx     Call_FillMemWithValue
	pop     {r3-r7,pc}
@ 0x2264042


.align 2, 0


.thumb
Function_2264044: @ 2264044 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r4, r2
	bl      Function_22640c0
	mov     r0, r5
	mov     r1, r6
	bl      Function_22640ec
	mov     r0, r5
	mov     r1, r6
	bl      Function_2264110
	cmp     r4, #0x0
	beq     branch_226406c
	cmp     r4, #0x1
	beq     branch_2264086
	cmp     r4, #0x2
	bne     branch_22640a0
.thumb
branch_226406c: @ 226406c :thumb
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2264190
	ldrh    r1, [r6, #0x4]
	mov     r0, r5
	bl      Function_226414c
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_226422c
	pop     {r4-r6,pc}
@ 0x2264086

.thumb
branch_2264086: @ 2264086 :thumb
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_2264190
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_226422c
	mov     r1, #0x1
	mov     r0, r5
	lsl     r1, r1, #12
	bl      Function_2264214
.thumb
branch_22640a0: @ 22640a0 :thumb
	pop     {r4-r6,pc}
@ 0x22640a2


.align 2, 0


.thumb
Function_22640a4: @ 22640a4 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x66
	lsl     r0, r0, #2
	mov     r1, #0x1
	add     r0, r4, r0
	lsl     r1, r1, #12
	bl      Function_20171cc
	mov     r0, r4
	bl      Function_2264270
	pop     {r4,pc}
@ 0x22640be


.align 2, 0


.thumb
Function_22640c0: @ 22640c0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, #0x0
.thumb
branch_22640c8: @ 22640c8 :thumb
	mov     r1, r4
	mov     r2, r4
	mov     r3, r4
	add     r1, #0xd8
	add     r2, #0xdc
	add     r3, #0xe0
	ldr     r1, [r1, #0x0]
	ldr     r2, [r2, #0x0]
	ldr     r3, [r3, #0x0]
	mov     r0, r5
	bl      Function_2017350
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x78
	cmp     r6, #0x3
	blt     branch_22640c8
	pop     {r4-r6,pc}
@ 0x22640ea


.align 2, 0


.thumb
Function_22640ec: @ 22640ec :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldrh    r0, [r1, #0x2]
	mov     r4, #0x0
	mov     r7, #0x1
	lsl     r0, r0, #16
	lsr     r6, r0, #16
.thumb
branch_22640fa: @ 22640fa :thumb
	mov     r0, r5
	mov     r1, r6
	mov     r2, r7
	bl      Function_2017388
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x78
	cmp     r4, #0x3
	blt     branch_22640fa
	pop     {r3-r7,pc}
@ 0x226410e


.align 2, 0


.thumb
Function_2264110: @ 2264110 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r4, #0x0
.thumb
branch_2264118: @ 2264118 :thumb
	mov     r0, r6
	add     r0, #0xd4
	ldr     r1, [r0, #0x0]
	mov     r0, r5
	mov     r2, r1
	mov     r3, r1
	bl      Function_201736c
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x78
	cmp     r4, #0x3
	blt     branch_2264118
	pop     {r4-r6,pc}
@ 0x2264132


.align 2, 0


.thumb
Function_2264134: @ 2264134 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_226413a: @ 226413a :thumb
	mov     r0, r5
	bl      Function_2017294
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x78
	cmp     r4, #0x3
	blt     branch_226413a
	pop     {r3-r5,pc}
@ 0x226414a


.align 2, 0


.thumb
Function_226414c: @ 226414c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x34] @ 0x2264188, (=0xf222)
	mov     r4, r1
	bl      Function_201d2a4
	mov     r1, r0
	ldr     r0, [pc, #0x30] @ 0x226418c, (=0xe38)
	sub     r2, r4, r0
	mov     r0, #0x5a
	mul     r0, r2
	blx     _u32_div_f
	mov     r1, #0x2d
	lsl     r1, r1, #14
	mul     r1, r0
	mov     r0, r1
	mov     r1, #0x5a
	blx     _s32_div_f
	mov     r1, #0x2d
	lsl     r1, r1, #14
	sub     r1, r1, r0
	mov     r0, #0x6b
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_2017240
	pop     {r3-r5,pc}
@ 0x2264186


.align 2


.word 0xf222 @ 0x2264188
.word 0xe38 @ 0x226418c
.thumb
Function_2264190: @ 2264190 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x6
	bcc     branch_226419e
	bl      ErrorHandling
.thumb
branch_226419e: @ 226419e :thumb
	mov     r2, #0x21
	lsl     r2, r2, #4
	ldrh    r1, [r5, r2]
	cmp     r1, r4
	beq     branch_226420c
	ldr     r0, [pc, #0x64] @ 0x2264210, (=0x2266644)
	sub     r2, #0x78
	ldrb    r3, [r0, r1]
	mov     r0, #0x78
	mul     r0, r3
	add     r3, r5, r2
	mov     r2, #0x14
	mul     r2, r1
	add     r0, r5, r0
	add     r1, r3, r2
	bl      Function_2017288
	mov     r0, #0x66
	lsl     r0, r0, #2
	add     r6, r5, r0
	mov     r0, #0x14
	mov     r7, r4
	mul     r7, r0
	ldr     r0, [pc, #0x40] @ 0x2264210, (=0x2266644)
	ldrb    r1, [r0, r4]
	mov     r0, #0x78
	mul     r0, r1
	str     r0, [sp, #0x0]
	add     r0, r5, r0
	add     r1, r6, r7
	bl      Function_201727c
	add     r0, r6, r7
	mov     r1, #0x0
	bl      Function_2017240
	mov     r0, #0x21
	lsl     r0, r0, #4
	ldrh    r1, [r5, r0]
	ldr     r0, [pc, #0x20] @ 0x2264210, (=0x2266644)
	ldrb    r1, [r0, r1]
	mov     r0, #0x78
	mul     r0, r1
	add     r0, r5, r0
	mov     r1, #0x0
	bl      Function_2017348
	ldr     r0, [sp, #0x0]
	mov     r1, #0x1
	add     r0, r5, r0
	bl      Function_2017348
	mov     r0, #0x21
	lsl     r0, r0, #4
	strh    r4, [r5, r0]
.thumb
branch_226420c: @ 226420c :thumb
	pop     {r3-r7,pc}
@ 0x226420e


.align 2


.word 0x2266644 @ 0x2264210
.thumb
Function_2264214: @ 2264214 :thumb
	mov     r2, #0x66
	lsl     r2, r2, #2
	add     r3, r0, r2
	add     r2, #0x78
	ldrh    r2, [r0, r2]
	mov     r0, #0x14
	mul     r0, r2
	add     r0, r3, r0
	ldr     r3, [pc, #0x0] @ 0x2264228, (=0x2017205)
	bx      r3
@ 0x2264228

.word 0x2017205 @ 0x2264228
.thumb
Function_226422c: @ 226422c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r1, [pc, #0x24] @ 0x2264258, (=0x212)
	mov     r5, r0
	ldrh    r2, [r5, r1]
	cmp     r2, r4
	beq     branch_2264254
	cmp     r4, #0x1
	bne     branch_2264248
	sub     r1, #0x7a
	add     r1, r5, r1
	bl      Function_201727c
	b       branch_2264250
@ 0x2264248

.thumb
branch_2264248: @ 2264248 :thumb
	sub     r1, #0x7a
	add     r1, r5, r1
	bl      Function_2017288
.thumb
branch_2264250: @ 2264250 :thumb
	ldr     r0, [pc, #0x4] @ 0x2264258, (=0x212)
	strh    r4, [r5, r0]
.thumb
branch_2264254: @ 2264254 :thumb
	pop     {r3-r5,pc}
@ 0x2264256


.align 2


.word 0x212 @ 0x2264258
.thumb
Function_226425c: @ 226425c :thumb
	ldr     r2, [pc, #0x4] @ 0x2264264, (=0x22e)
	strh    r1, [r0, r2]
	bx      lr
@ 0x2264262


.align 2


.word 0x22e @ 0x2264264
.thumb
Function_2264268: @ 2264268 :thumb
	mov     r2, #0x8b
	lsl     r2, r2, #2
	strh    r1, [r0, r2]
	bx      lr
@ 0x2264270

.thumb
Function_2264270: @ 2264270 :thumb
	push    {r3-r5,lr}
	ldr     r2, [pc, #0x78] @ 0x22642ec, (=0x22e)
	mov     r3, r0
	ldrh    r0, [r3, r2]
	cmp     r0, #0x1
	bne     branch_22642a2
	.hword  0x1f90 @ sub r0, r2, #0x6
	mov     r1, #0x2
	ldr     r0, [r3, r0]
	lsl     r1, r1, #12
	add     r4, r0, r1
	mov     r0, #0xa
	lsl     r0, r0, #14
	cmp     r4, r0
	bge     branch_226429a
	.hword  0x1f90 @ sub r0, r2, #0x6
	ldr     r0, [r3, r0]
	add     r1, r0, r1
	.hword  0x1f90 @ sub r0, r2, #0x6
	str     r1, [r3, r0]
	b       branch_22642dc
@ 0x226429a

.thumb
branch_226429a: @ 226429a :thumb
	lsr     r1, r1, #1
	.hword  0x1f90 @ sub r0, r2, #0x6
	str     r1, [r3, r0]
	b       branch_22642dc
@ 0x22642a2

.thumb
branch_22642a2: @ 22642a2 :thumb
	.hword  0x1e90 @ sub r0, r2, #0x2
	ldrh    r0, [r3, r0]
	cmp     r0, #0x4
	bne     branch_22642ae
	mov     r0, #0x0
	b       branch_22642b0
@ 0x22642ae

.thumb
branch_22642ae: @ 22642ae :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
.thumb
branch_22642b0: @ 22642b0 :thumb
	lsl     r2, r0, #1
	ldr     r0, [pc, #0x3c] @ 0x22642f0, (=0x2265b0a)
	mov     r4, #0x8a
	ldrb    r0, [r0, r2]
	lsl     r4, r4, #2
	ldr     r5, [r3, r4]
	lsl     r1, r0, #12
	cmp     r5, r1
	bge     branch_22642c6
	str     r1, [r3, r4]
	b       branch_22642dc
@ 0x22642c6

.thumb
branch_22642c6: @ 22642c6 :thumb
	mov     r0, #0x2
	lsl     r0, r0, #12
	add     r0, r5, r0
	ldr     r5, [pc, #0x24] @ 0x22642f4, (=0x2265b0b)
	ldrb    r2, [r5, r2]
	lsl     r2, r2, #12
	cmp     r0, r2
	bge     branch_22642da
	str     r0, [r3, r4]
	b       branch_22642dc
@ 0x22642da

.thumb
branch_22642da: @ 22642da :thumb
	str     r1, [r3, r4]
.thumb
branch_22642dc: @ 22642dc :thumb
	mov     r1, #0x85
	lsl     r1, r1, #2
	add     r0, r3, r1
	add     r1, #0x14
	ldr     r1, [r3, r1]
	bl      Function_2017240
	pop     {r3-r5,pc}
@ 0x22642ec

.word 0x22e @ 0x22642ec
.word Unknown_2265b0a @ 0x22642f0
.word Unknown_2265b0b @ 0x22642f4



.thumb
Function_22642f8: @ 22642f8 :thumb
	push    {r3,r4}
	mov     r3, #0xff
	sub     r0, r3, r0
	mov     r3, #0x96
	lsl     r3, r3, #4
	mov     r4, r0
	mul     r4, r3
	lsl     r0, r3, #7
	sub     r0, r4, r0
	mov     r4, r1
	str     r0, [r2, #0x0]
	mul     r4, r3
	lsl     r0, r3, #7
	sub     r1, r4, r0
	ldr     r0, [pc, #0x8] @ 0x2264320, (=0xffed4000)
	sub     r0, r0, r1
	str     r0, [r2, #0x8]
	pop     {r3,r4}
	bx      lr
@ 0x226431e


.align 2


.word 0xffed4000 @ 0x2264320
.thumb
Function_2264324: @ 2264324 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r1, #0x4b
	ldr     r0, [r5, #0x0]
	lsl     r1, r1, #12
	add     r0, r0, r1
	lsr     r1, r1, #7
	blx     _s32_div_f
	mov     r1, #0xff
	sub     r0, r1, r0
	strh    r0, [r4, #0x0]
	ldr     r1, [r5, #0x8]
	ldr     r0, [pc, #0xc] @ 0x2264350, (=0xfff1f000)
	sub     r0, r0, r1
	mov     r1, #0x96
	lsl     r1, r1, #4
	blx     _s32_div_f
	strh    r0, [r4, #0x2]
	pop     {r3-r5,pc}
@ 0x2264350

.word 0xfff1f000 @ 0x2264350
.thumb
Function_2264354: @ 2264354 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r6, r0
	add     r0, sp, #0x0
	mov     r7, r1
	mov     r5, r2
	mov     r4, r3
	blx     MTX_Identity33_
	ldr     r0, [pc, #0x2c] @ 0x2264394, (=0x2265c34)
	lsl     r2, r4, #3
	lsl     r1, r5, #1
	add     r0, r0, r2
	ldrh    r0, [r1, r0]
	ldr     r3, [pc, #0x24] @ 0x2264398, (=0x20f983c)
	asr     r0, r0, #4
	lsl     r2, r0, #1
	lsl     r1, r2, #1
	.hword  0x1c52 @ add r2, r2, #0x1
	lsl     r2, r2, #1
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	add     r0, sp, #0x0
	bl      MTX_RotY33_
	mov     r0, r6
	add     r1, sp, #0x0
	mov     r2, r7
	blx     MTX_MultVec33
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x2264394

.word 0x2265c34 @ 0x2264394
.word 0x20f983c @ 0x2264398
.thumb
Function_226439c: @ 226439c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r6, r0
	add     r0, sp, #0x0
	mov     r7, r1
	mov     r5, r2
	mov     r4, r3
	blx     MTX_Identity33_
	ldr     r0, [pc, #0x34] @ 0x22643e4, (=0x2265c34)
	lsl     r2, r4, #3
	lsl     r1, r5, #1
	add     r0, r0, r2
	ldrh    r0, [r1, r0]
	ldr     r3, [pc, #0x2c] @ 0x22643e8, (=0x20f983c)
	asr     r0, r0, #4
	lsl     r2, r0, #1
	lsl     r1, r2, #1
	.hword  0x1c52 @ add r2, r2, #0x1
	lsl     r2, r2, #1
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	add     r0, sp, #0x0
	bl      MTX_RotY33_
	add     r0, sp, #0x0
	mov     r1, r0
	blx     MTX_Inverse33
	mov     r0, r6
	add     r1, sp, #0x0
	mov     r2, r7
	blx     MTX_MultVec33
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x22643e4

.word 0x2265c34 @ 0x22643e4
.word 0x20f983c @ 0x22643e8
.thumb
Function_22643ec: @ 22643ec :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x30]
	ldr     r0, [pc, #0x14c] @ 0x2264544, (=0x6fc)
	ldr     r4, [pc, #0x14c] @ 0x2264548, (=0x2265ae8)
	str     r1, [sp, #0x2c]
	mov     r7, r2
	add     r6, r5, r0
.thumb
branch_2264400: @ 2264400 :thumb
	ldrb    r2, [r4, #0x0]
	ldr     r1, [sp, #0x2c]
	mov     r0, r6
	mov     r3, r7
	bl      Function_20170d8
	ldr     r0, [sp, #0x30]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r6, #0x10
	str     r0, [sp, #0x30]
	cmp     r0, #0x5
	blt     branch_2264400
	ldr     r0, [pc, #0x130] @ 0x226454c, (=0x74c)
	ldr     r1, [sp, #0x2c]
	add     r0, r5, r0
	mov     r2, #0x2e
	mov     r3, r7
	bl      Function_20170d8
	ldr     r0, [pc, #0x124] @ 0x2264550, (=0x754)
	mov     r2, #0x1f
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	lsl     r2, r2, #16
	blx     Function_20b2d8c
	mov     r1, #0x64
	str     r1, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	str     r7, [sp, #0x8]
	add     r1, #0xe4
	ldr     r0, [r5, r1]
	ldr     r1, [sp, #0x2c]
	mov     r2, #0x7
	mov     r3, #0x0
	bl      Function_2009a4c
	ldr     r1, [pc, #0x104] @ 0x2264554, (=0x75c)
	mov     r2, #0x4
	str     r0, [r5, r1]
	mov     r1, #0x64
	str     r1, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	str     r2, [sp, #0x8]
	str     r7, [sp, #0xc]
	add     r1, #0xe8
	ldr     r0, [r5, r1]
	ldr     r1, [sp, #0x2c]
	mov     r3, #0x0
	bl      Function_2009b04
	mov     r1, #0x76
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r1, #0x64
	str     r1, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	str     r7, [sp, #0x8]
	add     r1, #0xec
	ldr     r0, [r5, r1]
	ldr     r1, [sp, #0x2c]
	mov     r2, #0x6
	mov     r3, #0x0
	bl      Function_2009bc4
	ldr     r1, [pc, #0xcc] @ 0x2264558, (=0x764)
	mov     r2, #0x5
	str     r0, [r5, r1]
	mov     r1, #0x64
	str     r1, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	str     r7, [sp, #0x8]
	add     r1, #0xf0
	ldr     r0, [r5, r1]
	ldr     r1, [sp, #0x2c]
	mov     r3, #0x0
	bl      Function_2009bc4
	ldr     r1, [pc, #0xb4] @ 0x226455c, (=0x768)
	str     r0, [r5, r1]
	sub     r1, #0xc
	ldr     r0, [r5, r1]
	bl      Function_200a450
	cmp     r0, #0x0
	bne     branch_22644ba
	bl      ErrorHandling
.thumb
branch_22644ba: @ 22644ba :thumb
	mov     r0, #0x76
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      Function_200a640
	cmp     r0, #0x0
	bne     branch_22644cc
	bl      ErrorHandling
.thumb
branch_22644cc: @ 22644cc :thumb
	ldr     r0, [pc, #0x84] @ 0x2264554, (=0x75c)
	ldr     r0, [r5, r0]
	bl      Function_2009d4c
	mov     r0, #0x76
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      Function_2009d4c
	mov     r1, #0x64
	mov     r0, r1
	mov     r2, r1
	str     r1, [sp, #0x0]
	sub     r0, #0x65
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	add     r2, #0xe4
	ldr     r2, [r5, r2]
	mov     r3, r1
	str     r2, [sp, #0x14]
	mov     r2, r1
	add     r2, #0xe8
	ldr     r2, [r5, r2]
	str     r2, [sp, #0x18]
	mov     r2, r1
	add     r2, #0xec
	ldr     r2, [r5, r2]
	str     r2, [sp, #0x1c]
	mov     r2, r1
	add     r2, #0xf0
	ldr     r2, [r5, r2]
	str     r2, [sp, #0x20]
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	ldr     r0, [pc, #0x48] @ 0x2264560, (=0x76c)
	mov     r2, r1
	add     r0, r5, r0
	bl      Function_20093b4
	mov     r0, #0x79
	lsl     r0, r0, #4
	mov     r6, #0x0
	add     r4, r5, r0
.thumb
branch_2264528: @ 2264528 :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, r7
	bl      Function_22646bc
	mov     r0, #0x42
	lsl     r0, r0, #2
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, r4, r0
	cmp     r6, #0x60
	blt     branch_2264528
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x2264542

.align 2
.word 0x6fc @ 0x2264544
.word Unknown_2265ae8 @ 0x2264548
.word 0x74c @ 0x226454c
.word 0x754 @ 0x2264550
.word 0x75c @ 0x2264554
.word 0x764 @ 0x2264558
.word 0x768 @ 0x226455c
.word 0x76c @ 0x2264560



.thumb
Function_2264564: @ 2264564 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, #0x79
	lsl     r0, r0, #4
	mov     r7, #0x42
	mov     r6, #0x0
	add     r4, r5, r0
	lsl     r7, r7, #2
.thumb
branch_2264574: @ 2264574 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_2264728
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, r4, r7
	cmp     r6, #0x60
	blt     branch_2264574
	ldr     r0, [pc, #0x84] @ 0x226460c, (=0x75c)
	ldr     r0, [r5, r0]
	bl      Function_200a4e4
	mov     r0, #0x76
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      Function_200a6dc
	mov     r0, #0x52
	ldr     r1, [pc, #0x70] @ 0x226460c, (=0x75c)
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	bl      Function_2009d68
	mov     r0, #0x53
	mov     r1, #0x76
	lsl     r0, r0, #2
	lsl     r1, r1, #4
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	bl      Function_2009d68
	mov     r0, #0x15
	ldr     r1, [pc, #0x58] @ 0x2264610, (=0x764)
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	bl      Function_2009d68
	mov     r0, #0x55
	ldr     r1, [pc, #0x4c] @ 0x2264614, (=0x768)
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	bl      Function_2009d68
	ldr     r0, [pc, #0x44] @ 0x2264618, (=0x6fc)
	mov     r6, #0x0
	add     r4, r5, r0
.thumb
branch_22645d6: @ 22645d6 :thumb
	mov     r0, r4
	bl      Function_2017110
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x10
	cmp     r6, #0x5
	blt     branch_22645d6
	ldr     r0, [pc, #0x34] @ 0x226461c, (=0x74c)
	add     r0, r5, r0
	bl      Function_2017110
	ldr     r0, [pc, #0x28] @ 0x2264618, (=0x6fc)
	mov     r1, #0x0
	add     r0, r5, r0
	mov     r2, #0x94
	blx     Call_FillMemWithValue
	mov     r0, #0x79
	lsl     r0, r0, #4
	mov     r2, #0x63
	add     r0, r5, r0
	mov     r1, #0x0
	lsl     r2, r2, #8
	blx     Call_FillMemWithValue
	pop     {r3-r7,pc}
@ 0x226460a


.align 2


.word 0x75c @ 0x226460c
.word 0x764 @ 0x2264610
.word 0x768 @ 0x2264614
.word 0x6fc @ 0x2264618
.word 0x74c @ 0x226461c
.thumb
Function_2264620: @ 2264620 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r7, r2
	mov     r6, r3
	bl      Function_2264948
	mov     r1, r0
	ldrh    r0, [r4, #0x4]
	cmp     r0, r6
	bne     branch_2264642
	mov     r0, r5
	mov     r2, r4
	mov     r3, r7
	bl      Function_2264740
	pop     {r3-r7,pc}
@ 0x2264642

.thumb
branch_2264642: @ 2264642 :thumb
	mov     r0, r5
	mov     r2, r4
	bl      Function_226477c
	pop     {r3-r7,pc}
@ 0x226464c

.thumb
Function_226464c: @ 226464c :thumb
	push    {r4-r6,lr}
	mov     r3, #0x42
	ldr     r4, [pc, #0x2c] @ 0x2264680, (=0x888)
	mov     r2, #0x0
	mov     r6, r0
	lsl     r3, r3, #2
.thumb
branch_2264658: @ 2264658 :thumb
	ldr     r5, [r6, r4]
	cmp     r5, r1
	bne     branch_2264672
	mov     r1, #0x79
	lsl     r1, r1, #4
	add     r1, r0, r1
	mov     r0, #0x42
	lsl     r0, r0, #2
	mul     r0, r2
	add     r0, r1, r0
	bl      Function_2264924
	pop     {r4-r6,pc}
@ 0x2264672

.thumb
branch_2264672: @ 2264672 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r6, r6, r3
	cmp     r2, #0x60
	blt     branch_2264658
	bl      ErrorHandling
	pop     {r4-r6,pc}
@ 0x2264680

.word 0x888 @ 0x2264680
.thumb
Function_2264684: @ 2264684 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r0, #0x79
	lsl     r0, r0, #4
	str     r1, [sp, #0x0]
	mov     r6, #0x0
	mov     r4, r7
	add     r5, r7, r0
.thumb
branch_2264694: @ 2264694 :thumb
	ldr     r0, [pc, #0x20] @ 0x22646b8, (=0x888)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_22646a6
	ldr     r2, [sp, #0x0]
	mov     r0, r5
	mov     r1, r7
	bl      Function_22647a0
.thumb
branch_22646a6: @ 22646a6 :thumb
	mov     r0, #0x42
	lsl     r0, r0, #2
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, r4, r0
	add     r5, r5, r0
	cmp     r6, #0x60
	blt     branch_2264694
	pop     {r3-r7,pc}
@ 0x22646b6


.align 2


.word 0x888 @ 0x22646b8
.thumb
Function_22646bc: @ 22646bc :thumb
	push    {r4-r6,lr}
	add     sp, #-0x30
	mov     r5, r0
	add     r3, sp, #0x0
	mov     r0, #0x0
	mov     r4, r1
	mov     r6, r3
	mov     r1, r0
	stmia   r6!, {r0,r1}
	stmia   r6!, {r0,r1}
	stmia   r6!, {r0,r1}
	stmia   r6!, {r0,r1}
	stmia   r6!, {r0,r1}
	stmia   r6!, {r0,r1}
	ldr     r0, [r5, #0x1c]
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x40] @ 0x2264720, (=0x76c)
	str     r2, [sp, #0x2c]
	add     r0, r5, r0
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r0, [sp, #0x14]
	str     r0, [sp, #0x18]
	str     r0, [sp, #0x1c]
	mov     r0, #0x20
	str     r0, [sp, #0x24]
	mov     r0, #0x2
	str     r0, [sp, #0x28]
	mov     r0, r3
	bl      Function_2021aa0
	mov     r1, #0x0
	str     r0, [r4, #0x0]
	bl      Function_2021cac
	ldr     r1, [pc, #0x1c] @ 0x2264724, (=0x74c)
	mov     r0, r4
	add     r0, #0x7c
	add     r1, r5, r1
	bl      Function_2017258
	add     r4, #0x7c
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2017348
	add     sp, #0x30
	pop     {r4-r6,pc}
@ 0x226471e


.align 2


.word 0x76c @ 0x2264720
.word 0x74c @ 0x2264724
.thumb
Function_2264728: @ 2264728 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r0, [r4, #0x0]
	bl      Function_2021bd4
	mov     r2, #0x42
	mov     r0, r4
	mov     r1, #0x0
	lsl     r2, r2, #2
	blx     Call_FillMemWithValue
	pop     {r4,pc}
@ 0x2264740

.thumb
Function_2264740: @ 2264740 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r0, r5
	mov     r4, r2
	add     r0, #0xf8
	str     r4, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0x1
	add     r0, #0xf4
	str     r1, [r0, #0x0]
	mov     r0, #0x41
	mov     r1, #0x0
	lsl     r0, r0, #2
	strh    r1, [r5, r0]
	ldrh    r1, [r4, #0x4]
	ldr     r0, [r5, #0x0]
	mov     r6, r3
	bl      Function_2021e90
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_2264980
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	bl      Function_2021cac
	pop     {r4-r6,pc}
@ 0x226477a


.align 2, 0


.thumb
Function_226477c: @ 226477c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	add     r0, #0xf8
	str     r2, [r0, #0x0]
	mov     r0, #0x41
	mov     r1, #0x0
	lsl     r0, r0, #2
	strh    r1, [r4, r0]
	ldr     r0, [r4, #0x0]
	bl      Function_2021cac
	mov     r0, r4
	mov     r1, r5
	bl      Function_22649f0
	pop     {r3-r5,pc}
@ 0x22647a0

.thumb
Function_22647a0: @ 22647a0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r1, r5
	add     r1, #0xf4
	ldr     r1, [r1, #0x0]
	cmp     r1, #0x1
	bne     branch_22647c6
	mov     r1, r5
	add     r1, #0xf8
	ldr     r1, [r1, #0x0]
	bl      Function_2264980
	cmp     r0, #0x0
	bne     branch_22647c6
	mov     r0, r5
	mov     r1, r4
	bl      Function_22649f0
.thumb
branch_22647c6: @ 22647c6 :thumb
	mov     r0, r5
	add     r0, #0xf4
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2264838
	mov     r0, r5
	add     r0, #0xf8
	ldr     r1, [pc, #0x64] @ 0x226483c, (=0x6fc)
	ldr     r0, [r0, #0x0]
	add     r1, r4, r1
	bl      Function_2264a40
	mov     r1, r5
	add     r1, #0xf8
	ldr     r1, [r1, #0x0]
	ldr     r0, [r0, #0x8]
	ldrb    r1, [r1, #0x0]
	cmp     r1, #0x5
	bne     branch_22647f4
	ldr     r1, [pc, #0x50] @ 0x2264840, (=0x7fff)
	blx     Function_20b35a4
	b       branch_22647fa
@ 0x22647f4

.thumb
branch_22647f4: @ 22647f4 :thumb
	ldr     r1, [pc, #0x4c] @ 0x2264844, (=0x4a52)
	blx     Function_20b35a4
.thumb
branch_22647fa: @ 22647fa :thumb
	mov     r0, r5
	bl      Function_2264a54
	mov     r0, r5
	add     r0, #0xf8
	ldr     r3, [r0, #0x0]
	add     r0, r5, #0x4
	ldr     r1, [r3, #0x2c]
	ldr     r2, [r3, #0x30]
	ldr     r3, [r3, #0x34]
	bl      Function_2017350
	add     r0, r5, #0x4
	bl      Function_2017294
	mov     r0, r5
	add     r0, #0x7c
	bl      Function_201734c
	cmp     r0, #0x1
	bne     branch_2264838
	mov     r0, r5
	bl      Function_2264848
	mov     r0, r5
	add     r0, #0x7c
	bl      Function_2017294
	mov     r0, r5
	bl      Function_2264908
.thumb
branch_2264838: @ 2264838 :thumb
	pop     {r3-r5,pc}
@ 0x226483a


.align 2


.word 0x6fc @ 0x226483c
.word 0x7fff @ 0x2264840
.word 0x4a52 @ 0x2264844
.thumb
Function_2264848: @ 2264848 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	add     r0, #0xf8
	ldr     r0, [r0, #0x0]
	bl      Function_22628a4
	cmp     r0, #0x1
	bne     branch_226485e
	ldr     r4, [pc, #0xa4] @ 0x2264900, (=0xffed4000)
	b       branch_2264872
@ 0x226485e

.thumb
branch_226485e: @ 226485e :thumb
	mov     r0, r5
	add     r0, #0xf8
	ldr     r0, [r0, #0x0]
	bl      Function_2262888
	cmp     r0, #0x0
	bne     branch_2264870
	ldr     r4, [pc, #0x94] @ 0x2264904, (=0xfffcd000)
	b       branch_2264872
@ 0x2264870

.thumb
branch_2264870: @ 2264870 :thumb
	ldr     r4, [pc, #0x8c] @ 0x2264900, (=0xffed4000)
.thumb
branch_2264872: @ 2264872 :thumb
	mov     r0, r5
	add     r0, #0xf8
	ldr     r3, [r0, #0x0]
	mov     r0, r5
	ldr     r1, [r3, #0x2c]
	ldr     r3, [r3, #0x34]
	add     r0, #0x7c
	mov     r2, r4
	bl      Function_2017350
	mov     r0, r5
	add     r0, #0xf8
	ldr     r0, [r0, #0x0]
	mov     r2, #0x0
	ldr     r0, [r0, #0x30]
	sub     r4, r0, r4
	asr     r6, r4, #31
	lsr     r1, r4, #20
	lsl     r0, r6, #12
	orr     r0, r1
	mov     r1, #0x2
	lsl     r3, r4, #12
	lsl     r1, r1, #10
	add     r3, r3, r1
	adc     r0, r2
	lsl     r1, r0, #20
	lsr     r0, r3, #12
	orr     r0, r1
	mov     r1, #0x4b
	lsl     r1, r1, #14
	blx     FX_Div
	mov     r7, #0x1
	mov     r3, r0
	lsl     r7, r7, #12
	add     r1, r3, r7
	add     r5, #0x7c
	mov     r0, r5
	mov     r2, r1
	add     r3, r3, r7
	bl      Function_201736c
	lsr     r0, r4, #16
	lsl     r3, r6, #16
	orr     r3, r0
	lsl     r2, r4, #16
	mov     r1, #0x0
	lsr     r0, r7, #1
	add     r0, r2, r0
	adc     r3, r1
	lsl     r1, r3, #20
	lsr     r0, r0, #12
	orr     r0, r1
	mov     r1, #0x4b
	lsl     r1, r1, #14
	blx     FX_Div
	asr     r1, r0, #12
	mov     r0, #0x18
	sub     r0, r0, r1
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	str     r0, [sp, #0x4]
	blx     Function_20af5b4
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x22648fe


.align 2


.word 0xffed4000 @ 0x2264900
.word 0xfffcd000 @ 0x2264904
.thumb
Function_2264908: @ 2264908 :thumb
	push    {r3,lr}
	add     sp, #-0x8
	mov     r0, #0x1f
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	str     r0, [sp, #0x4]
	blx     Function_20af5b4
	add     sp, #0x8
	pop     {r3,pc}
@ 0x2264922


.align 2, 0


.thumb
Function_2264924: @ 2264924 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x0
	add     r0, #0xf8
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xf4
	str     r1, [r0, #0x0]
	ldr     r0, [r4, #0x0]
	bl      Function_2021cac
	add     r4, #0x7c
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2017348
	pop     {r4,pc}
@ 0x2264946


.align 2, 0


.thumb
Function_2264948: @ 2264948 :thumb
	push    {r3-r5,lr}
	mov     r2, #0x42
	ldr     r3, [pc, #0x2c] @ 0x226497c, (=0x888)
	mov     r1, #0x0
	mov     r5, r0
	lsl     r2, r2, #2
.thumb
branch_2264954: @ 2264954 :thumb
	ldr     r4, [r5, r3]
	cmp     r4, #0x0
	bne     branch_226496a
	mov     r2, #0x79
	lsl     r2, r2, #4
	add     r2, r0, r2
	mov     r0, #0x42
	lsl     r0, r0, #2
	mul     r0, r1
	add     r0, r2, r0
	pop     {r3-r5,pc}
@ 0x226496a

.thumb
branch_226496a: @ 226496a :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r5, r5, r2
	cmp     r1, #0x60
	blt     branch_2264954
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x226497a


.align 2


.word 0x888 @ 0x226497c
.thumb
Function_2264980: @ 2264980 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r4, r0
	add     r0, #0xf8
	ldr     r6, [r0, #0x0]
	add     r5, sp, #0x4
	add     r6, #0x2c
	ldmia   r6!, {r0,r1}
	mov     r3, r2
	mov     r2, r5
	stmia   r5!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, r2
	str     r0, [r5, #0x0]
	mov     r0, r2
	mov     r2, r4
	add     r2, #0xf8
	ldr     r2, [r2, #0x0]
	ldrh    r2, [r2, #0x4]
	bl      Function_226439c
	add     r0, sp, #0x4
	add     r1, sp, #0x0
	bl      Function_2264324
	add     r1, sp, #0x0
	mov     r2, #0x0
	ldsh    r0, [r1, r2]
	lsl     r0, r0, #12
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	ldsh    r1, [r1, r0]
	lsl     r0, r0, #20
	lsl     r1, r1, #12
	add     r0, r1, r0
	str     r2, [sp, #0xc]
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	add     r1, sp, #0x4
	bl      Function_2021c50
	add     r1, sp, #0x0
	mov     r0, #0x0
	ldsh    r0, [r1, r0]
	cmp     r0, #0x0
	blt     branch_22649e4
	mov     r0, #0x2
	ldsh    r0, [r1, r0]
	cmp     r0, #0x0
	bge     branch_22649ea
.thumb
branch_22649e4: @ 22649e4 :thumb
	add     sp, #0x10
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x22649ea

.thumb
branch_22649ea: @ 22649ea :thumb
	mov     r0, #0x1
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x22649f0

.thumb
Function_22649f0: @ 22649f0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	mov     r1, #0x0
	bl      Function_2021cac
	mov     r0, r5
	mov     r1, #0x0
	add     r0, #0xf4
	str     r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xf8
	ldr     r1, [pc, #0x30] @ 0x2264a3c, (=0x6fc)
	ldr     r0, [r0, #0x0]
	add     r1, r4, r1
	bl      Function_2264a40
	mov     r1, r0
	add     r0, r5, #0x4
	bl      Function_2017258
	add     r0, r5, #0x4
	mov     r1, #0x1
	bl      Function_2017348
	mov     r0, r5
	add     r0, #0xf8
	ldr     r0, [r0, #0x0]
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_2264a3a
	add     r5, #0x7c
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_2017348
.thumb
branch_2264a3a: @ 2264a3a :thumb
	pop     {r3-r5,pc}
@ 0x2264a3c

.word 0x6fc @ 0x2264a3c
.thumb
Function_2264a40: @ 2264a40 :thumb
	ldr     r2, [r0, #0x28]
	cmp     r2, #0x1
	bne     branch_2264a4a
	mov     r0, #0x4
	b       branch_2264a4c
@ 0x2264a4a

.thumb
branch_2264a4a: @ 2264a4a :thumb
	ldrh    r0, [r0, #0x4]
.thumb
branch_2264a4c: @ 2264a4c :thumb
	lsl     r0, r0, #4
	add     r0, r1, r0
	bx      lr
@ 0x2264a52


.align 2, 0


.thumb
Function_2264a54: @ 2264a54 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, #0x41
	lsl     r0, r0, #2
	ldsh    r1, [r5, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strh    r1, [r5, r0]
	ldsh    r0, [r5, r0]
	cmp     r0, #0x0
	bge     branch_2264af2
	mov     r0, r5
	add     r0, #0xf8
	ldr     r0, [r0, #0x0]
	bl      Function_22625f0
	mov     r6, r0
	mov     r0, r5
	add     r0, #0xf8
	ldr     r1, [r0, #0x0]
	ldr     r0, [r1, #0x10]
	ldr     r1, [r1, #0x8]
	blx     FX_Atan2Idx
	asr     r0, r0, #4
	lsl     r4, r0, #1
	ldr     r1, [pc, #0xac] @ 0x2264b34, (=0x1e200)
	lsl     r0, r6, #9
	blx     _s32_div_f
	lsl     r0, r0, #16
	lsr     r6, r0, #4
	asr     r7, r6, #31
	ldr     r0, [pc, #0xa0] @ 0x2264b38, (=0x20f983c)
	lsl     r1, r4, #1
	ldsh    r0, [r0, r1]
	mov     r2, r6
	mov     r3, r7
	asr     r1, r0, #31
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r0, r0, r2
	adc     r1, r3
	lsl     r1, r1, #20
	lsr     r0, r0, #12
	orr     r0, r1
	asr     r1, r0, #12
	lsr     r0, r2, #2
	add     r1, r1, r0
	lsr     r0, r2, #3
	strh    r1, [r5, r0]
	add     r0, r4, #0x1
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x74] @ 0x2264b38, (=0x20f983c)
	mov     r2, r6
	ldsh    r0, [r0, r1]
	mov     r3, r7
	asr     r1, r0, #31
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r4, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r4, #12
	orr     r1, r0
	asr     r1, r1, #12
	lsr     r0, r2, #2
	add     r1, r1, r0
	ldr     r0, [pc, #0x54] @ 0x2264b3c, (=0x102)
	strh    r1, [r5, r0]
	mov     r1, #0x8
	mov     r0, r1
	add     r0, #0xfc
	strh    r1, [r5, r0]
.thumb
branch_2264af2: @ 2264af2 :thumb
	mov     r0, r5
	add     r0, #0xfc
	ldrh    r2, [r0, #0x0]
	mov     r0, #0x1
	lsl     r0, r0, #8
	ldrh    r1, [r5, r0]
	.hword  0x1c80 @ add r0, r0, #0x2
	add     r2, r2, r1
	mov     r1, r5
	add     r1, #0xfc
	strh    r2, [r1, #0x0]
	mov     r1, r5
	add     r1, #0xfe
	ldrh    r1, [r1, #0x0]
	ldrh    r0, [r5, r0]
	mov     r2, #0x0
	add     r1, r1, r0
	mov     r0, r5
	add     r0, #0xfe
	strh    r1, [r0, #0x0]
	mov     r1, r5
	add     r1, #0xfc
	ldrh    r1, [r1, #0x0]
	add     r0, r5, #0x4
	bl      Function_2017388
	add     r0, r5, #0x4
	add     r5, #0xfe
	ldrh    r1, [r5, #0x0]
	mov     r2, #0x2
	bl      Function_2017388
	pop     {r3-r7,pc}
@ 0x2264b34

.word 0x1e200 @ 0x2264b34
.word 0x20f983c @ 0x2264b38
.word 0x102 @ 0x2264b3c
.thumb
Function_2264b40: @ 2264b40 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	mov     r6, r0
	add     r7, sp, #0x0
	mov     r4, r2
	mov     r0, #0x0
	mov     r5, r1
	mov     r2, r7
	mov     r1, r0
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r6, #0x1c]
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x38] @ 0x2264b9c, (=0x76c)
	str     r3, [sp, #0x2c]
	add     r0, r6, r0
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r0, [sp, #0x14]
	str     r0, [sp, #0x18]
	str     r0, [sp, #0x1c]
	mov     r0, #0x20
	str     r0, [sp, #0x24]
	mov     r0, #0x2
	str     r0, [sp, #0x28]
	mov     r0, r7
	bl      Function_2021aa0
	str     r0, [r5, #0x4]
	mov     r1, #0x0
	bl      Function_2021cac
	ldr     r0, [r5, #0x4]
	mov     r1, r4
	bl      Function_2021e90
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x2264b9a


.align 2


.word 0x76c @ 0x2264b9c
.thumb
Function_2264ba0: @ 2264ba0 :thumb
	ldr     r3, [pc, #0x4] @ 0x2264ba8, (=0x2021bd5)
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x2264ba6


.align 2


.word 0x2021bd5 @ 0x2264ba8
.thumb
Function_2264bac: @ 2264bac :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      Function_2021cac
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x2264bbe


.align 2, 0


.thumb
Function_2264bc0: @ 2264bc0 :thumb
	push    {r3,lr}
	ldr     r1, [r0, #0x0]
	cmp     r1, #0x0
	beq     branch_2264bd2
	ldr     r2, [pc, #0x8] @ 0x2264bd4, (=0x21bf6bc)
	ldrh    r1, [r2, #0x1c]
	ldrh    r2, [r2, #0x1e]
	bl      Function_2264bd8
.thumb
branch_2264bd2: @ 2264bd2 :thumb
	pop     {r3,pc}
@ 0x2264bd4

.word 0x21bf6bc @ 0x2264bd4
.thumb
Function_2264bd8: @ 2264bd8 :thumb
	push    {lr}
	add     sp, #-0xc
	lsl     r1, r1, #12
	str     r1, [sp, #0x0]
	mov     r1, #0x2
	lsl     r2, r2, #12
	lsl     r1, r1, #20
	add     r1, r2, r1
	str     r1, [sp, #0x4]
	ldr     r0, [r0, #0x4]
	add     r1, sp, #0x0
	bl      Function_2021c50
	add     sp, #0xc
	pop     {pc}
@ 0x2264bf6


.align 2, 0


.thumb
Function_2264bf8: @ 2264bf8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	bl      Function_2021cac
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x2264c0a


.align 2, 0


.thumb
Function_2264c0c: @ 2264c0c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	mov     r4, #0x0
	mov     r7, r0
	mov     r5, r1
	mov     r6, r2
	add     r2, sp, #0x0
	mov     r0, r4
	mov     r1, r4
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r7, #0x1c]
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x44] @ 0x2264c74, (=0x76c)
	str     r3, [sp, #0x2c]
	add     r0, r7, r0
	str     r0, [sp, #0x4]
	mov     r0, #0x9
	str     r0, [sp, #0x14]
	str     r0, [sp, #0x18]
	str     r0, [sp, #0x1c]
	mov     r0, #0x20
	str     r0, [sp, #0x24]
	mov     r0, #0x2
	str     r0, [sp, #0x28]
	mov     r7, r4
.thumb
branch_2264c48: @ 2264c48 :thumb
	add     r0, sp, #0x0
	bl      Function_2021aa0
	str     r0, [r5, #0x4]
	mov     r1, #0x0
	bl      Function_2021cac
	ldr     r0, [r5, #0x4]
	mov     r1, #0x1
	bl      Function_2021cf8
	ldr     r0, [r5, #0x4]
	mov     r1, r6
	bl      Function_2021e90
	str     r7, [r5, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x1c
	cmp     r4, #0x8
	blt     branch_2264c48
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x2264c74

.word 0x76c @ 0x2264c74
.thumb
Function_2264c78: @ 2264c78 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, #0x0
.thumb
branch_2264c7e: @ 2264c7e :thumb
	ldr     r0, [r5, #0x4]
	bl      Function_2021bd4
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x1c
	cmp     r4, #0x8
	blt     branch_2264c7e
	pop     {r3-r5,pc}
@ 0x2264c8e


.align 2, 0


.thumb
Function_2264c90: @ 2264c90 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r0
	mov     r4, #0x0
	add     r6, sp, #0x10
	add     r7, sp, #0xc
.thumb
branch_2264c9c: @ 2264c9c :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x1
	bne     branch_2264d70
	ldr     r0, [r5, #0x14]
	cmp     r0, #0x10
	bge     branch_2264cbc
	mov     r1, #0x7d
	str     r1, [sp, #0x0]
	str     r6, [sp, #0x4]
	mov     r1, #0x10
	mov     r2, #0x8
	mov     r3, #0xbe
	str     r7, [sp, #0x8]
	bl      Function_2264dd8
	b       branch_2264cea
@ 0x2264cbc

.thumb
branch_2264cbc: @ 2264cbc :thumb
	cmp     r0, #0x1a
	bge     branch_2264cd6
	mov     r1, #0x8c
	str     r1, [sp, #0x0]
	str     r6, [sp, #0x4]
	sub     r0, #0x10
	mov     r1, #0xa
	mov     r2, #0x4
	mov     r3, #0xb6
	str     r7, [sp, #0x8]
	bl      Function_2264dd8
	b       branch_2264cea
@ 0x2264cd6

.thumb
branch_2264cd6: @ 2264cd6 :thumb
	mov     r1, #0xa0
	str     r1, [sp, #0x0]
	str     r6, [sp, #0x4]
	sub     r0, #0x1a
	mov     r1, #0x6
	mov     r2, #0x3
	mov     r3, #0xb4
	str     r7, [sp, #0x8]
	bl      Function_2264dd8
.thumb
branch_2264cea: @ 2264cea :thumb
	ldr     r0, [r5, #0x14]
	add     r1, r0, #0x1
	lsl     r0, r1, #1
	str     r1, [r5, #0x14]
	add     r1, r1, r0
	asr     r0, r1, #4
	lsr     r0, r0, #27
	add     r0, r1, r0
	asr     r1, r0, #5
	mov     r0, #0x9
	sub     r0, r0, r1
	mov     r1, #0xa
	lsl     r0, r0, #12
	lsl     r1, r1, #12
	blx     FX_Div
	str     r0, [sp, #0x14]
	str     r0, [sp, #0x18]
	ldr     r0, [r5, #0x4]
	add     r1, sp, #0x14
	bl      Function_2021c70
	ldr     r0, [r5, #0x18]
	ldr     r1, [r5, #0x8]
	cmp     r0, #0x0
	beq     branch_2264d26
	ldr     r0, [sp, #0x10]
	lsl     r0, r0, #12
	add     r0, r1, r0
	b       branch_2264d2c
@ 0x2264d26

.thumb
branch_2264d26: @ 2264d26 :thumb
	ldr     r0, [sp, #0x10]
	lsl     r0, r0, #12
	sub     r0, r1, r0
.thumb
branch_2264d2c: @ 2264d2c :thumb
	str     r0, [r5, #0x8]
	ldr     r0, [sp, #0xc]
	ldr     r1, [r5, #0xc]
	lsl     r0, r0, #12
	add     r0, r1, r0
	str     r0, [r5, #0xc]
	mov     r1, r5
	ldr     r0, [r5, #0x4]
	add     r1, #0x8
	bl      Function_2021c50
	ldr     r1, [r5, #0x8]
	ldr     r0, [pc, #0x34] @ 0x2264d7c, (=0xfffe0000)
	cmp     r1, r0
	blt     branch_2264d64
	mov     r0, #0x12
	lsl     r0, r0, #16
	cmp     r1, r0
	bgt     branch_2264d64
	mov     r0, #0x1e
	ldr     r1, [r5, #0xc]
	lsl     r0, r0, #16
	cmp     r1, r0
	blt     branch_2264d64
	mov     r0, #0x2e
	lsl     r0, r0, #16
	cmp     r1, r0
	ble     branch_2264d70
.thumb
branch_2264d64: @ 2264d64 :thumb
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	ldr     r0, [r5, #0x4]
	mov     r1, #0x0
	bl      Function_2021cac
.thumb
branch_2264d70: @ 2264d70 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x1c
	cmp     r4, #0x8
	blt     branch_2264c9c
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2264d7c

.word 0xfffe0000 @ 0x2264d7c
.thumb
Function_2264d80: @ 2264d80 :thumb
	push    {r4-r6,lr}
	mov     r4, #0x0
	mov     r3, r4
	mov     r6, r0
.thumb
branch_2264d88: @ 2264d88 :thumb
	ldr     r5, [r6, #0x0]
	cmp     r5, #0x0
	bne     branch_2264d96
	mov     r4, #0x1c
	mul     r4, r3
	add     r4, r0, r4
	b       branch_2264d9e
@ 0x2264d96

.thumb
branch_2264d96: @ 2264d96 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	add     r6, #0x1c
	cmp     r3, #0x8
	blt     branch_2264d88
.thumb
branch_2264d9e: @ 2264d9e :thumb
	cmp     r4, #0x0
	beq     branch_2264dd4
	cmp     r1, #0x80
	bge     branch_2264daa
	mov     r0, #0x1
	b       branch_2264dac
@ 0x2264daa

.thumb
branch_2264daa: @ 2264daa :thumb
	mov     r0, #0x0
.thumb
branch_2264dac: @ 2264dac :thumb
	str     r0, [r4, #0x18]
	lsl     r0, r1, #12
	str     r0, [r4, #0x8]
	mov     r0, #0x2
	lsl     r1, r2, #12
	lsl     r0, r0, #20
	add     r0, r1, r0
	str     r0, [r4, #0xc]
	mov     r1, r4
	ldr     r0, [r4, #0x4]
	add     r1, #0x8
	bl      Function_2021c50
	mov     r1, #0x1
	str     r1, [r4, #0x0]
	ldr     r0, [r4, #0x4]
	bl      Function_2021cac
	mov     r0, #0x0
	str     r0, [r4, #0x14]
.thumb
branch_2264dd4: @ 2264dd4 :thumb
	pop     {r4-r6,pc}
@ 0x2264dd6


.align 2, 0


.thumb
Function_2264dd8: @ 2264dd8 :thumb
	push    {r4-r6,lr}
	mov     r4, r2
	ldr     r2, [sp, #0x10]
	mov     r5, r3
	sub     r2, r2, r5
	mul     r2, r0
	mov     r0, r2
	blx     _s32_div_f
	add     r0, r5, r0
	lsl     r0, r0, #16
	asr     r0, r0, #16
	lsl     r0, r0, #16
	lsr     r6, r0, #16
	mov     r0, r6
	bl      Function_201d1d4
	lsl     r5, r4, #12
	asr     r4, r5, #31
	asr     r1, r0, #31
	mov     r2, r5
	mov     r3, r4
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	ldr     r0, [sp, #0x14]
	asr     r1, r1, #12
	str     r1, [r0, #0x0]
	mov     r0, r6
	bl      Function_201d15c
	asr     r1, r0, #31
	mov     r2, r5
	mov     r3, r4
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	ldr     r0, [sp, #0x18]
	asr     r1, r1, #12
	str     r1, [r0, #0x0]
	pop     {r4-r6,pc}
@ 0x2264e46


.align 2, 0


.thumb
Function_2264e48: @ 2264e48 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x40]
	mov     r1, #0x5a
	str     r0, [sp, #0x40]
	ldr     r0, [sp, #0x8]
	str     r2, [sp, #0xc]
	lsl     r1, r1, #2
	add     r6, r0, r1
	.hword  0x1e5a @ sub r2, r3, #0x1
	mov     r5, r0
	lsl     r0, r2, #1
	str     r0, [sp, #0x14]
	ldr     r1, [pc, #0xec] @ 0x2264f54, (=0x2265c5c)
	lsl     r0, r2, #3
	add     r0, r1, r0
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x38]
	ldr     r7, [sp, #0x3c]
	lsl     r0, r0, #1
	mov     r4, #0x0
	str     r0, [sp, #0x1c]
.thumb
branch_2264e76: @ 2264e76 :thumb
	cmp     r4, #0x0
	bne     branch_2264e7e
	mov     r2, #0x24
	b       branch_2264e8c
@ 0x2264e7e

.thumb
branch_2264e7e: @ 2264e7e :thumb
	cmp     r4, #0x1
	bne     branch_2264e86
	mov     r2, #0x25
	b       branch_2264e8c
@ 0x2264e86

.thumb
branch_2264e86: @ 2264e86 :thumb
	ldr     r1, [pc, #0xd0] @ 0x2264f58, (=0x2265b02)
	ldr     r0, [sp, #0x14]
	ldrh    r2, [r1, r0]
.thumb
branch_2264e8c: @ 2264e8c :thumb
	ldr     r1, [sp, #0xc]
	mov     r0, r6
	mov     r3, r7
	bl      Function_20170d8
	mov     r0, r5
	mov     r1, r6
	bl      Function_2017258
	mov     r1, #0x0
	ldr     r2, [pc, #0xb8] @ 0x2264f5c, (=0xfff9e000)
	mov     r0, r5
	mov     r3, r1
	bl      Function_2017350
	mov     r1, #0x6
	lsl     r1, r1, #10
	mov     r0, r5
	mov     r2, r1
	mov     r3, r1
	bl      Function_201736c
	cmp     r4, #0x1
	bne     branch_2264ec4
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2017348
.thumb
branch_2264ec4: @ 2264ec4 :thumb
	cmp     r4, #0x1
	bhi     branch_2264ed8
	ldr     r2, [sp, #0x18]
	ldr     r1, [sp, #0x1c]
	mov     r0, r5
	ldrh    r1, [r2, r1]
	mov     r2, #0x1
	bl      Function_2017388
	b       branch_2264ee8
@ 0x2264ed8

.thumb
branch_2264ed8: @ 2264ed8 :thumb
	mov     r0, #0xb4
	bl      Function_201d278
	mov     r1, r0
	mov     r0, r5
	mov     r2, #0x1
	bl      Function_2017388
.thumb
branch_2264ee8: @ 2264ee8 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r6, #0x10
	add     r5, #0x78
	cmp     r4, #0x3
	blt     branch_2264e76
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	mov     r1, #0x66
	ldr     r0, [sp, #0x8]
	lsl     r1, r1, #2
	add     r5, r0, r1
	sub     r1, #0x30
	add     r0, r0, r1
	ldr     r6, [pc, #0x5c] @ 0x2264f60, (=0x2265af0)
	ldr     r4, [pc, #0x5c] @ 0x2264f64, (=0x2265af6)
	str     r0, [sp, #0x20]
.thumb
branch_2264f08: @ 2264f08 :thumb
	ldr     r0, [sp, #0x40]
	str     r7, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldrh    r1, [r4, #0x0]
	ldrh    r3, [r6, #0x0]
	mov     r0, r5
	lsl     r2, r1, #4
	ldr     r1, [sp, #0x20]
	add     r1, r1, r2
	ldr     r2, [sp, #0xc]
	bl      Function_2017164
	ldrh    r1, [r4, #0x0]
	mov     r0, #0x78
	mov     r2, r1
	mul     r2, r0
	ldr     r0, [sp, #0x8]
	mov     r1, r5
	add     r0, r0, r2
	bl      Function_201727c
	ldr     r0, [sp, #0x10]
	.hword  0x1cb6 @ add r6, r6, #0x2
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	add     r5, #0x14
	str     r0, [sp, #0x10]
	cmp     r0, #0x3
	blt     branch_2264f08
	mov     r2, #0x1
	mov     r1, #0x75
	ldr     r0, [sp, #0x8]
	lsl     r2, r2, #12
	lsl     r1, r1, #2
	str     r2, [r0, r1]
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x2264f52

.align 2
.word 0x2265c5c @ 0x2264f54
.word Unknown_2265b02 @ 0x2264f58
.word 0xfff9e000 @ 0x2264f5c
.word Unknown_2265af0 @ 0x2264f60
.word Unknown_2265af6 @ 0x2264f64



.thumb
Function_2264f68: @ 2264f68 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r0, #0x66
	lsl     r0, r0, #2
	mov     r6, r2
	mov     r4, #0x0
	add     r5, r7, r0
.thumb
branch_2264f76: @ 2264f76 :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_20171a0
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x14
	cmp     r4, #0x3
	blt     branch_2264f76
	mov     r0, #0x5a
	lsl     r0, r0, #2
	mov     r4, #0x0
	add     r5, r7, r0
.thumb
branch_2264f8e: @ 2264f8e :thumb
	mov     r0, r5
	bl      Function_2017110
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x3
	blt     branch_2264f8e
	pop     {r3-r7,pc}
@ 0x2264f9e


.align 2, 0


.thumb
Function_2264fa0: @ 2264fa0 :thumb
	push    {r3-r5,lr}
	mov     r1, #0x66
	mov     r4, r0
	lsl     r1, r1, #2
	add     r0, r4, r1
	add     r1, #0x3c
	ldr     r1, [r4, r1]
	bl      Function_20171cc
	mov     r0, #0x76
	lsl     r0, r0, #2
	ldrb    r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_22650ac
	add     r1, r0, #0x1
	ldrb    r1, [r4, r1]
	cmp     r1, #0x0
	beq     branch_2264fce
	cmp     r1, #0x1
	beq     branch_2265020
	cmp     r1, #0x2
	beq     branch_2265064
	b       branch_226508c
@ 0x2264fce

.thumb
branch_2264fce: @ 2264fce :thumb
	mov     r1, r0
	add     r1, #0x8
	add     r2, r0, #0x4
	ldr     r1, [r4, r1]
	ldr     r2, [r4, r2]
	add     r3, r2, r1
	mov     r2, #0x33
	lsl     r2, r2, #12
	cmp     r3, r2
	bge     branch_2264fea
	add     r2, r0, #0x4
	ldr     r2, [r4, r2]
	add     r1, r2, r1
	b       branch_2264fec
@ 0x2264fea

.thumb
branch_2264fea: @ 2264fea :thumb
	mov     r1, #0x0
.thumb
branch_2264fec: @ 2264fec :thumb
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
	mov     r1, #0x1e
	lsl     r1, r1, #4
	mov     r0, r1
	ldr     r2, [r4, r1]
	sub     r0, #0x46
	add     r3, r2, r0
	ldr     r0, [pc, #0xc0] @ 0x22650c0, (=0x24cd)
	cmp     r3, r0
	bgt     branch_226500c
	mov     r0, r1
	sub     r0, #0x46
	add     r0, r2, r0
	str     r0, [r4, r1]
	b       branch_2265090
@ 0x226500c

.thumb
branch_226500c: @ 226500c :thumb
	str     r0, [r4, r1]
	mov     r2, #0x18
	.hword  0x1f88 @ sub r0, r1, #0x6
	strh    r2, [r4, r0]
	.hword  0x1fc8 @ sub r0, r1, #0x7
	ldrb    r0, [r4, r0]
	add     r2, r0, #0x1
	.hword  0x1fc8 @ sub r0, r1, #0x7
	strb    r2, [r4, r0]
	b       branch_2265090
@ 0x2265020

.thumb
branch_2265020: @ 2265020 :thumb
	mov     r1, r0
	add     r1, #0x8
	add     r2, r0, #0x4
	ldr     r1, [r4, r1]
	ldr     r2, [r4, r2]
	add     r3, r2, r1
	mov     r2, #0x33
	lsl     r2, r2, #12
	cmp     r3, r2
	bge     branch_226503c
	add     r2, r0, #0x4
	ldr     r2, [r4, r2]
	add     r1, r2, r1
	b       branch_226503e
@ 0x226503c

.thumb
branch_226503c: @ 226503c :thumb
	mov     r1, #0x0
.thumb
branch_226503e: @ 226503e :thumb
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
	ldr     r1, [pc, #0x80] @ 0x22650c4, (=0x1da)
	ldsh    r0, [r4, r1]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, r1]
	ldsh    r0, [r4, r1]
	cmp     r0, #0x0
	bgt     branch_2265090
	.hword  0x1e48 @ sub r0, r1, #0x1
	ldrb    r0, [r4, r0]
	add     r2, r0, #0x1
	.hword  0x1e48 @ sub r0, r1, #0x1
	strb    r2, [r4, r0]
	mov     r2, #0x33
	lsl     r2, r2, #12
	add     r0, r1, #0x2
	str     r2, [r4, r0]
	b       branch_2265090
@ 0x2265064

.thumb
branch_2265064: @ 2265064 :thumb
	add     r1, r0, #0x4
	mov     r2, #0x1
	ldr     r1, [r4, r1]
	lsl     r2, r2, #12
	add     r3, r1, r2
	mov     r1, #0x19
	lsl     r1, r1, #14
	cmp     r3, r1
	bge     branch_2265082
	add     r1, r0, #0x4
	ldr     r1, [r4, r1]
	.hword  0x1d00 @ add r0, r0, #0x4
	add     r1, r1, r2
	str     r1, [r4, r0]
	b       branch_2265090
@ 0x2265082

.thumb
branch_2265082: @ 2265082 :thumb
	mov     r1, #0x33
	lsl     r1, r1, #12
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
	b       branch_2265090
@ 0x226508c

.thumb
branch_226508c: @ 226508c :thumb
	bl      ErrorHandling
.thumb
branch_2265090: @ 2265090 :thumb
	mov     r1, #0x6b
	lsl     r1, r1, #2
	add     r0, r4, r1
	add     r1, #0x30
	ldr     r1, [r4, r1]
	bl      Function_2017240
	mov     r1, #0x7
	lsl     r1, r1, #6
	add     r0, r4, r1
	add     r1, #0x1c
	ldr     r1, [r4, r1]
	bl      Function_2017240
.thumb
branch_22650ac: @ 22650ac :thumb
	mov     r5, #0x0
.thumb
branch_22650ae: @ 22650ae :thumb
	mov     r0, r4
	bl      Function_2017294
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r4, #0x78
	cmp     r5, #0x3
	blt     branch_22650ae
	pop     {r3-r5,pc}
@ 0x22650be


.align 2


.word 0x24cd @ 0x22650c0
.word 0x1da @ 0x22650c4
.thumb
Function_22650c8: @ 22650c8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x0
	bl      Function_2017348
	mov     r0, r4
	add     r0, #0x78
	mov     r1, #0x1
	bl      Function_2017348
	mov     r0, #0x77
	lsl     r0, r0, #2
	mov     r3, #0x0
	mov     r2, #0x1
	str     r3, [r4, r0]
	lsl     r2, r2, #12
	add     r1, r0, #0x4
	str     r2, [r4, r1]
	.hword  0x1f01 @ sub r1, r0, #0x4
	mov     r2, #0x1
	strb    r2, [r4, r1]
	.hword  0x1ec0 @ sub r0, r0, #0x3
	strb    r3, [r4, r0]
	pop     {r4,pc}
@ 0x22650f8

.thumb
Function_22650f8: @ 22650f8 :thumb
	mov     r2, #0x75
	lsl     r2, r2, #2
	str     r1, [r0, r2]
	bx      lr
@ 0x2265100

.thumb
Function_2265100: @ 2265100 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x50
	mov     r4, r0
	ldr     r0, [sp, #0x68]
	ldr     r6, [r2, #0x0]
	str     r0, [sp, #0x68]
	ldr     r0, [r2, #0x4]
	ldr     r7, [r2, #0x8]
	str     r0, [sp, #0x2c]
	asr     r0, r0, #31
	str     r0, [sp, #0x30]
	asr     r0, r6, #31
	str     r0, [sp, #0x34]
	mov     r5, r1
	asr     r0, r7, #31
	str     r0, [sp, #0x38]
	ldr     r2, [r4, #0x0]
	str     r3, [sp, #0x0]
	ldr     r1, [sp, #0x34]
	mov     r0, r6
	asr     r3, r2, #31
	blx     _ll_mul
	ldr     r2, [r4, #0x4]
	str     r0, [sp, #0x3c]
	str     r1, [sp, #0x28]
	ldr     r0, [sp, #0x2c]
	ldr     r1, [sp, #0x30]
	asr     r3, r2, #31
	blx     _ll_mul
	ldr     r2, [r4, #0x8]
	str     r1, [sp, #0x20]
	str     r0, [sp, #0x40]
	ldr     r1, [sp, #0x38]
	mov     r0, r7
	asr     r3, r2, #31
	blx     _ll_mul
	ldr     r2, [r5, #0x8]
	str     r1, [sp, #0x18]
	str     r0, [sp, #0x44]
	ldr     r1, [sp, #0x38]
	mov     r0, r7
	asr     r3, r2, #31
	blx     _ll_mul
	ldr     r2, [r5, #0x0]
	str     r1, [sp, #0x10]
	str     r0, [sp, #0x48]
	ldr     r1, [sp, #0x34]
	mov     r0, r6
	asr     r3, r2, #31
	blx     _ll_mul
	ldr     r2, [r5, #0x4]
	str     r0, [sp, #0x4c]
	mov     r6, r1
	ldr     r0, [sp, #0x2c]
	ldr     r1, [sp, #0x30]
	asr     r3, r2, #31
	blx     _ll_mul
	mov     r12, r0
	mov     r7, #0x2
	str     r1, [sp, #0x8]
	ldr     r0, [sp, #0x3c]
	lsl     r7, r7, #10
	mov     r1, #0x0
	add     r2, r0, r7
	ldr     r0, [sp, #0x28]
	ldr     r3, [sp, #0x20]
	adc     r0, r1
	str     r0, [sp, #0x28]
	lsl     r0, r0, #20
	lsr     r2, r2, #12
	orr     r2, r0
	ldr     r0, [sp, #0x40]
	add     r0, r0, r7
	adc     r3, r1
	str     r3, [sp, #0x20]
	lsl     r3, r3, #20
	lsr     r0, r0, #12
	orr     r0, r3
	add     r2, r2, r0
	ldr     r0, [sp, #0x44]
	ldr     r3, [sp, #0x18]
	add     r0, r0, r7
	adc     r3, r1
	str     r3, [sp, #0x18]
	lsl     r3, r3, #20
	lsr     r0, r0, #12
	orr     r0, r3
	add     r2, r2, r0
	ldr     r0, [sp, #0x0]
	sub     r0, r0, r2
	ldr     r2, [sp, #0x48]
	add     r3, r2, r7
	ldr     r2, [sp, #0x10]
	adc     r2, r1
	str     r2, [sp, #0x10]
	lsl     r2, r2, #20
	lsr     r3, r3, #12
	orr     r3, r2
	ldr     r2, [sp, #0x4c]
	add     r2, r2, r7
	adc     r6, r1
	lsl     r6, r6, #20
	lsr     r2, r2, #12
	orr     r2, r6
	mov     r6, r12
	add     r7, r6, r7
	ldr     r6, [sp, #0x8]
	adc     r6, r1
	str     r6, [sp, #0x8]
	lsl     r1, r6, #20
	lsr     r6, r7, #12
	orr     r6, r1
	add     r1, r2, r6
	add     r1, r3, r1
	blx     FX_Div
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	asr     r7, r6, #31
	asr     r1, r0, #31
	mov     r2, r6
	mov     r3, r7
	blx     _ll_mul
	mov     r3, #0x2
	mov     r2, r0
	lsl     r3, r3, #10
	add     r3, r2, r3
	ldr     r2, [pc, #0x60] @ 0x2265270, (=0x0)
	ldr     r0, [r4, #0x0]
	adc     r1, r2
	lsr     r2, r3, #12
	lsl     r1, r1, #20
	orr     r2, r1
	add     r1, r0, r2
	ldr     r0, [sp, #0x68]
	mov     r2, r6
	str     r1, [r0, #0x0]
	ldr     r0, [r5, #0x4]
	mov     r3, r7
	asr     r1, r0, #31
	blx     _ll_mul
	mov     r3, #0x2
	mov     r2, r0
	lsl     r3, r3, #10
	add     r3, r2, r3
	ldr     r2, [pc, #0x3c] @ 0x2265270, (=0x0)
	ldr     r0, [r4, #0x4]
	adc     r1, r2
	lsr     r2, r3, #12
	lsl     r1, r1, #20
	orr     r2, r1
	add     r1, r0, r2
	ldr     r0, [sp, #0x68]
	mov     r2, r6
	str     r1, [r0, #0x4]
	ldr     r0, [r5, #0x8]
	mov     r3, r7
	asr     r1, r0, #31
	blx     _ll_mul
	mov     r3, #0x2
	ldr     r2, [r4, #0x8]
	mov     r4, #0x0
	lsl     r3, r3, #10
	add     r3, r0, r3
	adc     r1, r4
	lsl     r0, r1, #20
	lsr     r1, r3, #12
	orr     r1, r0
	ldr     r0, [sp, #0x68]
	add     r1, r2, r1
	str     r1, [r0, #0x0]
	ldr     r0, [sp, #0x6c]
	str     r6, [r0, #0x0]
	add     sp, #0x50
	pop     {r3-r7,pc}
@ 0x2265270

.word 0x0 @ 0x2265270
.thumb
Function_2265274: @ 2265274 :thumb
	mov     r2, #0x66
	lsl     r2, r2, #2
	str     r1, [r0, r2]
	bx      lr
@ 0x226527c

.thumb
Function_226527c: @ 226527c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r1, #0x19
	mov     r5, r0
	lsl     r1, r1, #4
	ldr     r1, [r5, r1]
	add     r0, sp, #0x0
	bl      Function_2020a94
	add     r0, sp, #0x0
	mov     r1, #0x19
	strh    r4, [r0, #0x0]
	lsl     r1, r1, #4
	ldr     r1, [r5, r1]
	add     r0, sp, #0x0
	bl      Function_20209d4
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x22652a4

.thumb
Function_22652a4: @ 22652a4 :thumb
	mov     r2, #0x0
	strb    r2, [r0, #0x0]
	strb    r2, [r0, #0x1]
	strb    r2, [r0, #0x2]
	strb    r2, [r0, #0x3]
	strb    r2, [r0, #0x4]
	strb    r2, [r0, #0x5]
	strb    r2, [r0, #0x6]
	strb    r2, [r0, #0x7]
	mov     r2, #0x2
	strh    r2, [r0, #0x4]
	strb    r1, [r0, #0x6]
	bx      lr
@ 0x22652be


.align 2, 0


.thumb
Function_22652c0: @ 22652c0 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldrh    r0, [r4, #0x0]
	mov     r5, r1
	cmp     r0, #0x3
	bhi     branch_22653c2
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22652da

Jumppoints_22652da:
.hword branch_22653c2 - Jumppoints_22652da - 2
.hword branch_22652e2 - Jumppoints_22652da - 2
.hword branch_22652fe - Jumppoints_22652da - 2
.hword branch_2265386 - Jumppoints_22652da - 2
.thumb
branch_22652e2: @ 22652e2 :thumb
	mov     r1, #0x4
	ldsh    r1, [r4, r1]
	ldrb    r2, [r4, #0x6]
	mov     r0, r5
	.hword  0x1e49 @ sub r1, r1, #0x1
	lsl     r1, r1, #16
	asr     r1, r1, #16
	bl      Function_22653f4
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	strh    r0, [r4, #0x2]
.thumb
branch_22652fe: @ 22652fe :thumb
	mov     r0, #0x2
	ldsh    r0, [r4, r0]
	cmp     r0, #0x10
	blt     branch_2265336
	mov     r0, #0x3
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	strh    r0, [r4, #0x2]
	mov     r1, #0x4
	ldsh    r1, [r4, r1]
	ldrb    r2, [r4, #0x6]
	mov     r0, r5
	bl      Function_22653f4
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r1, #0x4
	ldsh    r2, [r4, r1]
	mov     r3, #0x1
	mov     r1, r3
	lsl     r1, r2
	ldr     r0, [pc, #0x9c] @ 0x22653c8, (=0x4001050)
	mov     r2, #0x8
	mov     r3, #0x0
	blx     G2x_SetBlendAlpha_
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x2265336

.thumb
branch_2265336: @ 2265336 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x2]
	mov     r0, #0x4
	ldsh    r2, [r4, r0]
	.hword  0x1e95 @ sub r5, r2, #0x2
	.hword  0x1e56 @ sub r6, r2, #0x1
	cmp     r2, #0x0
	bge     branch_2265348
	.hword  0x1cd2 @ add r2, r2, #0x3
.thumb
branch_2265348: @ 2265348 :thumb
	cmp     r5, #0x0
	bge     branch_226534e
	.hword  0x1ced @ add r5, r5, #0x3
.thumb
branch_226534e: @ 226534e :thumb
	cmp     r6, #0x0
	bge     branch_2265354
	.hword  0x1cf6 @ add r6, r6, #0x3
.thumb
branch_2265354: @ 2265354 :thumb
	mov     r0, #0x2
	ldsh    r0, [r4, r0]
	mov     r4, #0x1
	lsl     r1, r0, #4
	asr     r0, r1, #3
	lsr     r0, r0, #28
	add     r0, r1, r0
	asr     r1, r0, #4
	mov     r0, #0x10
	sub     r3, r0, r1
	mov     r1, r4
	lsl     r1, r2
	mov     r2, r4
	sub     r0, r0, r3
	str     r0, [sp, #0x0]
	lsl     r2, r5
	lsl     r4, r6
	orr     r4, r2
	mov     r2, #0x8
	ldr     r0, [pc, #0x4c] @ 0x22653c8, (=0x4001050)
	orr     r2, r4
	blx     G2x_SetBlendAlpha_
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x2265386

.thumb
branch_2265386: @ 2265386 :thumb
	mov     r0, #0x2
	ldsh    r1, [r4, r0]
	cmp     r1, #0x8
	blt     branch_226539a
	mov     r1, #0x0
	ldr     r0, [pc, #0x34] @ 0x22653c8, (=0x4001050)
	strh    r1, [r4, #0x0]
	strh    r1, [r0, #0x0]
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x226539a

.thumb
branch_226539a: @ 226539a :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, #0x2]
	ldsh    r0, [r4, r0]
	mov     r5, #0x1
	lsl     r1, r0, #4
	asr     r0, r1, #2
	lsr     r0, r0, #29
	add     r0, r1, r0
	asr     r3, r0, #3
	mov     r0, #0x10
	sub     r0, r0, r3
	str     r0, [sp, #0x0]
	mov     r1, #0x4
	ldsh    r2, [r4, r1]
	mov     r1, r5
	ldr     r0, [pc, #0xc] @ 0x22653c8, (=0x4001050)
	lsl     r1, r2
	mov     r2, #0x8
	blx     G2x_SetBlendAlpha_
.thumb
branch_22653c2: @ 22653c2 :thumb
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x22653c6


.align 2


.word 0x4001050 @ 0x22653c8
.thumb
Function_22653cc: @ 22653cc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x7]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x7]
	ldrb    r0, [r4, #0x7]
	cmp     r0, #0xa
	bcc     branch_22653f2
	mov     r0, #0x1
	strh    r0, [r4, #0x0]
	mov     r0, #0x4
	ldsh    r0, [r4, r0]
	mov     r1, #0x3
	.hword  0x1c40 @ add r0, r0, #0x1
	blx     _s32_div_f
	strh    r1, [r4, #0x4]
	mov     r0, #0x0
	strb    r0, [r4, #0x7]
.thumb
branch_22653f2: @ 22653f2 :thumb
	pop     {r4,pc}
@ 0x22653f4

.thumb
Function_22653f4: @ 22653f4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r6, r0
	lsl     r0, r2, #1
	str     r1, [sp, #0xc]
	add     r1, r0, #0x2
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x10]
	lsl     r0, r1, #24
	mov     r4, #0x0
	lsr     r7, r0, #24
.thumb
branch_226540e: @ 226540e :thumb
	ldr     r0, [sp, #0xc]
	sub     r5, r0, r4
	bpl     branch_2265416
	.hword  0x1ced @ add r5, r5, #0x3
.thumb
branch_2265416: @ 2265416 :thumb
	mov     r1, #0x2
	add     r0, r5, #0x4
	sub     r1, r1, r4
	lsl     r0, r0, #24
	lsl     r1, r1, #24
	lsr     r0, r0, #24
	lsr     r1, r1, #24
	bl      Function_2019060
	cmp     r4, #0x0
	bne     branch_2265446
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r7, [sp, #0x8]
	add     r1, r5, #0x4
	lsl     r1, r1, #24
	mov     r2, #0x0
	ldr     r0, [r6, #0x0]
	lsr     r1, r1, #24
	mov     r3, r2
	bl      Function_2019e2c
	b       branch_2265460
@ 0x2265446

.thumb
branch_2265446: @ 2265446 :thumb
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x10]
	add     r1, r5, #0x4
	str     r0, [sp, #0x8]
	lsl     r1, r1, #24
	mov     r2, #0x0
	ldr     r0, [r6, #0x0]
	lsr     r1, r1, #24
	mov     r3, r2
	bl      Function_2019e2c
.thumb
branch_2265460: @ 2265460 :thumb
	add     r1, r5, #0x4
	lsl     r1, r1, #24
	ldr     r0, [r6, #0x0]
	lsr     r1, r1, #24
	bl      Function_2019448
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x3
	blt     branch_226540e
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2265476


.align 2, 0


.thumb
Function_2265478: @ 2265478 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x7c
	mov     r5, r0
	mov     r6, r3
	add     r0, #0x9c
	mov     r4, r1
	str     r6, [r0, #0x0]
	mov     r1, #0x8c
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r7, r2
	str     r6, [sp, #0x8]
	add     r1, #0xbc
	ldr     r0, [r4, r1]
	mov     r1, r7
	mov     r2, #0xa
	mov     r3, #0x0
	bl      Function_2009a4c
	str     r0, [r5, #0x0]
	mov     r1, #0x8c
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r6, [sp, #0xc]
	add     r1, #0xc0
	ldr     r0, [r4, r1]
	mov     r1, r7
	mov     r2, #0xb
	mov     r3, #0x0
	bl      Function_2009b04
	str     r0, [r5, #0x4]
	mov     r1, #0x8c
	str     r1, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	str     r6, [sp, #0x8]
	add     r1, #0xc4
	ldr     r0, [r4, r1]
	mov     r1, r7
	mov     r2, #0x9
	mov     r3, #0x0
	bl      Function_2009bc4
	str     r0, [r5, #0x8]
	mov     r1, #0x8c
	str     r1, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	str     r6, [sp, #0x8]
	add     r1, #0xc8
	ldr     r0, [r4, r1]
	mov     r1, r7
	mov     r2, #0x8
	mov     r3, #0x0
	bl      Function_2009bc4
	str     r0, [r5, #0xc]
	ldr     r0, [r5, #0x0]
	bl      Function_200a450
	cmp     r0, #0x0
	bne     branch_2265500
	bl      ErrorHandling
.thumb
branch_2265500: @ 2265500 :thumb
	ldr     r0, [r5, #0x4]
	bl      Function_200a640
	cmp     r0, #0x0
	bne     branch_226550e
	bl      ErrorHandling
.thumb
branch_226550e: @ 226550e :thumb
	ldr     r0, [r5, #0x0]
	bl      Function_2009d4c
	ldr     r0, [r5, #0x4]
	bl      Function_2009d4c
	mov     r1, #0x8c
	mov     r0, r1
	mov     r2, r1
	str     r1, [sp, #0x0]
	sub     r0, #0x8d
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	add     r2, #0xbc
	ldr     r2, [r4, r2]
	mov     r3, r1
	str     r2, [sp, #0x14]
	mov     r2, r1
	add     r2, #0xc0
	ldr     r2, [r4, r2]
	str     r2, [sp, #0x18]
	mov     r2, r1
	add     r2, #0xc4
	ldr     r2, [r4, r2]
	str     r2, [sp, #0x1c]
	mov     r2, r1
	add     r2, #0xc8
	ldr     r2, [r4, r2]
	str     r2, [sp, #0x20]
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	mov     r0, r5
	add     r0, #0x10
	mov     r2, r1
	bl      Function_20093b4
	ldr     r0, [r4, #0x1c]
	str     r0, [sp, #0x5c]
	mov     r0, r5
	add     r0, #0x10
	str     r0, [sp, #0x60]
	ldr     r0, [pc, #0x11c] @ 0x2265684, (=0xfffc0000)
	str     r6, [sp, #0x78]
	str     r0, [sp, #0x64]
	mov     r0, #0x3
	lsl     r0, r0, #16
	str     r0, [sp, #0x68]
	mov     r0, #0x1
	str     r0, [sp, #0x70]
	str     r0, [sp, #0x74]
	add     r0, sp, #0x5c
	bl      Function_2021b90
	mov     r1, #0x0
	str     r0, [r5, #0x34]
	bl      Function_2021cac
	mov     r0, #0x10
	mov     r1, r6
	bl      Function_2023790
	str     r0, [r5, #0x5c]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r1, r5
	ldr     r0, [r4, #0x0]
	add     r1, #0x38
	mov     r2, #0x3
	mov     r3, #0x2
	bl      Function_201a870
	mov     r0, r5
	add     r0, #0x38
	mov     r1, r6
	bl      Function_2012b20
	mov     r1, #0x1
	str     r0, [r5, #0x4c]
	bl      Function_2012b58
	mov     r1, #0x1
	mov     r3, r5
	mov     r2, r1
	add     r3, #0x50
	bl      Function_201ed94
	cmp     r0, #0x1
	beq     branch_22655ca
	bl      ErrorHandling
.thumb
branch_22655ca: @ 22655ca :thumb
	mov     r1, #0x96
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r6, [sp, #0xc]
	add     r1, #0xb6
	ldr     r0, [r4, r1]
	mov     r1, #0xe
	mov     r2, #0x6
	mov     r3, #0x0
	bl      Function_20098b8
	str     r0, [r5, #0x60]
	bl      Function_200a640
	cmp     r0, #0x0
	bne     branch_22655f2
	bl      ErrorHandling
.thumb
branch_22655f2: @ 22655f2 :thumb
	ldr     r0, [r5, #0x60]
	bl      Function_2009d4c
	mov     r0, #0x63
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	str     r0, [sp, #0x2c]
	mov     r0, r5
	add     r0, #0x38
	str     r0, [sp, #0x30]
	ldr     r0, [r4, #0x1c]
	str     r0, [sp, #0x34]
	ldr     r0, [r5, #0x60]
	bl      Function_200a72c
	str     r0, [sp, #0x38]
	ldr     r0, [r5, #0x34]
	str     r0, [sp, #0x3c]
	ldr     r0, [r5, #0x54]
	str     r0, [sp, #0x40]
	mov     r0, #0x6
	mvn     r0, r0
	str     r0, [sp, #0x44]
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [sp, #0x48]
	mov     r0, #0x0
	str     r0, [sp, #0x4c]
	str     r0, [sp, #0x50]
	mov     r0, #0x1
	str     r0, [sp, #0x54]
	str     r6, [sp, #0x58]
	ldr     r1, [r5, #0x4c]
	add     r0, sp, #0x2c
	bl      Function_2012b60
	mov     r1, #0x0
	str     r0, [r5, #0x48]
	bl      Function_20129d0
	mov     r0, r5
	add     r0, #0x38
	bl      Function_201a8fc
	mov     r2, #0x8
	mov     r0, r5
	mov     r3, #0x9
	str     r2, [sp, #0x0]
	ldr     r1, [pc, #0x30] @ 0x2265684, (=0xfffc0000)
	add     r0, #0x64
	lsl     r2, r2, #14
	lsl     r3, r3, #14
	bl      Function_2261304
	mov     r0, #0x4
	mov     r1, #0x3
	lsl     r1, r1, #16
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r0, #0x7c
	mov     r2, r1
	lsr     r3, r1, #2
	bl      Function_2261304
	mov     r0, r5
	mov     r1, #0x0
	add     r0, #0x94
	strh    r1, [r0, #0x0]
	mov     r0, #0x4
	add     r5, #0x96
	strh    r0, [r5, #0x0]
	add     sp, #0x7c
	pop     {r4-r7,pc}
@ 0x2265684

.word 0xfffc0000 @ 0x2265684
.thumb
Function_2265688: @ 2265688 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x48]
	mov     r4, r1
	bl      Function_2012bd8
	ldr     r0, [r5, #0x60]
	bl      Function_200a6dc
	mov     r0, #0x53
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	ldr     r1, [r5, #0x60]
	bl      Function_2009d68
	mov     r0, r5
	add     r0, #0x50
	bl      Function_201ee28
	ldr     r0, [r5, #0x4c]
	bl      Function_2012b48
	ldr     r0, [r5, #0x5c]
	bl      Function_20237bc
	ldr     r0, [r5, #0x34]
	bl      Function_2021bd4
	ldr     r0, [r5, #0x0]
	bl      Function_200a4e4
	ldr     r0, [r5, #0x4]
	bl      Function_200a6dc
	mov     r0, #0x52
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	ldr     r1, [r5, #0x0]
	bl      Function_2009d68
	mov     r0, #0x53
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	ldr     r1, [r5, #0x4]
	bl      Function_2009d68
	mov     r0, #0x15
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	ldr     r1, [r5, #0x8]
	bl      Function_2009d68
	mov     r0, #0x55
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	ldr     r1, [r5, #0xc]
	bl      Function_2009d68
	pop     {r3-r5,pc}
@ 0x22656fe


.align 2, 0


.thumb
Function_2265700: @ 2265700 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x1
	mov     r4, r1
	str     r0, [sp, #0x0]
	mov     r1, r2
	mov     r2, #0x2
	ldr     r0, [r5, #0x5c]
	mov     r3, r2
	bl      Function_20238a0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r1, r5
	ldr     r0, [r4, #0x0]
	add     r1, #0x38
	mov     r2, #0x3
	mov     r3, #0x2
	bl      Function_201a870
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x4c] @ 0x2265784, (=0xf0e00)
	mov     r3, r1
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, r5
	ldr     r2, [r5, #0x5c]
	add     r0, #0x38
	bl      Function_201d78c
	mov     r3, r5
	add     r3, #0x9c
	mov     r2, r5
	ldr     r0, [r5, #0x48]
	ldr     r1, [r5, #0x4c]
	ldr     r3, [r3, #0x0]
	add     r2, #0x38
	bl      Function_2012be0
	mov     r0, r5
	add     r0, #0x38
	bl      Function_201a8fc
	ldr     r0, [r5, #0x48]
	mov     r1, #0x1
	bl      Function_20129d0
	ldr     r0, [r5, #0x34]
	mov     r1, #0x1
	bl      Function_2021cac
	mov     r0, r5
	mov     r1, #0x1
	add     r0, #0x98
	strh    r1, [r0, #0x0]
	mov     r0, #0x0
	add     r5, #0x9a
	strh    r0, [r5, #0x0]
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2265782


.align 2


.word 0xf0e00 @ 0x2265784
.thumb
Function_2265788: @ 2265788 :thumb
	mov     r1, r0
	add     r1, #0x98
	ldrh    r1, [r1, #0x0]
	cmp     r1, #0x3
	beq     branch_22657a4
	cmp     r1, #0x2
	bne     branch_226579e
	mov     r1, r0
	mov     r2, #0xc
	add     r1, #0x9a
	strh    r2, [r1, #0x0]
.thumb
branch_226579e: @ 226579e :thumb
	mov     r1, #0x3
	add     r0, #0x98
	strh    r1, [r0, #0x0]
.thumb
branch_22657a4: @ 22657a4 :thumb
	bx      lr
@ 0x22657a6


.align 2, 0


.thumb
Function_22657a8: @ 22657a8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	add     r0, #0x98
	ldrh    r0, [r0, #0x0]
	mov     r4, r1
	cmp     r0, #0x3
	beq     branch_2265816
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r1, r2
	mov     r2, #0x2
	ldr     r0, [r5, #0x5c]
	mov     r3, r2
	bl      Function_20238a0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r1, r5
	ldr     r0, [r4, #0x0]
	add     r1, #0x38
	mov     r2, #0x3
	mov     r3, #0x2
	bl      Function_201a870
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x34] @ 0x226581c, (=0xf0e00)
	mov     r3, r1
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, r5
	ldr     r2, [r5, #0x5c]
	add     r0, #0x38
	bl      Function_201d78c
	mov     r3, r5
	add     r3, #0x9c
	mov     r2, r5
	ldr     r0, [r5, #0x48]
	ldr     r1, [r5, #0x4c]
	ldr     r3, [r3, #0x0]
	add     r2, #0x38
	bl      Function_2012be0
	mov     r0, r5
	add     r0, #0x38
	bl      Function_201a8fc
	mov     r0, #0x0
	add     r5, #0x96
	strh    r0, [r5, #0x0]
.thumb
branch_2265816: @ 2265816 :thumb
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x226581a


.align 2


.word 0xf0e00 @ 0x226581c
.thumb
Function_2265820: @ 2265820 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	add     r0, #0x98
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0x3
	bhi     branch_2265898
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x226583a

Jumppoints_226583a:
.hword branch_2265898 - Jumppoints_226583a - 2
.hword branch_2265842 - Jumppoints_226583a - 2
.hword branch_2265898 - Jumppoints_226583a - 2
.hword branch_226585e - Jumppoints_226583a - 2
.thumb
branch_2265842: @ 2265842 :thumb
	mov     r0, #0x94
	ldsh    r0, [r4, r0]
	cmp     r0, #0x8
	bge     branch_2265854
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x94
	strh    r1, [r0, #0x0]
	b       branch_2265898
@ 0x2265854

.thumb
branch_2265854: @ 2265854 :thumb
	mov     r0, r4
	mov     r1, #0x2
	add     r0, #0x98
	strh    r1, [r0, #0x0]
	b       branch_2265898
@ 0x226585e

.thumb
branch_226585e: @ 226585e :thumb
	mov     r0, #0x9a
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	ble     branch_2265870
	.hword  0x1e41 @ sub r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x9a
	strh    r1, [r0, #0x0]
	b       branch_2265898
@ 0x2265870

.thumb
branch_2265870: @ 2265870 :thumb
	mov     r0, #0x94
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	ble     branch_2265882
	.hword  0x1e41 @ sub r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x94
	strh    r1, [r0, #0x0]
	b       branch_2265898
@ 0x2265882

.thumb
branch_2265882: @ 2265882 :thumb
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0x98
	strh    r1, [r0, #0x0]
	ldr     r0, [r4, #0x48]
	bl      Function_20129d0
	ldr     r0, [r4, #0x34]
	mov     r1, #0x0
	bl      Function_2021cac
.thumb
branch_2265898: @ 2265898 :thumb
	mov     r1, #0x96
	ldsh    r0, [r4, r1]
	cmp     r0, #0x4
	bge     branch_22658b8
	add     r2, r0, #0x1
	mov     r0, r4
	add     r0, #0x96
	strh    r2, [r0, #0x0]
	mov     r0, r4
	ldsh    r1, [r4, r1]
	add     r0, #0x8c
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x7c
	bl      Function_2261364
.thumb
branch_22658b8: @ 22658b8 :thumb
	mov     r0, #0x94
	ldsh    r0, [r4, r0]
	str     r0, [r4, #0x74]
	mov     r0, r4
	add     r0, #0x64
	bl      Function_2261364
	ldr     r0, [r4, #0x64]
	add     r1, sp, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x7c]
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x34]
	bl      Function_2021c50
	ldr     r0, [r4, #0x48]
	bl      Function_2012938
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x22658e0

.thumb
Function_22658e0: @ 22658e0 :thumb
	mov     r2, #0x0
	strh    r2, [r0, #0x0]
	mov     r1, #0x1
	strb    r1, [r0, #0x2]
	strb    r2, [r0, #0x3]
	ldr     r3, [pc, #0x4] @ 0x22658f0, (=0x2005749)
	ldr     r0, [pc, #0x4] @ 0x22658f4, (=0x56e)
	bx      r3
@ 0x22658f0

.word 0x2005749 @ 0x22658f0
.word 0x56e @ 0x22658f4
.thumb
Function_22658f8: @ 22658f8 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldrb    r0, [r4, #0x2]
	mov     r5, r1
	mov     r6, r2
	cmp     r0, #0x0
	beq     branch_2265a00
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x5
	bhi     branch_2265a00
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x226591a

Jumppoints_226591a:
.hword branch_2265926 - Jumppoints_226591a - 2
.hword branch_2265986 - Jumppoints_226591a - 2
.hword branch_22659a0 - Jumppoints_226591a - 2
.hword branch_22659cc - Jumppoints_226591a - 2
.hword branch_22659e6 - Jumppoints_226591a - 2
.hword branch_22659fa - Jumppoints_226591a - 2
.thumb
branch_2265926: @ 2265926 :thumb
	mov     r0, #0x3
	ldsb    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, #0x3]
	ldsb    r1, [r4, r0]
	mov     r0, #0x19
	lsl     r0, r0, #12
	mul     r0, r1
	mov     r1, #0x3a
	blx     _s32_div_f
	mov     r1, #0x1
	mov     r2, r0
	lsl     r1, r1, #12
	mov     r0, r5
	add     r1, r2, r1
	bl      Function_22650f8
	mov     r0, #0x3
	ldsb    r1, [r4, r0]
	mov     r0, #0x96
	mul     r0, r1
	mov     r1, #0x3a
	blx     _s32_div_f
	mov     r2, r0
	mov     r0, #0x7
	mov     r1, r0
	add     r1, #0xf9
	add     r1, r2, r1
	bl      Function_2004fa8
	mov     r0, #0x3
	ldsb    r0, [r4, r0]
	cmp     r0, #0xc
	bne     branch_2265974
	ldr     r0, [pc, #0x94] @ 0x2265a04, (=0x56f)
	bl      Function_2005748
.thumb
branch_2265974: @ 2265974 :thumb
	mov     r0, #0x3
	ldsb    r0, [r4, r0]
	cmp     r0, #0x3a
	blt     branch_2265a00
	ldrh    r0, [r4, #0x0]
	add     sp, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	pop     {r3-r6,pc}
@ 0x2265986

.thumb
branch_2265986: @ 2265986 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	mov     r1, #0x10
	mov     r2, #0x0
	mov     r3, #0x3f
	bl      Function_200aae0
	ldrh    r0, [r4, #0x0]
	add     sp, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	pop     {r3-r6,pc}
@ 0x22659a0

.thumb
branch_22659a0: @ 22659a0 :thumb
	mov     r0, #0x1
	bl      Function_200ac1c
	cmp     r0, #0x1
	bne     branch_2265a00
	mov     r0, r5
	bl      Function_22650c8
	mov     r1, #0x2
	mov     r0, r5
	lsl     r1, r1, #12
	bl      Function_22650f8
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_226425c
	ldrh    r0, [r4, #0x0]
	add     sp, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	pop     {r3-r6,pc}
@ 0x22659cc

.thumb
branch_22659cc: @ 22659cc :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0xe
	mov     r1, #0x0
	mov     r2, #0x10
	mov     r3, #0x3f
	bl      Function_200aae0
	ldrh    r0, [r4, #0x0]
	add     sp, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	pop     {r3-r6,pc}
@ 0x22659e6

.thumb
branch_22659e6: @ 22659e6 :thumb
	mov     r0, #0x1
	bl      Function_200ac1c
	cmp     r0, #0x1
	bne     branch_2265a00
	ldrh    r0, [r4, #0x0]
	add     sp, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	pop     {r3-r6,pc}
@ 0x22659fa

.thumb
branch_22659fa: @ 22659fa :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x2]
	strh    r0, [r4, #0x0]
.thumb
branch_2265a00: @ 2265a00 :thumb
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x2265a04

.word 0x56f @ 0x2265a04
.thumb
Function_2265a08: @ 2265a08 :thumb
	mov     r0, #0x7
	mov     r1, r0
	ldr     r3, [pc, #0x4] @ 0x2265a14, (=0x2004fa9)
	add     r1, #0xf9
	bx      r3
@ 0x2265a12

.align 2
.word 0x2004fa9 @ 0x2265a14



.thumb
Function_2265a18: @ 2265a18 :thumb
	ldr     r0, [pc, #0x0] @ 0x2265a1c, (=Unknown_226664c)
	bx      lr
@ 0x2265a1c

.word Unknown_226664c @ 0x2265a1c



.thumb
Function_2265a20: @ 2265a20 :thumb
	mov     r0, #0x8
	bx      lr
@ 0x2265a24

.thumb
Function_2265a24: @ 2265a24 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_2265a18
	mov     r4, r0
	bl      Function_2265a20
	mov     r1, r0
	mov     r0, r4
	mov     r2, r5
	bl      Function_2032798
	pop     {r3-r5,pc}
@ 0x2265a3e


.align 2, 0


.thumb
Function_2265a40: @ 2265a40 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2265a44

.thumb
Function_2265a44: @ 2265a44 :thumb
	mov     r0, r3
	ldr     r3, [pc, #0x4] @ 0x2265a4c, (=0x226095d)
	bx      r3
@ 0x2265a4a


.align 2


.word Function_226095c+1 @ =0x226095d, 0x2265a4c
.thumb
Function_2265a50: @ 2265a50 :thumb
	mov     r0, r3
	ldr     r3, [pc, #0x4] @ 0x2265a58, (=0x2260965)
	bx      r3
@ 0x2265a56


.align 2


.word Function_2260964+1 @ =0x2260965, 0x2265a58
.thumb
Function_2265a5c: @ 2265a5c :thumb
	push    {r4-r6,lr}
	mov     r4, r2
	mov     r5, r0
	mov     r6, r3
	mov     r0, r6
	mov     r1, r4
	mov     r2, r5
	bl      Function_2260988
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_2265a80
	mov     r0, r6
	mov     r1, r4
	mov     r2, r5
	bl      Function_226096c
.thumb
branch_2265a80: @ 2265a80 :thumb
	pop     {r4-r6,pc}
@ 0x2265a82


.align 2, 0


.thumb
Function_2265a84: @ 2265a84 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r2, #0x0]
	mov     r0, r3
	mov     r2, r4
	bl      Function_2260994
	pop     {r4,pc}
@ 0x2265a94

.thumb
Function_2265a94: @ 2265a94 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, r2
	mov     r0, r3
	mov     r2, r4
	bl      Function_22609b4
	pop     {r4,pc}
@ 0x2265aa4

.thumb
Function_2265aa4: @ 2265aa4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r2, #0x0]
	mov     r0, r3
	mov     r2, r4
	bl      Function_22609e4
	pop     {r4,pc}
@ 0x2265ab4

.thumb
Function_2265ab4: @ 2265ab4 :thumb
	mov     r0, r3
	ldr     r3, [pc, #0x4] @ 0x2265abc, (=0x2260a49)
	bx      r3
@ 0x2265aba


.align 2


.word Function_2260a48+1 @ =0x2260a49, 0x2265abc
.thumb
Function_2265ac0: @ 2265ac0 :thumb
	push    {r3,lr}
	ldr     r1, [r2, #0x0]
	cmp     r0, #0x0
	bne     branch_2265ace
	mov     r0, r3
	bl      Function_22609d8
.thumb
branch_2265ace: @ 2265ace :thumb
	pop     {r3,pc}
@ 0x2265ad0

.thumb
Function_2265ad0: @ 2265ad0 :thumb
	mov     r0, #0x14
	bx      lr
@ 0x2265ad4

.thumb
Function_2265ad4: @ 2265ad4 :thumb
	mov     r0, #0x10
	bx      lr
@ 0x2265ad8

.thumb
Function_2265ad8: @ 2265ad8 :thumb
	mov     r0, #0x4
	bx      lr
@ 0x2265adc

.thumb
Function_2265adc: @ 2265adc :thumb
	mov     r0, #0x4
	bx      lr



Unknown_2265ae0: @ 0x2265ae0
.incbin "./baserom/overlay/overlay_0115.bin", 0x56a0, 0x2265ae4 - 0x2265ae0

Unknown_2265ae4: @ 0x2265ae4
.incbin "./baserom/overlay/overlay_0115.bin", 0x56a4, 0x2265ae8 - 0x2265ae4

Unknown_2265ae8: @ 0x2265ae8
.incbin "./baserom/overlay/overlay_0115.bin", 0x56a8, 0x2265af0 - 0x2265ae8

Unknown_2265af0: @ 0x2265af0
.incbin "./baserom/overlay/overlay_0115.bin", 0x56b0, 0x2265af6 - 0x2265af0

Unknown_2265af6: @ 0x2265af6
.incbin "./baserom/overlay/overlay_0115.bin", 0x56b6, 0x2265afc - 0x2265af6

Unknown_2265afc: @ 0x2265afc
.incbin "./baserom/overlay/overlay_0115.bin", 0x56bc, 0x2265b02 - 0x2265afc

Unknown_2265b02: @ 0x2265b02
.incbin "./baserom/overlay/overlay_0115.bin", 0x56c2, 0x2265b0a - 0x2265b02

Unknown_2265b0a: @ 0x2265b0a
.incbin "./baserom/overlay/overlay_0115.bin", 0x56ca, 0x2265b0b - 0x2265b0a

Unknown_2265b0b: @ 0x2265b0b
.incbin "./baserom/overlay/overlay_0115.bin", 0x56cb, 0x2265b14 - 0x2265b0b

Unknown_2265b14: @ 0x2265b14
.incbin "./baserom/overlay/overlay_0115.bin", 0x56d4, 0x2265b20 - 0x2265b14

Unknown_2265b20: @ 0x2265b20
.incbin "./baserom/overlay/overlay_0115.bin", 0x56e0, 0x2265b2c - 0x2265b20

Unknown_2265b2c: @ 0x2265b2c
.incbin "./baserom/overlay/overlay_0115.bin", 0x56ec, 0x2265b3c - 0x2265b2c

Unknown_2265b3c: @ 0x2265b3c
.incbin "./baserom/overlay/overlay_0115.bin", 0x56fc, 0x2265b44 - 0x2265b3c

Unknown_2265b44: @ 0x2265b44
.incbin "./baserom/overlay/overlay_0115.bin", 0x5704, 0x2265b50 - 0x2265b44

Unknown_2265b50: @ 0x2265b50
.incbin "./baserom/overlay/overlay_0115.bin", 0x5710, 0x2265b5c - 0x2265b50

Unknown_2265b5c: @ 0x2265b5c
.incbin "./baserom/overlay/overlay_0115.bin", 0x571c, 0x2265b6c - 0x2265b5c

Unknown_2265b6c: @ 0x2265b6c
.incbin "./baserom/overlay/overlay_0115.bin", 0x572c, 0x2265b7c - 0x2265b6c

Unknown_2265b7c: @ 0x2265b7c
.incbin "./baserom/overlay/overlay_0115.bin", 0x573c, 0x2265b94 - 0x2265b7c

Unknown_2265b94: @ 0x2265b94
.incbin "./baserom/overlay/overlay_0115.bin", 0x5754, 0x2265bb0 - 0x2265b94

Unknown_2265bb0: @ 0x2265bb0
.incbin "./baserom/overlay/overlay_0115.bin", 0x5770, 0x2265bcc - 0x2265bb0

Unknown_2265bcc: @ 0x2265bcc
.incbin "./baserom/overlay/overlay_0115.bin", 0x578c, 0x2265be8 - 0x2265bcc

Unknown_2265be8: @ 0x2265be8
.incbin "./baserom/overlay/overlay_0115.bin", 0x57a8, 0x2265c04 - 0x2265be8

Unknown_2265c04: @ 0x2265c04
.incbin "./baserom/overlay/overlay_0115.bin", 0x57c4, 0x2265c20 - 0x2265c04

Unknown_2265c20: @ 0x2265c20
.incbin "./baserom/overlay/overlay_0115.bin", 0x57e0, 0x226664c - 0x2265c20


Unknown_226664c: @ 0x226664c
.word Function_2265a44+1 @ =0x2265a45, 0x226664c
.word Function_2265a40+1 @ =0x2265a41, 0x2266650
.word 0x0 @ 0x2266654
.word Function_2265a50+1 @ =0x2265a51, 0x2266658
.word Function_2265a40+1 @ =0x2265a41, 0x226665c
.word 0x0 @ 0x2266660
.word Function_2265a5c+1 @ =0x2265a5d, 0x2266664
.word Function_2265ad0+1 @ =0x2265ad1, 0x2266668
.word 0x0 @ 0x226666c
.word Function_2265a84+1 @ =0x2265a85, 0x2266670
.word Function_2265ad8+1 @ =0x2265ad9, 0x2266674
.word 0x0 @ 0x2266678
.word Function_2265a94+1 @ =0x2265a95, 0x226667c
.word Function_2265ad4+1 @ =0x2265ad5, 0x2266680
.word 0x0 @ 0x2266684
.word Function_2265ac0+1 @ =0x2265ac1, 0x2266688
.word Function_2265adc+1 @ =0x2265add, 0x226668c
.word 0x0 @ 0x2266690
.word Function_2265aa4+1 @ =0x2265aa5, 0x2266694
.word Function_2265ad8+1 @ =0x2265ad9, 0x2266698
.word 0x0 @ 0x226669c
.word Function_2265ab4+1 @ =0x2265ab5, 0x22666a0
.word Function_2265a40+1 @ =0x2265a41, 0x22666a4
@ 0x22666a8


.incbin "./baserom/overlay/overlay_0115.bin", 0x6268, 0x22666ac - 0x22666a8


.globl __overlay115_static_init_start
__overlay115_static_init_start:
.incbin "./baserom/overlay/overlay_0115.bin", 0x626c, 0x22666b0 - 0x22666ac
.globl __overlay115_static_init_end
__overlay115_static_init_end:


.incbin "./baserom/overlay/overlay_0115.bin", 0x6270, 0x22666c0 - 0x22666b0


@end 0x22666c0



.section .overlay115_bss, "ax"

Unknown_22666c0: @ 0x22666c0
.zero 0x40



