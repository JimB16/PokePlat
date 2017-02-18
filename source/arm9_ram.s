
.section .bss

/*******************************************
0x1ff8660 - 0x1ff8680
- overlay_0003.bin
*******************************************/

/*******************************************
0x2000000 - 0x2101d0c
- arm9.bin
*******************************************/

.org 0x2101d20 - 0x02000000

.globl RAM_2101d20
RAM_2101d20:
    .zero 0x18

.globl RAM_2101d38
RAM_2101d38:
    .zero 0xc

.globl RAM_2101d44
RAM_2101d44:
    .byte 0 @ Flags
    .byte 0
    .hword 0
.globl RAM_2101d48
RAM_2101d48:
    .word 0 @ =RAM_2101d4c
.globl RAM_2101d4c
RAM_2101d4c:
    .zero 0x84
    .zero 0x10

/*
speed 9 (blazingly fast!)
94000130 FEFB0000
62101D40 00000000
B2101D40 00000000
20000078 00000008
D2000000 00000000
[2101db8] = 0x0-0x8
*/

.org 0x2101df0 - 0x02000000

.globl RAM_2101df0
RAM_2101df0:
    .word 0, 0
.globl RAM_2101df8
RAM_2101df8:


.org 0x21beb80 - 0x02000000

.globl RAM_21beb80
RAM_21beb80:
    .zero 0x20
.globl RAM_21beba0
RAM_21beba0:

.org 0x21bf370 - 0x02000000

.globl RAM_21bf370
RAM_21bf370:
    .zero 0x40
.globl RAM_21bf3b0
RAM_21bf3b0:
    .zero 0x40
.globl RAM_21bf3f0
RAM_21bf3f0:
    .zero 0x40
.globl RAM_21bf430
RAM_21bf430:
    .word 0
.globl BLDCNT_SUB_Table
BLDCNT_SUB_Table: @ 0x21bf434
    .zero 0x20
.globl BLDCNT_Table
BLDCNT_Table: @ 21bf454
    .zero 0x20
.globl RAM_21bf474
RAM_21bf474:
    .word 0
.globl RAM_21bf478
RAM_21bf478:
    .word 0
.globl RAM_21bf47c
RAM_21bf47c:
    .word 0, 0, 0
.globl RAM_21bf488
RAM_21bf488:
    .zero 0x30
.globl RAM_21bf4b8
RAM_21bf4b8:
    .zero 0x30
.globl RAM_21bf4e8
RAM_21bf4e8:
    .zero 0x18
.globl RAM_21bf500
RAM_21bf500:


.org 0x21bf5b4 - 0x02000000

.globl RAM_21bf5b4
RAM_21bf5b4:
    .zero 0x14
.globl RAM_21bf5c8
RAM_21bf5c8:
    .word 0, 0, 0, 0
.globl RAM_21bf5d8
RAM_21bf5d8:
    .word 0, 0, 0, 0
.globl RAM_21bf5e8
RAM_21bf5e8:
    .zero 0x28
.globl RAM_21bf610
RAM_21bf610:
    .word 0, 0
.globl RAM_21bf618
RAM_21bf618:
    .zero 0x40
.globl RAM_21bf658
RAM_21bf658:
    .zero 0x20
.globl RAM_21bf678
RAM_21bf678:
    .word 0
.globl RAM_21bf67c
RAM_21bf67c:
    .zero 0x40

.globl RAM_21bf6bc
RAM_21bf6bc:
    .zero 0x20
.globl RAM_21bf6dc
RAM_21bf6dc:


.org 0x21bfae8 - 0x02000000

.globl RAM_21bfae8
RAM_21bfae8:
    .word 0, 0

@ init at branch_2017eaa:
@ 27ffda0 init with OS_SetArenaLo
@ branch_201786a: calculate offset
@ Collection of Pointers to DataStructures
@ TODO TODO TODO
.globl RAM_21bfaf0
RAM_21bfaf0:
    .zero 0x1c


.globl RAM_21bfb0c
RAM_21bfb0c:
    .word 0
.globl RAM_21bfb10
RAM_21bfb10:
    .word 0, 0
.globl RAM_21bfb18
RAM_21bfb18:
    .word 0
.globl RAM_21bfb1c
RAM_21bfb1c:
    .word 0


.org 0x21c0110 - 0x02000000

.globl RAM_21c0110
RAM_21c0110:


.org 0x21c0490 - 0x02000000

.globl RAM_21c0490
RAM_21c0490:
    .zero 0x48
.globl RAM_21c04d8
RAM_21c04d8:
    .word 0, 0
.globl RAM_21c04e0
RAM_21c04e0:
    .zero 0x20
.globl RAM_21c0500
RAM_21c0500:
    .zero 0x200
.globl RAM_21c0700
RAM_21c0700:
    .word 0
.globl RAM_21c0704
RAM_21c0704:
    .word 0, 0, 0
.globl RAM_21c0710
RAM_21c0710:
    .zero 0x34
