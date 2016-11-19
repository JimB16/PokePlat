.include "source/macros_asm.s"

@ all unknown
MoveTable SCRATCH, 1
MoveTable FORESIGHT, 1
MoveTable DEFENSE_CURL, 1
MoveTable QUICK_ATTACK, 1
MoveTable DEFENSE_CURL, 4
MoveTable QUICK_ATTACK, 7
MoveTable FURY_SWIPES, 13
MoveTable HELPING_HAND, 17
MoveTable FOLLOW_ME, 21
MoveTable SLAM, 28
MoveTable REST, 32
MoveTable SUCKER_PUNCH, 36
MoveTable AMNESIA, 42
MoveTable BATON_PASS, 46
MoveTable ME_FIRST, 50
MoveTable HYPER_VOICE, 56


.hword 0xffff

.align 2, 0
