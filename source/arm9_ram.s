
.section .bss

@ 0x02000000 - 

.org 0x2101d0c - 0x02000000

RAM_2101d0c:
    .word 0, 0
RAM_2101d14:

.org 0x2101d44 - 0x02000000

RAM_2101d44:
    .word 0
RAM_2101d48:
    .word 0
RAM_2101d4c:

.org 0x2101df0 - 0x02000000

RAM_2101df0:
    .word 0, 0
RAM_2101df8:


.org 0x21beb80 - 0x02000000

RAM_21beb80:

.org 0x21beba0 - 0x02000000

RAM_21beba0:

.org 0x21bf370 - 0x02000000

RAM_21bf370:

.org 0x21bf3b0 - 0x02000000

RAM_21bf3b0:

.org 0x21bf3f0 - 0x02000000

RAM_21bf3f0:


.org 0x21bf430 - 0x02000000

RAM_21bf430:
    .word 0
RAM_21bf434:


.org 0x21bf454 - 0x02000000

RAM_21bf454:
    .word 0, 0, 0, 0
    .word 0, 0, 0, 0
RAM_21bf474:
    .word 0
RAM_21bf478:
    .word 0
RAM_21bf47c:
    .word 0, 0, 0
RAM_21bf488:


.org 0x21bf4b8 - 0x02000000

RAM_21bf4b8:


.org 0x21bf4e8 - 0x02000000

RAM_21bf4e8:


.org 0x21bf500 - 0x02000000

RAM_21bf500:


.org 0x21bf5b4 - 0x02000000

RAM_21bf5b4:


.org 0x21bf5c8 - 0x02000000

RAM_21bf5c8:
    .word 0, 0, 0, 0
RAM_21bf5d8:
    .word 0, 0, 0, 0
RAM_21bf5e8:


.org 0x21bf610 - 0x02000000

RAM_21bf610:
    .word 0, 0
RAM_21bf618:


.org 0x21bf658 - 0x02000000

RAM_21bf658:


.org 0x21bf678 - 0x02000000

RAM_21bf678:
    .word 0
RAM_21bf67c:


.org 0x21bf6bc - 0x02000000

RAM_21bf6bc:

.org 0x21bf6dc - 0x02000000

RAM_21bf6dc:

.org 0x21bfae8 - 0x02000000

RAM_21bfae8:
    .word 0, 0

@ init at branch_2017eaa:
@ 27ffda0 init with Function_20c304c
@ branch_201786a: calculate offset
RAM_21bfaf0:

.equ RAM_21bfaf0_0,         0x0
.equ RAM_21bfaf0_4,         0x4
.equ RAM_21bfaf0_8,         0x8
.equ RAM_21bfaf0_c,         0xc
.equ RAM_21bfaf0_10,        0x10
.equ RAM_21bfaf0_14,        0x14
.equ RAM_21bfaf0_16,        0x16
.equ RAM_21bfaf0_18,        0x18
.equ RAM_21bfaf0_1a,        0x1a


.org 0x21bfb0c - 0x02000000

RAM_21bfb0c:
    .word 0
RAM_21bfb10:
    .word 0, 0
RAM_21bfb18:
    .word 0
RAM_21bfb1c:
    .word 0


.org 0x21c0110 - 0x02000000

RAM_21c0110:


.org 0x21c0490 - 0x02000000

RAM_21c0490:


.org 0x21c04d8 - 0x02000000

RAM_21c04d8:
    .word 0, 0
RAM_21c04e0:


.org 0x21c0500 - 0x02000000

RAM_21c0500:


.org 0x21c0700 - 0x02000000

RAM_21c0700:
    .word 0
RAM_21c0704:
    .word 0, 0, 0
RAM_21c0710:


.org 0x21c0744 - 0x02000000

RAM_21c0744:
    .word 0, 0, 0, 0, 0, 0, 0
RAM_21c0760:
    .word 0
RAM_21c0764:
    .word 0
RAM_21c0768:
    .word 0, 0
RAM_21c0770:
    .word 0
RAM_21c0774:
    .word 0, 0
RAM_21c077c:
    .word 0, 0, 0
RAM_21c0788:
    .word 0, 0, 0
RAM_21c0794:
    .word 0, 0
RAM_21c079c:
    .word 0
RAM_21c07a0:
    .word 0