.globl RAM_21c0744
RAM_21c0744:
    .word 0, 0, 0, 0, 0, 0, 0
.globl RAM_21c0760
RAM_21c0760:
    .word 0
.globl RAM_21c0764
RAM_21c0764:
    .word 0
.globl RAM_21c0768
RAM_21c0768:
    .word 0, 0
.globl RAM_21c0770
RAM_21c0770:
    .word 0
.globl RAM_21c0774
RAM_21c0774:
    .word 0, 0
.globl RAM_21c077c
RAM_21c077c:
    .word 0, 0, 0
.globl RAM_21c0788
RAM_21c0788:
    .word 0, 0, 0
.globl RAM_21c0794
RAM_21c0794:
    .word 0, 0
.globl RAM_21c079c
RAM_21c079c:
    .word 0
.globl RAM_21c07a0
RAM_21c07a0:
    .word 0
.globl RAM_21c07a4
RAM_21c07a4:
    .word 0
.globl RAM_21c07a8
RAM_21c07a8:
    .word 0, 0
.globl RAM_21c07b0
RAM_21c07b0:
    .word 0
.globl RAM_21c07b4
RAM_21c07b4:
    .word 0
.globl RAM_21c07b8
RAM_21c07b8:
    .word 0, 0, 0
.globl RAM_21c07c4
RAM_21c07c4:
    .word 0, 0, 0
.globl RAM_21c07d0
RAM_21c07d0:
    .word 0
.globl RAM_21c07d4
RAM_21c07d4:
    .word 0
.globl RAM_21c07d8
RAM_21c07d8:
    .word 0
.globl RAM_21c07dc
RAM_21c07dc: @ 0x21c07dc
    .word 0
.globl RAM_21c07e0
RAM_21c07e0:
    .word 0, 0, 0, 0
.globl RAM_21c07f0
RAM_21c07f0:
    .word 0
.globl RAM_21c07f4 @ Flagsize = 0x16c bytes
RAM_21c07f4:
    .word 0, 0
.globl RAM_21c07fc
RAM_21c07fc:
    .zero 0x4c
.globl RAM_21c0848
RAM_21c0848:
    .word 0
.globl RAM_21c084c
RAM_21c084c:
    .word 0
.globl RAM_21c0850
RAM_21c0850:
    .word 0, 0, 0
.globl RAM_21c085c
RAM_21c085c:
    .zero 0x40
.globl RAM_21c089c
RAM_21c089c:
    .word 0
.globl RAM_21c08a0
RAM_21c08a0:


.org 0x21c0a30 - 0x02000000

.globl RAM_21c0a30
RAM_21c0a30:
    .word 0
.globl RAM_21c0a34
RAM_21c0a34:


.org 0x21c3a34 - 0x02000000

.globl RAM_21c3a34
RAM_21c3a34:
    .word 0
.globl RAM_21c3a38
RAM_21c3a38:
    .word 0
.globl RAM_21c3a3c
RAM_21c3a3c:
    .word 0, 0, 0
.globl RAM_21c3a48
RAM_21c3a48:
    .word 0, 0, 0
.globl RAM_21c3a54
RAM_21c3a54:
    .word 0
    .byte 0
.globl RAM_21c3a59
RAM_21c3a59:
    .byte 0
.globl RAM_21c3a5a
RAM_21c3a5a:
    .byte 0, 0
    .hword 0
.globl RAM_21c3a5e
RAM_21c3a5e:
    .hword 0
.globl RAM_21c3a60
RAM_21c3a60:
    .zero 0x20
.globl RAM_21c3a80
RAM_21c3a80:
    .zero 0x20
.globl RAM_21c3aa0
RAM_21c3aa0:
    .word 0
.globl RAM_21c3aa4
RAM_21c3aa4:
    .word 0, 0, 0
.globl RAM_21c3ab0
RAM_21c3ab0:
    .word 0
.globl RAM_21c3ab4
RAM_21c3ab4:
    .word 0, 0, 0
.globl RAM_21c3ac0
RAM_21c3ac0:
    .word 0, 0, 0, 0, 0
.globl RAM_21c3ad4
RAM_21c3ad4:
    .word 0
.globl RAM_21c3ad8
RAM_21c3ad8:
    .word 0
.globl RAM_21c3adc
RAM_21c3adc:
    .word 0, 0, 0, 0, 0
.globl RAM_21c3af0
RAM_21c3af0:
    .word 0
.globl RAM_21c3af4
RAM_21c3af4:
    .zero 0x10
.globl RAM_21c3b04
RAM_21c3b04:
    .hword 0
    .hword 0
.globl RAM_21c3b08
RAM_21c3b08:
    .zero 0x100
.globl RAM_21c3c08
RAM_21c3c08:
    .zero 0x400
.globl RAM_21c4008
RAM_21c4008:
    .zero 0x40
.globl RAM_21c4048
RAM_21c4048:
    .zero 0x100
.globl RAM_21c4148
RAM_21c4148:
    .zero 0x400
