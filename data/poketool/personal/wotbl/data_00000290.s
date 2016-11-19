.include "source/macros_asm.s"

@ all unknown
MoveTable SCRATCH, 1
MoveTable HARDEN, 1
MoveTable LEECH_LIFE, 5
MoveTable SAND_ATTACK, 9
MoveTable FURY_SWIPES, 14
MoveTable MIND_READER, 19
MoveTable FALSE_SWIPE, 25
MoveTable MUD_SLAP, 31
MoveTable METAL_CLAW, 38
MoveTable DIG, 45


.hword 0xffff

.align 2, 0
