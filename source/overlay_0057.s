

.section .iwram57, "ax"


.thumb
Function_22561c0: @ 22561c0 :thumb
	push    {r3,lr}
	mov     r2, #0x2
	mov     r0, #0x3
	mov     r1, #0x4d
	lsl     r2, r2, #16
	bl      0x209d408
	bl      0x2086468
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x22561d6


.align 2, 0
.thumb
Function_22561d8: @ 22561d8 :thumb
	push    {r3,lr}
	bl      0x208bc80
	ldr     r1, [r0, #0x8]
	mov     r0, #0x4d
	bl      Function_2256384
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x22561ea


.align 2, 0


.thumb
Function_22561ec: @ 22561ec :thumb
	push    {r3,lr}
	mov     r0, #0x4d
	bl      0x209d4bc
	mov     r0, #0x0
	ldr     r1, [pc, #0xc] @ 0x2256204, (=0x20f6824)
	mvn     r0, r0
	bl      0x2086304
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2256202


.align 2


.word 0x20f6824 @ 0x2256204
.thumb
Function_2256208: @ 2256208 :thumb
	push    {r3,lr}
	mov     r2, #0x2
	mov     r0, #0x3
	mov     r1, #0x4d
	lsl     r2, r2, #16
	bl      0x209d408
	bl      0x2086468
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x225621e


.align 2, 0


.thumb
Function_2256220: @ 2256220 :thumb
	push    {r4,lr}
	bl      0x208bc80
	ldr     r4, [r0, #0x8]
	mov     r0, #0x4d
	mov     r1, r4
	mov     r2, #0x1
	bl      Function_22562ec
	mov     r0, r4
	bl      0x20ab29c
	bl      0x209c874
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2256240

.thumb
Function_2256240: @ 2256240 :thumb
	push    {r3,lr}
	mov     r0, #0x4d
	bl      0x209d4bc
	mov     r0, #0x0
	ldr     r1, [pc, #0xc] @ 0x2256258, (=0x20ea10c)
	mvn     r0, r0
	bl      0x2086304
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2256256


.align 2


.word 0x20ea10c @ 0x2256258
.thumb
Function_225625c: @ 225625c :thumb
	push    {r3,lr}
	mov     r2, #0x2
	mov     r0, #0x3
	mov     r1, #0x4d
	lsl     r2, r2, #16
	bl      0x209d408
	bl      0x2086468
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2256272


.align 2, 0


.thumb
Function_2256274: @ 2256274 :thumb
	push    {r3-r5,lr}
	bl      0x208bc80
	ldr     r4, [r0, #0x8]
	mov     r0, r4
	bl      0x20ab10c
	mov     r5, r0
	mov     r0, #0x4d
	mov     r1, r4
	bl      Function_2256370
	mov     r0, r4
	mov     r1, #0x0
	bl      0x20acea8
	mov     r0, r5
	bl      0x20ab150
	cmp     r0, #0x0
	beq     branch_22562a8
	mov     r0, r5
	bl      0x20ab180
	cmp     r0, #0x0
	bne     branch_22562c2
.thumb
branch_22562a8: @ 22562a8 :thumb
	mov     r0, r4
	bl      0x20ab118
	bl      0x20ab228
	mov     r0, r5
	bl      0x20ab124
	mov     r0, r4
	bl      0x20ff6a8
	bl      0x20fcfcc
.thumb
branch_22562c2: @ 22562c2 :thumb
	mov     r0, r4
	bl      0x20ab29c
	bl      0x209c874
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x22562d0

.thumb
Function_22562d0: @ 22562d0 :thumb
	push    {r3,lr}
	mov     r0, #0x4d
	bl      0x209d4bc
	mov     r0, #0x0
	ldr     r1, [pc, #0xc] @ 0x22562e8, (=0x20ea11c)
	mvn     r0, r0
	bl      0x2086304
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x22562e6


.align 2


.word 0x20ea11c @ 0x22562e8
.thumb
Function_22562ec: @ 22562ec :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r6, r2
	bl      0x20ab10c
	bl      0x20ab124
	mov     r0, r5
	bl      0x20ab118
	bl      0x20ab1c4
	mov     r0, r5
	bl      0x20b08e0
	mov     r4, r0
	bl      0x20a279c
	mov     r2, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      0x20b084c
	mov     r0, r5
	bl      0x20f1448
	mov     r0, r5
	bl      0x20ab278
	mov     r4, r0
	bl      0x20a279c
	mov     r7, r0
	cmp     r6, #0x0
	beq     branch_225633e
	mov     r0, r4
	mov     r1, r7
	bl      0x20ab35c
.thumb
branch_225633e: @ 225633e :thumb
	mov     r0, r4
	bl      0x20ab370
	mov     r1, r0
	mov     r0, r7
	mov     r2, #0x0
	bl      0x20e1dfc
	mov     r1, r0
	lsl     r1, r1, #24
	mov     r0, r4
	lsr     r1, r1, #24
	bl      0x20ab3d0
	mov     r0, r5
	bl      0x20acc94
	ldr     r1, [sp, #0x0]
	ldr     r2, [pc, #0x8] @ 0x225636c, (=0x21d0fa0)
	mov     r3, #0x76
	bl      0x20acfd0
	pop     {r3-r7,pc}
@ 0x225636c

.word 0x21d0fa0 @ 0x225636c
.thumb
Function_2256370: @ 2256370 :thumb
	push    {r3,lr}
	mov     r0, r1
	bl      0x20a9ae8
	cmp     r0, #0x0
	bne     branch_2256382
	mov     r0, #0x0
	blx 0x2149324
.thumb
branch_2256382: @ 2256382 :thumb
	pop     {r3,pc}
@ 0x2256384

.thumb
Function_2256384: @ 2256384 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	bl      0x20a9bdc
	mov     r0, r4
	bl      0x20c25e8
	mov     r0, r4
	bl      0x20ab278
	ldr     r1, [pc, #0x10] @ 0x22563ac, (=0xbb8)
	bl      0x20ab3b8
	mov     r0, r4
	bl      0x20d5c24
	bl      0x20efd6c
	pop     {r4,pc}
@ 0x22563ac

.word 0xbb8 @ 0x22563ac



.word 0x21d0e1d @ 0x22563b0
.word 0x21d0e35 @ 0x22563b4
.word 0x21d0e91 @ 0x22563b8
.word 0xffffffff @ 0x22563bc
.word 0x21d0dc9 @ 0x22563c0
.word 0x21d0de1 @ 0x22563c4
.word 0x21d0e01 @ 0x22563c8
.word 0xffffffff @ 0x22563cc
.word 0x21d0d81 @ 0x22563d0
.word 0x21d0d99 @ 0x22563d4
.word 0x21d0dad @ 0x22563d8
.word 0xffffffff @ 0x22563dc
@ 0x22563e0


.incbin "./baserom/overlay/overlay_0057.bin", 0x220, 0x22565c0 - 0x22563e0


@end 0x22565c0




