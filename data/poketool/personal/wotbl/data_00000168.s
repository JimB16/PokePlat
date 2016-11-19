.include "source/macros_asm.s"

@ all unknown
MoveTable BUG_BITE, 1
MoveTable POISON_STING, 1
MoveTable STRING_SHOT, 1
MoveTable SCARY_FACE, 1
MoveTable CONSTRICT, 1
MoveTable SCARY_FACE, 5
MoveTable CONSTRICT, 8
MoveTable LEECH_LIFE, 12
MoveTable NIGHT_SHADE, 15
MoveTable SHADOW_SNEAK, 19
MoveTable FURY_SWIPES, 23
MoveTable SUCKER_PUNCH, 28
MoveTable SPIDER_WEB, 32
MoveTable AGILITY, 37
MoveTable PIN_MISSILE, 41
MoveTable PSYCHIC_M, 46
MoveTable POISON_JAB, 50


.hword 0xffff

.align 2, 0