.globl RAM_21c4548
RAM_21c4548:
    .zero 0x40
.globl RAM_21c4588
RAM_21c4588:
    .zero 0x100
.globl RAM_21c4688
RAM_21c4688:
    .zero 0x400
.globl RAM_21c4a88
RAM_21c4a88:
    .zero 0x40
.globl RAM_21c4ac8
RAM_21c4ac8:
    .word 0, 0, 0, 0
.globl RAM_21c4ad8
RAM_21c4ad8:
    .zero 0x80
.globl RAM_21c4b58
RAM_21c4b58:
    .zero 4
.globl RAM_21c4b5c
RAM_21c4b5c:
    .zero 0x100-4
.globl RAM_21c4c58
RAM_21c4c58:
    .zero 0x10
.globl RAM_21c4c68
RAM_21c4c68:
    .zero 0x4
.globl RAM_21c4c6c
RAM_21c4c6c:
    .zero 0x300-0x10-0x4
.globl RAM_21c4f58
RAM_21c4f58:
    .zero 0x300
.globl RAM_21c5258
RAM_21c5258:
    .zero 0x370
.globl RAM_21c55c8
RAM_21c55c8:
    .zero 0x90
.globl RAM_21c5658
RAM_21c5658:
    .zero 0x4
.globl RAM_21c565c
RAM_21c565c:


.org 0x21c5a60 - 0x02000000

.globl RAM_21c5a60
RAM_21c5a60:
    .zero 0xc
.globl RAM_21c5a6c
RAM_21c5a6c:
    .zero 0x1c
.globl RAM_21c5a88
RAM_21c5a88:
    .zero 0x4
.globl RAM_21c5a8c
RAM_21c5a8c:
    .zero 0x8
.globl RAM_21c5a94
RAM_21c5a94:
    .zero 0x44
.globl RAM_21c5ad8
RAM_21c5ad8:
    .zero 0x34
.globl RAM_21c5b0c
RAM_21c5b0c:
    .zero 0x28
.globl RAM_21c5b34
RAM_21c5b34:
    .zero 0x14
.globl RAM_21c5b48
RAM_21c5b48:
    .zero 0x24
.globl RAM_21c5b6c
RAM_21c5b6c:
    .zero 0xc
.globl RAM_21c5b78
RAM_21c5b78:
    .zero 0x14
.globl RAM_21c5b8c
RAM_21c5b8c:
    .zero 0x30
.globl RAM_21c5bbc
RAM_21c5bbc:
    .zero 0x30
.globl RAM_21c5bec
RAM_21c5bec:
    .zero 0xe0
.globl RAM_21c5ccc
RAM_21c5ccc:
    .zero 0xc
.globl RAM_21c5cd8
RAM_21c5cd8:
    .zero 0xc
.globl RAM_21c5ce4
RAM_21c5ce4:
    .zero 0xc
.globl RAM_21c5cf0
RAM_21c5cf0:
    .zero 0x4
.globl RAM_21c5cf4
RAM_21c5cf4:


.org 0x21c6af4 - 0x02000000

.globl RAM_21c6af4
RAM_21c6af4:
    .word 0
.globl RAM_21c6af8
RAM_21c6af8:
    .word 0
.globl RAM_21c6afc
RAM_21c6afc:
    .word 0
.globl RAM_21c6b00
RAM_21c6b00:
    .word 0
.globl RAM_21c6b04
RAM_21c6b04:
    .word 0
.globl RAM_21c6b08
RAM_21c6b08:


.org 0x21c70f4 - 0x02000000

.globl RAM_21c70f4
RAM_21c70f4:
    .zero 0x40
.globl RAM_21c7134
RAM_21c7134:


.org 0x21c89f4 - 0x02000000

.globl RAM_21c89f4
RAM_21c89f4:
    .zero 0x4
.globl RAM_21c89f8
RAM_21c89f8:
    .zero 0x8
.globl RAM_21c8a00
RAM_21c8a00:
    .zero 0x10
.globl RAM_21c8a10
RAM_21c8a10:
    .zero 0xc
.globl RAM_21c8a1c
RAM_21c8a1c:


.org 0x21cae00 - 0x02000000

.globl RAM_21cae00
RAM_21cae00:
    .zero 0xc
.globl RAM_21cae0c
RAM_21cae0c:
    .zero 0x140
.globl RAM_21caf4c
RAM_21caf4c:
    .zero 0xc
.globl RAM_21caf58
RAM_21caf58:
    .zero 0xc
.globl RAM_21caf64
RAM_21caf64:
    .zero 0x440
.globl RAM_21cb3a4
RAM_21cb3a4:
    .zero 0x8
.globl RAM_21cb3ac
RAM_21cb3ac:
    .zero 0x10
.globl RAM_21cb3bc
RAM_21cb3bc:
    .zero 0x4
.globl RAM_21cb3c0
RAM_21cb3c0:
    .zero 0x4