RAM_21c07a4:
    .word 0
RAM_21c07a8:
    .word 0, 0
RAM_21c07b0:
    .word 0
RAM_21c07b4:
    .word 0
RAM_21c07b8:
    .word 0, 0, 0
RAM_21c07c4:
    .word 0, 0, 0
RAM_21c07d0:
    .word 0
.globl RAM_21c07d4
RAM_21c07d4:
    .word 0
RAM_21c07d8:
    .word 0
RAM_21c07dc:
    .word 0
RAM_21c07e0:
    .word 0, 0, 0, 0
RAM_21c07f0:
    .word 0
RAM_21c07f4:
    .word 0, 0
RAM_21c07fc:


.org 0x21c0848 - 0x02000000

RAM_21c0848:
    .word 0
RAM_21c084c:
    .word 0
RAM_21c0850:
    .word 0, 0, 0
RAM_21c085c:


.org 0x21c089c - 0x02000000

RAM_21c089c:
    .word 0
RAM_21c08a0:


.org 0x21c0a30 - 0x02000000

RAM_21c0a30:
    .word 0
RAM_21c0a34:


.org 0x21c3a34 - 0x02000000

RAM_21c3a34:
    .word 0
RAM_21c3a38:
    .word 0
RAM_21c3a3c:
    .word 0, 0, 0
RAM_21c3a48:
    .word 0, 0, 0
RAM_21c3a54:
    .word 0
    .byte 0
RAM_21c3a59:
    .byte 0
RAM_21c3a5a:
    .byte 0, 0
    .hword 0
RAM_21c3a5e:
    .hword 0
RAM_21c3a60:

    .word 0, 0, 0, 0
    .word 0, 0, 0, 0

RAM_21c3a80:
    .word 0, 0, 0, 0
    .word 0, 0, 0, 0

RAM_21c3aa0:
    .word 0
RAM_21c3aa4:
    .word 0, 0, 0
RAM_21c3ab0:
    .word 0
RAM_21c3ab4:
    .word 0, 0, 0
RAM_21c3ac0:
    .word 0, 0, 0, 0, 0
RAM_21c3ad4:
    .word 0
RAM_21c3ad8:
    .word 0
RAM_21c3adc:
    .word 0, 0, 0, 0, 0
RAM_21c3af0:
    .word 0
RAM_21c3af4:

    .word 0, 0, 0
    .word 0

RAM_21c3b04:
    .hword 0
    .hword 0
RAM_21c3b08:
    .zero 0x100


.org 0x21c3c08 - 0x02000000

RAM_21c3c08:
    .zero 0x400


.org 0x21c4008 - 0x02000000

RAM_21c4008:
    .zero 0x40
RAM_21c4048:
    .zero 0x100
RAM_21c4148:
    .zero 0x400
RAM_21c4548:
    .zero 0x40
RAM_21c4588:
    .zero 0x100
RAM_21c4688:
    .zero 0x400
RAM_21c4a88:
    .zero 0x40
RAM_21c4ac8:
    .word 0, 0, 0, 0
RAM_21c4ad8:

    .zero 0x80


.org 0x21c4b58 - 0x02000000

RAM_21c4b58:
    .zero 4
RAM_21c4b5c:
    .zero 0x100-4
RAM_21c4c58:
    .zero 0x10
RAM_21c4c68:
    .zero 0x4
RAM_21c4c6c:
    .zero 0x300-0x10-0x4
RAM_21c4f58:
    .zero 0x300
RAM_21c5258:
    .zero 0x370
RAM_21c55c8:
    .zero 0x90
RAM_21c5658:
    .zero 0x4
RAM_21c565c:


.org 0x21c5a60 - 0x02000000

RAM_21c5a60:
    .zero 0xc
RAM_21c5a6c:
    .zero 0x1c
RAM_21c5a88:
    .zero 0x4
RAM_21c5a8c:
    .zero 0x8
RAM_21c5a94:
    .zero 0x44
RAM_21c5ad8:
    .zero 0x34
RAM_21c5b0c:
    .zero 0x28
RAM_21c5b34:
    .zero 0x14
RAM_21c5b48:
    .zero 0x24
RAM_21c5b6c:
    .zero 0xc
RAM_21c5b78:
    .zero 0x14
RAM_21c5b8c:
    .zero 0x30
