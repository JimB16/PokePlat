.include "source/macros_asm.s"

@ all unknown
MoveTable FIRE_PUNCH, 1
MoveTable THUNDER_PUNCH, 1
MoveTable ICE_PUNCH, 1
MoveTable BIDE, 1
MoveTable MEDITATE, 1
MoveTable CONFUSION, 1
MoveTable DETECT, 1
MoveTable MEDITATE, 4
MoveTable CONFUSION, 8
MoveTable DETECT, 11
MoveTable HIDDEN_POWER, 15
MoveTable MIND_READER, 18
MoveTable FEINT, 22
MoveTable CALM_MIND, 25
MoveTable FORCE_PALM, 29
MoveTable HIGH_JUMP_KICK, 32
MoveTable PSYCH_UP, 36
MoveTable POWER_TRICK, 42
MoveTable REVERSAL, 49
MoveTable RECOVER, 55


.hword 0xffff

.align 2, 0