.globl RAM_21cb3c4
RAM_21cb3c4:


.org 0x21cb824 - 0x02000000

.globl RAM_21cb824
RAM_21cb824:
    .zero 0x4
.globl RAM_21cb828
RAM_21cb828:
    .zero 0xc
.globl RAM_21cb834
RAM_21cb834:
    .zero 0x40
.globl RAM_21cb874
RAM_21cb874:
    .zero 0x80
.globl RAM_21cb8f4
RAM_21cb8f4:
    .zero 0x8
.globl RAM_21cb8fc
RAM_21cb8fc:
    .zero 0x40
.globl RAM_21cb93c
RAM_21cb93c:
    .zero 0x54
.globl RAM_21cb990
RAM_21cb990:
    .zero 0x560
.globl RAM_21cbef0
RAM_21cbef0:
    .zero 0x4
.globl RAM_21cbef4
RAM_21cbef4:
    .zero 0x3c
.globl RAM_21cbf30
RAM_21cbf30:
    .zero 0xc
.globl RAM_21cbf3c
RAM_21cbf3c:


.org 0x21cc5a8 - 0x02000000

.globl RAM_21cc5a8
RAM_21cc5a8:
    .zero 0x18
.globl RAM_21cc5c0
RAM_21cc5c0:
    .zero 0xc
.globl RAM_21cc5cc
RAM_21cc5cc:


.org 0x21ccb9c - 0x02000000

.globl RAM_21ccb9c
RAM_21ccb9c:
    .hword 0

.globl RAM_21ccb9e
RAM_21ccb9e:
    .hword 0

.globl RAM_21ccba0
RAM_21ccba0: @ BankForLCDC
    .hword 0
.globl RAM_21ccba2
RAM_21ccba2: @ BankForBG
    .hword 0
.globl RAM_21ccba4
RAM_21ccba4: @ BankForOBJ
    .hword 0
.globl RAM_21ccba6
RAM_21ccba6: @ BankForARM7
    .hword 0
.globl RAM_21ccba8
RAM_21ccba8: @ BankForTex
    .hword 0
.globl RAM_21ccbaa
RAM_21ccbaa: @ BankForTexPltt
    .hword 0
.globl RAM_21ccbac
RAM_21ccbac: @ BankForClearImage
    .hword 0
.globl RAM_21ccbae
RAM_21ccbae: @ BankForBGExtPltt
    .hword 0
.globl RAM_21ccbb0
RAM_21ccbb0: @ BankForOBJExtPltt
    .hword 0
.globl RAM_21ccbb2
RAM_21ccbb2: @ BankForSubBG
    .hword 0
.globl RAM_21ccbb4
RAM_21ccbb4: @ BankForSubOBJ
    .hword 0
.globl RAM_21ccbb6
RAM_21ccbb6: @ BankForSubBGExtPltt
    .hword 0
.globl RAM_21ccbb8
RAM_21ccbb8: @ BankForSubOBJExtPltt
    .hword 0
    .hword 0
.globl RAM_21ccbbc
RAM_21ccbbc:
    .zero 0x1c

.globl RAM_21ccbd8
RAM_21ccbd8:
    .zero 0x20

.globl RAM_21ccbf8
RAM_21ccbf8:
    .word 0
.globl RAM_21ccbfc
RAM_21ccbfc:
    .word 0
.globl RAM_21ccc00
RAM_21ccc00:
    .word 0

    .zero 0x24

.globl RAM_21ccc28
RAM_21ccc28:
    .word 0
.globl RAM_21ccc2c
RAM_21ccc2c:
    .word 0
.globl RAM_21ccc30
RAM_21ccc30:
    .word 0
    .zero 0x24

.globl RAM_21ccc58
RAM_21ccc58:
    .word 0

.globl ThreadLinkedList
ThreadLinkedList:               @ 0x21ccc5c ThreadLinkedList
    .word 0, 0, 0
.globl RAM_21ccc68
RAM_21ccc68:
    .word 0
    .word 0, 0, 0, 0
    .word 0                     @ 0x20 ThreadID
.globl RAM_21ccc80
RAM_21ccc80:
    .hword 0, 0                 @ 0x24
.globl RAM_21ccc84
RAM_21ccc84:
    .word 0                     @ 0x28
    .word 0                     @ 0x2c FirstNode
    .word 0                     @ 0x30


.globl RAM_21ccc90
RAM_21ccc90:


.org 0x21ccd50 - 0x02000000

.globl RAM_21ccd50
RAM_21ccd50:


.org 0x21cced8 - 0x02000000

.globl RAM_21cced8
RAM_21cced8:
    .zero 0x8
.globl RAM_21ccee0
RAM_21ccee0:
    .zero 0x24
.globl RAM_21ccf04
RAM_21ccf04:
    .zero 0x4
.globl RAM_21ccf08
RAM_21ccf08:
    .zero 0x4
.globl RAM_21ccf0c
RAM_21ccf0c:
    .zero 0x24