RAM_21c5bbc:
    .zero 0x30
RAM_21c5bec:
    .zero 0xe0
RAM_21c5ccc:
    .zero 0xc
RAM_21c5cd8:
    .zero 0xc
RAM_21c5ce4:
    .zero 0xc
RAM_21c5cf0:
    .zero 0x4
RAM_21c5cf4:


.org 0x21c6af4 - 0x02000000

RAM_21c6af4:
    .word 0
RAM_21c6af8:
    .word 0
RAM_21c6afc:
    .word 0
RAM_21c6b00:
    .word 0
RAM_21c6b04:
    .word 0
RAM_21c6b08:


.org 0x21c70f4 - 0x02000000

RAM_21c70f4:
    .zero 0x40
RAM_21c7134:


.org 0x21c89f4 - 0x02000000

RAM_21c89f4:
    .zero 0x4
RAM_21c89f8:
    .zero 0x8
RAM_21c8a00:
    .zero 0x10
RAM_21c8a10:
    .zero 0xc
RAM_21c8a1c:


.org 0x21cae00 - 0x02000000

RAM_21cae00:
    .zero 0xc
RAM_21cae0c:
    .zero 0x140
RAM_21caf4c:
    .zero 0xc
RAM_21caf58:
    .zero 0xc
RAM_21caf64:
    .zero 0x440
RAM_21cb3a4:
    .zero 0x8
RAM_21cb3ac:
    .zero 0x10
RAM_21cb3bc:
    .zero 0x4
RAM_21cb3c0:
    .zero 0x4
RAM_21cb3c4:


.org 0x21cb824 - 0x02000000

RAM_21cb824:
    .zero 0x4
RAM_21cb828:
    .zero 0xc
RAM_21cb834:
    .zero 0x40
RAM_21cb874:
    .zero 0x80
RAM_21cb8f4:
    .zero 0x8
RAM_21cb8fc:
    .zero 0x40
RAM_21cb93c:
    .zero 0x54
RAM_21cb990:
    .zero 0x560
RAM_21cbef0:
    .zero 0x4
RAM_21cbef4:
    .zero 0x3c
RAM_21cbf30:
    .zero 0xc
RAM_21cbf3c:


.org 0x21cc5a8 - 0x02000000

RAM_21cc5a8:
    .zero 0x18
RAM_21cc5c0:
    .zero 0xc
RAM_21cc5cc:


.org 0x21ccb9e - 0x02000000

RAM_21ccb9e:
    .hword 0

RAM_21ccba0: @ BankForLCDC
    .hword 0
RAM_21ccba2: @ BankForBG
    .hword 0
RAM_21ccba4: @ BankForOBJ
    .hword 0
RAM_21ccba6: @ BankForARM7
    .hword 0
RAM_21ccba8: @ BankForTex
    .hword 0
RAM_21ccbaa: @ BankForTexPltt
    .hword 0
RAM_21ccbac: @ BankForClearImage
    .hword 0
RAM_21ccbae: @ BankForBGExtPltt
    .hword 0
RAM_21ccbb0: @ BankForOBJExtPltt
    .hword 0
RAM_21ccbb2: @ BankForSubBG
    .hword 0
RAM_21ccbb4: @ BankForSubOBJ
    .hword 0
RAM_21ccbb6: @ BankForSubBGExtPltt
    .hword 0
RAM_21ccbb8: @ BankForSubOBJExtPltt
    .hword 0
    .hword 0
RAM_21ccbbc:

    .zero 0x1c

RAM_21ccbd8:

    .zero 0x20

RAM_21ccbf8:
    .word 0
RAM_21ccbfc:
    .word 0
RAM_21ccc00:
    .word 0

    .zero 0x24

RAM_21ccc28:
    .word 0
RAM_21ccc2c:
    .word 0
RAM_21ccc30:
    .word 0


.org 0x21ccc58 - 0x02000000

RAM_21ccc58:
    .word 0

ThreadLinkedList:               @ 0x21ccc5c ThreadLinkedList
    .word 0, 0, 0
RAM_21ccc68:
    .word 0
    .word 0, 0, 0, 0
    .word 0                     @ 0x20 ThreadID
RAM_21ccc80:
    .hword 0, 0                 @ 0x24
