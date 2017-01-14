

.section .iwram11, "ax"


.thumb
Function_221f800: @ 221f800 :thumb
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_221f810
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x8] @ 0x221f814, (=Unknown_221fbd0)
	ldr     r0, [r0, r1]
	bx      lr

branch_221f810: @ 221f810 :thumb
	ldr     r0, [pc, #0x4] @ 0x221f818, (=Unknown_221f96c)
	bx      lr
@ 0x221f814

.word Unknown_221fbd0 @ 0x221f814
.word Unknown_221f96c @ 0x221f818



.thumb
Function_221f81c: @ 221f81c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, r1
	mov     r4, r3
	bl      Function_221f800
	ldr     r3, [sp, #0x10]
	mov     r1, r0
	mov     r0, #0x20
	lsl     r3, r3, #20
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r2, r4
	lsr     r3, r3, #16
	bl      Function_2002fbc
	pop     {r3-r5,pc}
@ 0x221f83e


.align 2, 0
.thumb
Function_221f840: @ 221f840 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r1, #0x12
	lsl     r1, r1, #10
	mov     r4, r0
	bl      malloc
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r3, #0x12
	ldr     r0, [pc, #0x28] @ 0x221f880, (=Function_221f914+1)
	ldr     r1, [pc, #0x28] @ 0x221f884, (=Function_221f930+1)
	lsl     r3, r3, #10
	str     r4, [sp, #0x4]
	bl      Function_2014014
	mov     r4, r0
	bl      Function_2014784
	mov     r2, r0
	beq     branch_221f878
	mov     r0, #0x1
	mov     r1, #0xe1
	lsl     r0, r0, #12
	lsl     r1, r1, #14
	bl      Function_20206bc
branch_221f878: @ 221f878 :thumb
	mov     r0, r4
	add     sp, #0x8
	pop     {r4,pc}
@ 0x221f87e

.align 2
.word Function_221f914+1 @ 0x221f880
.word Function_221f930+1 @ 0x221f884



.thumb
Function_221f888: @ 221f888 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r1, #0x42
	lsl     r1, r1, #8
	mov     r4, r0
	bl      malloc
	mov     r2, r0
	bne     branch_221f8a0
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r4,pc}

branch_221f8a0: @ 221f8a0 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r3, #0x42
	ldr     r0, [pc, #0x28] @ 0x221f8d0, (=Function_221f914+1)
	ldr     r1, [pc, #0x28] @ 0x221f8d4, (=Function_221f930+1)
	lsl     r3, r3, #8
	str     r4, [sp, #0x4]
	bl      Function_2014014
	mov     r4, r0
	bl      Function_2014784
	mov     r2, r0
	beq     branch_221f8c8
	mov     r0, #0x1
	mov     r1, #0xe1
	lsl     r0, r0, #12
	lsl     r1, r1, #14
	bl      Function_20206bc
branch_221f8c8: @ 221f8c8 :thumb
	mov     r0, r4
	add     sp, #0x8
	pop     {r4,pc}
@ 0x221f8ce

.align 2
.word Function_221f914+1 @ 0x221f8d0
.word Function_221f930+1 @ 0x221f8d4



.thumb
Function_221f8d8: @ 221f8d8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_2014730
	mov     r4, r0
	mov     r0, r5
	bl      Function_201411c
	mov     r0, r4
	bl      free
	pop     {r3-r5,pc}
@ 0x221f8f0

.thumb
Function_221f8f0: @ 221f8f0 :thumb
	push    {r3,lr}
	bl      Call_G3X_Reset
	bl      Function_2014680
	cmp     r0, #0x0
	beq     branch_221f912
	bl      Function_201469c
	cmp     r0, #0x0
	ble     branch_221f90e
	bl      Call_G3X_Reset
	blx     Function_20a73c0
branch_221f90e: @ 221f90e :thumb
	bl      Function_20146c0
branch_221f912: @ 221f912 :thumb
	pop     {r3,pc}
@ 0x221f914


.thumb
Function_221f914: @ 221f914 :thumb
	push    {r4,lr}
	ldr     r3, [pc, #0x14] @ 0x221f92c, (=0x2100dec)
	mov     r2, #0x0
	ldr     r3, [r3, #0x0]
	blx     r3
	mov     r4, r0
	bl      Function_20145b4
	lsl     r0, r4, #16
	lsr     r0, r0, #13
	pop     {r4,pc}
@ 0x221f92a


.align 2


.word 0x2100dec @ 0x221f92c
.thumb
Function_221f930: @ 221f930 :thumb
	push    {r4,lr}
	ldr     r3, [pc, #0x14] @ 0x221f948, (=0x2100df4)
	mov     r2, #0x0
	ldr     r3, [r3, #0x0]
	blx     r3
	mov     r4, r0
	bl      Function_20145f4
	lsl     r0, r4, #16
	lsr     r0, r0, #13
	pop     {r4,pc}
@ 0x221f946


.align 2


.word 0x2100df4 @ 0x221f948
@ 0x221f94c


.incbin "./baserom/overlay/overlay_0011.bin", 0x14c, 0x221f96c - 0x221f94c


Unknown_221f96c: @ 0x221f96c
.incbin "./baserom/overlay/overlay_0011.bin", 0x16c, 0x221fbd0 - 0x221f96c

Unknown_221fbd0: @ 0x221fbd0
.incbin "./baserom/overlay/overlay_0011.bin", 0x3d0, 0x221fc20 - 0x221fbd0


@end 0x221fc20