.globl RAM_21ccf30
RAM_21ccf30:
    .zero 0x80

.globl RAM_21ccfb0
RAM_21ccfb0:
    .zero 0x4
.globl RAM_21ccfb4
RAM_21ccfb4:
    .zero 0x8
.globl RAM_21ccfbc
RAM_21ccfbc:
    .zero 0x8
.globl RAM_21ccfc4
RAM_21ccfc4:
    .zero 0xc
.globl RAM_21ccfd0
RAM_21ccfd0:
    .zero 0x14
.globl RAM_21ccfe4
RAM_21ccfe4:
    .zero 0x4
.globl RAM_21ccfe8
RAM_21ccfe8:
    .zero 0x4
.globl RAM_21ccfec
RAM_21ccfec:
    .zero 0x14

.globl RAM_21cd000
RAM_21cd000:
    .word 0, 0, 0, 0
    .word 0, 0, 0, 0

.globl RAM_21cd020
RAM_21cd020:
    .word 0
.globl RAM_21cd024
RAM_21cd024:
    .zero 0x1c

.globl RAM_21cd040
RAM_21cd040:
    .zero 0x24

.globl RAM_21cd064
RAM_21cd064:
    .zero 0x3c

.globl RAM_21cd0a0
RAM_21cd0a0:


.org 0x21cd320 - 0x02000000

.globl RAM_21cd320
RAM_21cd320:


.org 0x21ce040 - 0x02000000

.globl RAM_21ce040
RAM_21ce040:


.org 0x21ceb08 - 0x02000000

.globl RAM_21ceb08
RAM_21ceb08:
    .zero 0x18

.globl RAM_21ceb20
RAM_21ceb20:
    .zero 0x60

.globl RAM_21ceb80
RAM_21ceb80:
    .zero 0x4
.globl RAM_21ceb84
RAM_21ceb84:
    .zero 0x4
.globl RAM_21ceb88
RAM_21ceb88:
    .zero 0x80

.globl RAM_21cec08
RAM_21cec08:
    .word 0
.globl RAM_21cec0c
RAM_21cec0c:
    .word 0, 0, 0

.globl RomInitialized
RomInitialized: @ 0x21cec18
    .word 0
.globl RAM_21cec1c
RAM_21cec1c:
.equ RAM_21cec1c_0,     0x0
.equ RAM_21cec1c_4,     0x4
.equ RAM_21cec1c_8,     0x8
.equ RAM_21cec1c_c,     0xc
.equ RAM_21cec1c_10,    0x10
.equ RAM_21cec1c_14,    0x14
    .word 0, 0
.globl RAM_21cec24
RAM_21cec24:
    .word 0, 0
.globl RAM_21cec2c
RAM_21cec2c:
    .word 0, 0


.globl ArchiveData
ArchiveData: @ 0x21cec34
    .zero 0x5c

.globl RAM_21cec90
RAM_21cec90:
    .zero 0x1c

.globl RAM_21cecac
RAM_21cecac:
    .zero 0x20
.globl RAM_21ceccc
RAM_21ceccc:
    .zero 0x4
.globl RAM_21cecd0
RAM_21cecd0:
    .zero 0x1c
.globl RAM_21cecec
RAM_21cecec:
    .zero 0xc
.globl RAM_21cecf8
RAM_21cecf8:
    .zero 0xc
.globl RAM_21ced04
RAM_21ced04:
    .zero 0x4
.globl RAM_21ced08
RAM_21ced08:
    .zero 0x10
.globl RAM_21ced18
RAM_21ced18:
    .zero 0x18
.globl RAM_21ced30
RAM_21ced30:
    .zero 0x4
.globl RAM_21ced34
RAM_21ced34:
    .zero 0x24
.globl RAM_21ced58
RAM_21ced58:
    .zero 0xc
.globl RAM_21ced64
RAM_21ced64:
    .zero 0x3c
.globl RAM_21ceda0
RAM_21ceda0:
    .zero 0x20
.globl RAM_21cedc0
RAM_21cedc0:
    .zero 0x60

.globl RAM_21cee20
RAM_21cee20:


.org 0x21cf440 - 0x02000000

.globl RAM_21cf440
RAM_21cf440:
    .zero 0x20
.globl RAM_21cf460
RAM_21cf460:
    .zero 0x220
.globl RAM_21cf680
RAM_21cf680:
    .zero 0x20
.globl RAM_21cf6a0
RAM_21cf6a0:
    .zero 0x8
.globl RAM_21cf6a8
RAM_21cf6a8:
    .zero 0x20
.globl RAM_21cf6c8
RAM_21cf6c8:
    .zero 0x28
.globl RAM_21cf6f0
RAM_21cf6f0:
    .zero 0x14
.globl RAM_21cf704
RAM_21cf704:
    .zero 0x10
.globl RAM_21cf714
RAM_21cf714:
    .zero 0x2c
.globl RAM_21cf740
RAM_21cf740:


.org 0x21d0140 - 0x02000000