RAM_21ccc84:
    .word 0                     @ 0x28
    .word 0                     @ 0x2c FirstNode
    .word 0                     @ 0x30
.equ ThreadLinkedList_0,                0x0
.equ ThreadLinkedList_Scheduler,        0x4
.equ ThreadLinkedList_8,                0x8
.equ ThreadLinkedList_c,                0xc
.equ ThreadLinkedList_1c,               0x1c
.equ ThreadLinkedList_ID,               0x20
.equ ThreadLinkedList_24,               0x24
.equ ThreadLinkedList_26,               0x26
.equ ThreadLinkedList_28,               0x28
.equ ThreadLinkedList_FirstNode,        0x2c
.equ ThreadLinkedList_30,               0x30

.equ Thread_0,              0x0
.equ Thread_4,              0x4
.equ Thread_8,              0x8
.equ Thread_c,              0xc
.equ Thread_10,             0x10
.equ Thread_14,             0x14
.equ Thread_18,             0x18
.equ Thread_1c,             0x1c
.equ Thread_20,             0x20
.equ Thread_24,             0x24
.equ Thread_28,             0x28
.equ Thread_2c,             0x2c
.equ Thread_30,             0x30
.equ Thread_34,             0x34
.equ Thread_38,             0x38
.equ Thread_3c,             0x3c
.equ Thread_40,             0x40
.equ Thread_44,             0x44
.equ Thread_Active,         0x64 @ 0: NotActive 1: Active 2: ?
.equ Thread_Next,           0x68
.equ Thread_ID,             0x6c
.equ Thread_Priority,       0x70
.equ Thread_74,             0x74
.equ Thread_78,             0x78
.equ Thread_7c,             0x7c
.equ Thread_80,             0x80
.equ Thread_84,             0x84
.equ Thread_88,             0x88
.equ Thread_8c,             0x8c
.equ Thread_90,             0x90
.equ Thread_94,             0x94
.equ Thread_98,             0x98
.equ Thread_9c,             0x9c
.equ Thread_a0,             0xa0
.equ Thread_a4,             0xa4
.equ Thread_b0,             0xb0
.equ Thread_Destructor,     0xb4


.org 0x21ccc90 - 0x02000000

RAM_21ccc90:


.org 0x21ccd50 - 0x02000000

RAM_21ccd50:


.org 0x21cced8 - 0x02000000

RAM_21cced8:
    .zero 0x8
RAM_21ccee0:
    .zero 0x24
RAM_21ccf04:
    .zero 0x4
RAM_21ccf08:
    .zero 0x4
RAM_21ccf0c:
    .zero 0x24
RAM_21ccf30:


.org 0x21ccfb0 - 0x02000000

RAM_21ccfb0:
    .zero 0x4
RAM_21ccfb4:
    .zero 0x8
RAM_21ccfbc:
    .zero 0x8
RAM_21ccfc4:
    .zero 0xc
RAM_21ccfd0:
    .zero 0x14
RAM_21ccfe4:
    .zero 0x4
RAM_21ccfe8:
    .zero 0x4
RAM_21ccfec:

    .zero 0x14

RAM_21cd000:
    .word 0, 0, 0, 0
    .word 0, 0, 0, 0

RAM_21cd020:
    .word 0
RAM_21cd024:

    .zero 0x1c

RAM_21cd040:

    .zero 0x24

RAM_21cd064:

    .zero 0x3c

RAM_21cd0a0:


.org 0x21cd320 - 0x02000000

RAM_21cd320:


.org 0x21ce040 - 0x02000000

RAM_21ce040:


.org 0x21ceb08 - 0x02000000

RAM_21ceb08:
    .zero 0x18

RAM_21ceb20:
    .zero 0x60

RAM_21ceb80:
    .zero 0x4
RAM_21ceb84:
    .zero 0x4
RAM_21ceb88:


.org 0x21cec08 - 0x02000000

RAM_21cec08:
    .word 0
RAM_21cec0c:
    .word 0, 0, 0
RAM_21cec18:
    .word 0
RAM_21cec1c:
    .word 0, 0
RAM_21cec24:
    .word 0, 0
RAM_21cec2c:
    .word 0, 0
RAM_21cec34:
    .zero 0x5c

RAM_21cec90:
    .zero 0x1c

RAM_21cecac:
    .zero 0x20
RAM_21ceccc:
    .zero 0x4
