

.equ DEFENDER,			0x0
.equ ATTACKER,			0x1
.equ DEFENDER2ND,		0x2
.equ ATTACKER2ND,		0x3


.macro	AIScript base adr
.word   (\adr - \base)>>2
.endm


.macro	AI_RandomJumpLt a adr
.word   0x0, \a
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_RandomJumpGt a adr
.word   0x1, \a
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_RandomJumpEq a adr
.word   0x2, \a
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_RandomJumpNe a adr
.word   0x3, \a
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_AddScore a
.word   0x4, \a
.endm

.macro	AI_HPLt a b adr
.word   0x5, \a, \b
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_HPGt a b adr
.word   0x6, \a, \b
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_HPEq a b adr
.word   0x7, \a, \b
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_HPNe a b adr
.word   0x8, \a, \b
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_9 a b adr
.word   0x9, \a, \b
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_a a b adr
.word   0xa, \a, \b
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_b a b adr
.word   0xb, \a, \b
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_c a b adr
.word   0xc, \a, \b
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_d a b adr
.word   0xd, \a, \b
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_e a b adr
.word   0xe, \a, \b
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_f a b adr
.word   0xf, \a, \b
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_11_If35cLt a adr
.word   0x11, \a
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_12_If35cGt a adr
.word   0x12, \a
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_If35cEq a adr
.word   0x13, \a
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_If35cNe a adr
.word   0x14, \a
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_15_If35cTstNe a adr
.word   0x15, \a
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_16_If35cTstEq a adr
.word   0x16, \a
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_17_If356Eq a adr
.word   0x17, \a
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_18_If356Ne a adr
.word   0x18, \a
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_19 a adr
.word   0x19, \a
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_1a a adr
.word   0x1a, \a
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_1c adr
.word   0x1c
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_GetRoundNr
.word   0x1d
.endm

.macro	AI_1e a
.word   0x1e, \a
.endm

.macro	AI_20 a
.word   0x20, \a
.endm

.macro	AI_21 a
.word   0x21, \a
.endm

.macro	AI_22_HasType a adr
.word   0x22, \a
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_24 a adr
.word   0x24, \a
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_26 a
.word   0x26, \a
.endm

.macro	AI_28
.word   0x28
.endm

.macro	AI_GetAbility a
.word   0x29, \a
.endm

.macro	AI_2b a adr
.word   0x2b, \a
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_2c a b c
.word   0x2c, \a, \b, \c
.endm

.macro	AI_2e
.word   0x2e
.endm

.macro	AI_2f a adr
.word   0x2f, \a
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_31_Lt a b c adr
.word   0x31, \a, \b, \c
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_32_Gt a b c adr
.word   0x32, \a, \b, \c
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_33_Eq a b c adr
.word   0x33, \a, \b, \c
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_34_Ne a b c adr
.word   0x34, \a, \b, \c
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_35 a adr
.word   0x35, \a
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_36 a adr
.word   0x36, \a
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_37 a b adr
.word   0x37, \a, \b
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_38 a b adr
.word   0x38, \a, \b
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_39 a b adr
.word   0x39, \a, \b
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_3a a b adr
.word   0x3a, \a, \b
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_3b a b adr
.word   0x3b, \a, \b
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_3d
.word   0x3d
.endm

.macro	AI_3e_Nop
.word   0x3e
.endm

.macro	AI_40 a
.word   0x40, \a
.endm

.macro	AI_41 a
.word   0x41, \a
.endm

.macro	AI_42 a
.word   0x42, \a
.endm

.macro	AI_43 a
.word   0x43, \a
.endm

.macro	AI_44 a
.word   0x44, \a
.endm

.macro	AI_45
.word   0x45
.endm

.macro	AI_46 a
.word   0x46, \a
.endm

.macro	AI_48
.word   0x48
.endm

.macro	AI_49
.word   0x49
.endm

.macro	AI_4a a
.word   0x4a, \a
.endm

.macro	AI_Jump adr
.word   0x4c
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_4d
.word   0x4d
.endm

.macro	AI_4e a adr
.word   0x4e, \a
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_4f adr
.word   0x4f
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_50 adr
.word   0x50
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_51 adr
.word   0x51
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_52 a b
.word   0x52, \a, \b
.endm

.macro	AI_53 a b
.word   0x53, \a, \b
.endm

.macro	AI_54 a adr
.word   0x54, \a
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_55 a b adr
.word   0x55, \a, \b
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_56 a adr
.word   0x56, \a
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_57 a b
.word   0x57, \a, \b
.endm

.macro	AI_58 a adr
.word   0x58, \a
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_59 a adr
.word   0x59, \a
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_5a a
.word   0x5a, \a
.endm

.macro	AI_5b
.word   0x5b
.endm

.macro	AI_5c a adr
.word   0x5c, \a
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_5e
.word   0x5e
.endm

.macro	AI_5f a
.word   0x5f, \a
.endm

.macro	AI_60 a
.word   0x60, \a
.endm

.macro	AI_61 a adr
.word   0x61, \a
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_62 adr
.word   0x62
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_63 a b adr
.word   0x63, \a, \b
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_65 a b
.word   0x65, \a, \b
.endm

.macro	AI_64 a
.word   0x64, \a
.endm

.macro	AI_69 a
.word   0x69, \a
.endm

.macro	AI_6a a adr
.word   0x6a, \a
.word   (\adr - 1f)>>2
1:
.endm

.macro	AI_6c a
.word   0x6c, \a
.endm