.globl RAM_21d0140
RAM_21d0140:
    .zero 0x80
.globl RAM_21d01c0
RAM_21d01c0:
    .zero 0x4
.globl RAM_21d01c4
RAM_21d01c4:
    .zero 0x1c
.globl RAM_21d01e0
RAM_21d01e0:
    .zero 0x20
.globl RAM_21d0200
RAM_21d0200:
    .zero 0x4
.globl RAM_21d0204
RAM_21d0204:
    .zero 0xc0-4
.globl RAM_21d02c0
RAM_21d02c0:
    .zero 0xe8
.globl RAM_21d03a8
RAM_21d03a8:
    .zero 0x4
.globl RAM_21d03ac
RAM_21d03ac:
    .zero 0x4
.globl RAM_21d03b0
RAM_21d03b0:
    .zero 0x4
.globl RAM_21d03b4
RAM_21d03b4:
    .zero 0x4
.globl RAM_21d03b8
RAM_21d03b8:
    .zero 0x4
.globl RAM_21d03bc
RAM_21d03bc:
    .zero 0x4
.globl RAM_21d03c0
RAM_21d03c0:
    .zero 0x4
.globl RAM_21d03c4
RAM_21d03c4:
    .zero 0x4
.globl RAM_21d03c8
RAM_21d03c8:
    .zero 0x14
.globl RAM_21d03dc
RAM_21d03dc:
    .zero 0x4
.globl RAM_21d03e0
RAM_21d03e0:
    .zero 0x8
.globl RAM_21d03e8
RAM_21d03e8:
    .zero 0x4
.globl RAM_21d03ec
RAM_21d03ec:


.org 0x21d0810 - 0x02000000

.globl RAM_21d0810
RAM_21d0810:
    .zero 0x10
.globl RAM_21d0820
RAM_21d0820:
    .zero 0x100
.globl RAM_21d0920
RAM_21d0920:
    .zero 0x24
.globl RAM_21d0944
RAM_21d0944:
    .zero 0x24
.globl RAM_21d0968
RAM_21d0968:
    .zero 0x48
.globl RAM_21d09b0
RAM_21d09b0:
    .zero 0x60
.globl RAM_21d0a10
RAM_21d0a10:
    .zero 0x30
.globl RAM_21d0a40
RAM_21d0a40:
    .zero 0x100
.globl RAM_21d0b40
RAM_21d0b40:
    .zero 0x100
.globl RAM_21d0c40
RAM_21d0c40:
    .zero 0x100
.globl RAM_21d0d40
RAM_21d0d40:
    .zero 0x4
.globl RAM_21d0d44
RAM_21d0d44:
    .zero 0x20
.globl RAM_21d0d64
RAM_21d0d64:
    .zero 0x4
.globl RAM_21d0d68
RAM_21d0d68:
    .zero 0x18
.globl RAM_21d0d80
RAM_21d0d80:


/*******************************************
start - data_end - bss_end
0x21d0d80 - 221A400 - 221F800
- overlay_0004.bin
*******************************************/
/*******************************************
start - data_end - bss_end
0x221F800 - 224B260 - 2253440
- overlay_0018.bin
*******************************************/


.org 0x22c29c8 - 0x02000000

RAM_22c29c8: @ BattleData
BattleData: @ 0x22c29c8
.equ BattleData_0,                  0x0
.equ BattleData_SkillPtr,           0xb4
.equ BattleData_RoundNr,            0x150
.equ BattleData_CurrentMove,        0x355
.equ BattleData_CurrentMoveID,      0x356
.equ BattleData_MoveScore,          0x358
.equ BattleData_Move1Score,         0x358
.equ BattleData_TempVariable,       0x35c
.equ BattleData_2120,               0x2120
.equ BattleData_AIScriptPtr,        0x2134
.equ BattleData_2138,               0x2138
.equ BattleData_2158,               0x2158
.equ BattleData_219c,               0x219c



.org 0x22c5708 - 0x02000000

PlayerBattleData: @ 0x22c5708 +0x2d40
PlayerBattleData_Species:   @ + 0x0 Player Species
    .hword 0
PlayerBattleData_ATK:       @ + 0x2 2d42 ATK
    .hword 0
PlayerBattleData_DEF:       @ + 0x4 2d44 DEF
    .hword 0
PlayerBattleData_SPE:       @ + 0x6 2d46 SPE
    .hword 0
PlayerBattleData_SPA:       @ + 0x8 2d48 SPA
    .hword 0
PlayerBattleData_SPD:       @ + 0xa 2d4a SPD
    .hword 0
PlayerBattleData_Move:      @ + 0xc (22c5714) 2d4c
PlayerBattleData_Move1:     @ + 0xc (22c5714) 2d4c Move1
    .hword 0
PlayerBattleData_Move2:     @ + 0xe (22c5716) Move2
    .hword 0
PlayerBattleData_Move3:     @ + 0x10 (22c5718) Move3
    .hword 0