RAM_21cecd0:
    .zero 0x1c
RAM_21cecec:
    .zero 0xc
RAM_21cecf8:
    .zero 0xc
RAM_21ced04:
    .zero 0x4
RAM_21ced08:
    .zero 0x10
RAM_21ced18:
    .zero 0x18
RAM_21ced30:
    .zero 0x4
RAM_21ced34:
    .zero 0x24
RAM_21ced58:
    .zero 0xc
RAM_21ced64:
    .zero 0x3c
RAM_21ceda0:
    .zero 0x20
RAM_21cedc0:
    .zero 0x60

RAM_21cee20:


.org 0x21cf440 - 0x02000000

RAM_21cf440:
    .zero 0x20
RAM_21cf460:
    .zero 0x220
RAM_21cf680:
    .zero 0x20
RAM_21cf6a0:
    .zero 0x8
RAM_21cf6a8:
    .zero 0x20
RAM_21cf6c8:
    .zero 0x28
RAM_21cf6f0:
    .zero 0x14
RAM_21cf704:
    .zero 0x10
RAM_21cf714:
    .zero 0x2c
RAM_21cf740:


.org 0x21d0140 - 0x02000000

RAM_21d0140:
    .zero 0x80
RAM_21d01c0:
    .zero 0x4
RAM_21d01c4:
    .zero 0x1c
RAM_21d01e0:
    .zero 0x20
RAM_21d0200:
    .zero 0x4
RAM_21d0204:
    .zero 0xc0-4
RAM_21d02c0:
    .zero 0xe8
RAM_21d03a8:
    .zero 0x4
RAM_21d03ac:
    .zero 0x4
RAM_21d03b0:
    .zero 0x4
RAM_21d03b4:
    .zero 0x4
RAM_21d03b8:
    .zero 0x4
RAM_21d03bc:
    .zero 0x4
RAM_21d03c0:
    .zero 0x4
RAM_21d03c4:
    .zero 0x4
RAM_21d03c8:
    .zero 0x14
RAM_21d03dc:
    .zero 0x4
RAM_21d03e0:
    .zero 0x8
RAM_21d03e8:
    .zero 0x4
RAM_21d03ec:


.org 0x21d0810 - 0x02000000

RAM_21d0810:
    .zero 0x10
RAM_21d0820:
    .zero 0x100
RAM_21d0920:
    .zero 0x24
RAM_21d0944:
    .zero 0x24
RAM_21d0968:
    .zero 0x48
RAM_21d09b0:
    .zero 0x60
RAM_21d0a10:
    .zero 0x30
RAM_21d0a40:
    .zero 0x100
RAM_21d0b40:
    .zero 0x100
RAM_21d0c40:
    .zero 0x100
RAM_21d0d40:
    .zero 0x4
RAM_21d0d44:
    .zero 0x20
RAM_21d0d64:
    .zero 0x4
RAM_21d0d68:
    .zero 0x18
RAM_21d0d80:



.org 0x22c29c8 - 0x02000000

RAM_22c29c8: @ BattleData
/*
+ 0x150 Round Nr
+ 0x355 Current Move (0-3)
+ 0x356 Current Move ID
+ 0x358 Move1 Score
+ 0x359 Move2 Score
+ 0x35a Move3 Score
+ 0x35b Move4 Score

+ 0x2134
+ 0x2138
*/



.org 0x22c5708 - 0x02000000

RAM_22c5708: @ PlayerBattleData +0x2d40
PlayerBattleData: @ 0x22c5708 +0x2d40
PlayerBattleData_Species:
    .hword 0
PlayerBattleData_ATK:
    .hword 0
PlayerBattleData_DEF:
    .hword 0
PlayerBattleData_SPE:
    .hword 0
PlayerBattleData_SPA:
    .hword 0
PlayerBattleData_SPD:
    .hword 0
PlayerBattleData_Move1:
    .hword 0
PlayerBattleData_Move2:
    .hword 0
PlayerBattleData_Move3:
    .hword 0
PlayerBattleData_Move4:
    .hword 0
    .word 0
/*
+ 0x0 Player Species
+ 0x2 2d42 ATK
+ 0x4 2d44 DEF
+ 0x6 2d46 SPE
+ 0x8 2d48 SPA
+ 0xa 2d4a SPD
+ 0xc (22c5714) 2d4c Move1
+ 0xe (22c5716) Move2
+ 0x10 (22c5718) Move3
+ 0x12 (22c571a) Move4
+ 0x18 (22c5720) 2d58 Level Atk (8 Bytes) val: 0-6-12
2d67 ability
+ 0x2c (22c5734) 2d6c Move1 PP
+ 0x2d Move2 PP
+ 0x2e Move3 PP
+ 0x2f Move4 PP
+ 0x30 2d70 Move1 PPUps
+ 0x34 2d74 Level
+ 0x35 2d75 Friendship
+ 0x4c (22c5754) 2d8c CurHP
+ 0x50 (22c5758) MaxHP
+ 0x64 2da4 ExpPts
+ 0x6c (22c5774) 2dac
+ 0x70 (22c5778) 2db0 StatusEffect?
+ 0x78 (22c5780) 2db8 HoldItem
+ 0x80 (22c5788) 2dc0
*/


/*****************
ScriptHandler
*****************/
.equ ScriptHandler_0,               0x0
.equ ScriptHandler_1,               0x1     @ 0 = No Active Script, 1 = Normal Script Active, 2 = Execute Function in ScriptHandler_4
.equ ScriptHandler_4,               0x4
.equ ScriptHandler_Pointer,         0x8
.equ ScriptHandler_c,               0xc     @ 0x14 * 4 Bytes
.equ ScriptHandler_PtrToJumpTable,  0x5c    @ =JumpTable_Scripthandler (initialised in Function_203e724)
.equ ScriptHandler_NrOfCmds,        0x60    @ =Nr of ScriptCmds (initialised in Function_203e724)
.equ ScriptHandler_64,              0x64
.equ ScriptHandler_74,              0x74



.org 0x27e0000 - 0x02000000

RAM_27e0000:
    .zero 4*24 @ 24 JumpAdresses, 1 for every IRQs

RAM_27e0060:
    .zero 4*8

RAM_27e0080:


.org 0x27e3000 - 0x02000000

RAM_27e3000:
    .zero 0xf80
RAM_27e3f80:
    .zero 0x78

RAM_27e3ff8:


.org 0x27ff000 - 0x02000000

RAM_27ff000:
    .zero 0xc
RAM_27ff00c:
    .zero 0x680-0xc
RAM_27ff680:
    .zero 0x400
RAM_27ffa80:
    .zero 0x180
RAM_27ffc00:
    .zero 0x10
RAM_27ffc10:
    .zero 0x10
RAM_27ffc20:
    .zero 0xc
RAM_27ffc2c:
    .zero 0x4
RAM_27ffc30:
    .zero 0xc
RAM_27ffc3c:
    .zero 0x4
RAM_27ffc40:
    .zero 0x40
RAM_27ffc80:
    .zero 0x74
RAM_27ffcf4:
    .zero 0x6
RAM_27ffcfa:
    .zero 0xa2
RAM_27ffd9c:
    .zero 0x4c
RAM_27ffde8:
    .zero 0x2
RAM_27ffdea:
    .zero 0x2
RAM_27ffdec:
    .zero 0x14
RAM_27ffe00:
    .zero 0x50
RAM_27ffe50:


.org 0x27fff80 - 0x02000000

RAM_27fff80:
    .word 0, 0, 0, 0
RAM_27fff90:
    .word 0
RAM_27fff94:
    .hword 0
RAM_27fff96:
    .hword 0
RAM_27fff98:
    .hword 0
    .byte 0
RAM_27fff9b:
    .byte 0
RAM_27fff9c:
    .word 0
RAM_27fffa0:
    .word 0, 0
RAM_27fffa8:
    .hword 0
RAM_27fffaa:
    .hword 0
    .word 0
RAM_27fffb0:
    .word 0, 0, 0, 0
    .word 0, 0, 0, 0
    .word 0, 0, 0, 0
RAM_27fffe0:
    .word 0, 0
RAM_27fffe8:
    .word 0, 0
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


.equ Unknown_2101d20,              0x2101d20 @ .word
.equ Unknown_2101d38,              0x2101d38 @ .word
.equ Unknown_21023e0,              0x21023e0 @ .word
.equ Unknown_21023f8,             0x021023f8 @ .word

.section .bss2

@ 0x027e0000