PlayerBattleData_Move4:     @ + 0x12 (22c571a) Move4
    .hword 0
    .word 0
PlayerBattleData_StatLevel:     @ + 0x18 (22c5720) 2d58 Level Atk (8 Bytes) val: 0-6-12
    .byte 0, 0, 0, 0, 0, 0, 0, 0
    .word 0   @ + 0x20 (22c5728) 2d60
PlayerBattleData_Type1:         @ + 0x24 (22c572c) 2d64   Type1?
    .byte 0
PlayerBattleData_Type2:         @ + 0x25 (22c572d) 2d65   Type2?
    .byte 0
    .byte 0   @ + 0x26 (22c572e) 2d66
PlayerBattleData_Ability:   @ + 0x27 (22c572f) 2d67 Ability
    .byte 0
    .word 0   @ + 0x28 (22c5730) 2d68
PlayerBattleData_MovePP:
PlayerBattleData_Move1PP:   @ + 0x2c (22c5734) 2d6c Move1 PP
    .byte 0
PlayerBattleData_Move2PP:   @ + 0x2d 2d6d Move2 PP
    .byte 0
PlayerBattleData_Move3PP:   @ + 0x2e 2d6e Move3 PP
    .byte 0
PlayerBattleData_Move4PP:   @ + 0x2f 2d6f Move4 PP
    .byte 0
PlayerBattleData_Move1PPUps:    @ + 0x30 2d70 Move1 PPUps
    .byte 0, 0, 0, 0
PlayerBattleData_Level:     @ + 0x34 2d74 Level
    .byte 0
PlayerBattleData_Friendship:    @ + 0x35 2d75 Friendship
    .byte 0
    .hword 0
    .word 0, 0
    .word 0, 0, 0
PlayerBattleData_CurHP:     @ + 0x4c (22c5754) 2d8c CurHP
    .word 0
PlayerBattleData_MaxHP:     @ + 0x50 (22c5758) MaxHP
    .word 0
    .word 0, 0, 0, 0        @ 
PlayerBattleData_ExpPts:    @ + 0x64 2da4 ExpPts
    .word 0
    .word 0
PlayerBattleData_6c:        @ + 0x6c (22c5774) 2dac
    .word 0
PlayerBattleData_70:        @ + 0x70 (22c5778) 2db0 StatusEffect?
    .word 0
    .word 0
PlayerBattleData_Item:      @ + 0x78 (22c5780) 2db8 HoldItem
    .word 0
    .word 0
PlayerBattleData_80:        @ + 0x80 (22c5788) 2dc0

/*
.globl BattleData_Move
.equ BattleData_Move,               PlayerBattleData_Move - BattleData      @ 0x2d4c
.globl BattleData_StatLevel
.equ BattleData_StatLevel,          PlayerBattleData_StatLevel - BattleData   @ 0x2d58
.globl BattleData_Ability
.equ BattleData_Ability,            PlayerBattleData_Ability - BattleData   @ 0x2d67
.globl BattleData_CurHP
.equ BattleData_CurHP,              PlayerBattleData_CurHP - BattleData     @ 0x2d8c
.globl BattleData_2dac
.equ BattleData_2dac,               PlayerBattleData_6c - BattleData        @ 0x2dac
.globl BattleData_2db0
.equ BattleData_2db0,               PlayerBattleData_70 - BattleData        @ 0x2db0
.globl BattleData_2dc0
.equ BattleData_2dc0,               PlayerBattleData_80 - BattleData        @ 0x2dc0
*/


/*****************
TextInterpreter
*****************/
.equ TextInterpreter_Pointer,       0x0     @ Pointer to current position in Text/Msg
.equ TextInterpreter_4,             0x4
.equ TextInterpreter_9,             0x9
.equ TextInterpreter_StartPosX2,             0xa
.equ TextInterpreter_StartPosY2,             0xb
.equ TextInterpreter_dPosX,             0xc
.equ TextInterpreter_dPosY,             0xe
.equ TextInterpreter_StartPosX,            0x10
.equ TextInterpreter_StartPosY,            0x12
.equ TextInterpreter_15,            0x15
.equ TextInterpreter_16,            0x16
.equ TextInterpreter_17,            0x17
.equ TextInterpreter_18,            0x18
.equ TextInterpreter_1a,            0x1a
.equ TextInterpreter_1b,            0x1b
.equ TextInterpreter_1c,            0x1c
.equ TextInterpreter_20,            0x20
.equ TextInterpreter_20_0,          0x0
.equ TextInterpreter_20_1,          0x1
.equ TextInterpreter_20_2,          0x2
.equ TextInterpreter_27,            0x27
.equ TextInterpreter_27_0,          0x0
.equ TextInterpreter_28_StateNr,            0x28
.equ TextInterpreter_29,            0x29
.equ TextInterpreter_29_0,          0x0
.equ TextInterpreter_2a,            0x2a
.equ TextInterpreter_2b,            0x2b
.equ TextInterpreter_2b_0,          0x0
.equ TextInterpreter_2c,            0x2c
.equ TextInterpreter_2c_0,          0x0
.equ TextInterpreter_2d,            0x2d
.equ TextInterpreter_2d_0,          0x0
.equ TextInterpreter_2e,            0x2e


/*****************
TrainerData
*****************/
.equ TrainerData_ID,                0x10
.equ TrainerData_Money,             0x14    @ Maximum is 999999
.equ TrainerData_Gender,            0x18    @ 0 = Male, 1 = Female
.equ TrainerData_19,                0x19
.equ TrainerData_Badge,             0x1a





.org 0x27ff000 - 0x02000000

.globl RAM_27ff000
RAM_27ff000:
    .zero 0xc
.globl RAM_27ff00c
RAM_27ff00c:
    .zero 0x680-0xc
.globl RAM_27ff680
RAM_27ff680:
    .zero 0x400
.globl RAM_27ffa80
RAM_27ffa80:
    .zero 0x180
.globl RAM_27ffc00
RAM_27ffc00: @ 27FFC00h 4     NDS Gamecart Chip ID 1   (copy of 27FF800h)
    .zero 0x10
.globl RAM_27ffc10
RAM_27ffc10: @ 27FFC10h 2     NDS7 BIOS CRC (5835h)    (copy of <27FF850h>)
    .zero 0x10
.globl RAM_27ffc20
RAM_27ffc20:
    .zero 0xc
.globl RAM_27ffc2c
RAM_27ffc2c:
    .zero 0x4
.globl RAM_27ffc30
RAM_27ffc30: @ 27FFC30h 2     GBA Cartridge Header[BEh], Reserved
    .zero 0xc
.globl RAM_27ffc3c
RAM_27ffc3c: @ 27FFC3Ch 4     Frame Counter (eg. 00000332h in no$gba with original firmware)
    .zero 0x4
.globl RAM_27ffc40
RAM_27ffc40:
    .zero 0x40
.globl RAM_27ffc80
RAM_27ffc80: @ 27FFC80h 70h   Wifi FLASH User Settings (fmw[newest_user_settings])
    .zero 0x74
.globl RAM_27ffcf4
RAM_27ffcf4:
    .zero 0x6
.globl RAM_27ffcfa
RAM_27ffcfa:
    .zero 0x86
.globl RAM_27ffd80
RAM_27ffd80:
    .zero 0x1c
.globl RAM_27ffd9c
RAM_27ffd9c:
    .zero 0x4c
.globl RAM_27ffde8
RAM_27ffde8:
    .zero 0x2
.globl RAM_27ffdea
RAM_27ffdea:
    .zero 0x2
.globl RAM_27ffdec
RAM_27ffdec:
    .zero 0x14



@ 27FFE00h 170h  NDS Cart Header at 27FFE00h+0..16Fh
.globl RAM_27ffe00
RAM_27ffe00:
    .zero 0x20

.equ RAM_27ffe00_24,        0x24
.globl RAM_27ffe00_2c
.equ RAM_27ffe00_2c,        0x2c
.globl RAM_27ffe00_3c
.equ RAM_27ffe00_3c,        0x3c
.equ RAM_27ffe00_80,        0x80


.globl RAM_27ffe20
RAM_27ffe20:
    .zero 0x30
.globl RAM_27ffe50
RAM_27ffe50:
    .zero 0x10
.globl RAM_27ffe60
RAM_27ffe60:
    .zero 0x120

.globl RAM_27fff80
RAM_27fff80:
    .word 0, 0, 0, 0
.globl RAM_27fff90
RAM_27fff90:
    .word 0
.globl RAM_27fff94
RAM_27fff94:
    .hword 0
.globl RAM_27fff96
RAM_27fff96:
    .hword 0
.globl RAM_27fff98
RAM_27fff98:
    .hword 0
    .byte 0
.globl RAM_27fff9b
RAM_27fff9b:
    .byte 0
.globl RAM_27fff9c
RAM_27fff9c:
    .word 0
.globl RAM_27fffa0
RAM_27fffa0:
    .word 0, 0
.globl RAM_27fffa8_Input
RAM_27fffa8_Input:
    .hword 0
.globl RAM_27fffaa
RAM_27fffaa:
    .hword 0
    .word 0
.globl RAM_27fffb0
RAM_27fffb0:
    .word 0, 0, 0, 0
    .word 0, 0, 0, 0
    .word 0, 0, 0, 0
.globl RAM_27fffe0
RAM_27fffe0:
    .word 0, 0
.globl RAM_27fffe8
RAM_27fffe8:
    .word 0, 0
.globl RAM_27ffff0
RAM_27ffff0:




/*
0x21c07c4 +1 .byte
0x21c07c4 +4 .word
0x21c07c4 +8 .word
0x21c07d8
0x21c07dc
0x21c07e0
0x21c07f0 +2 .hword
0x21c07fc +0x40 .word
0x21c07fc +0x44 .word
*/

@ 0x21d0d80





