.include "source/macros_asm.s"

@ all unknown
MoveTable SCRATCH, 1
MoveTable DEFENSE_CURL, 1
MoveTable SAND_ATTACK, 1
MoveTable DEFENSE_CURL, 3
MoveTable SAND_ATTACK, 7
MoveTable POISON_STING, 9
MoveTable RAPID_SPIN, 13
MoveTable SWIFT, 15
MoveTable FURY_SWIPES, 19
MoveTable ROLLOUT, 21
MoveTable CRUSH_CLAW, 22
MoveTable FURY_CUTTER, 28
MoveTable SAND_TOMB, 33
MoveTable SLASH, 40
MoveTable GYRO_BALL, 45
MoveTable SANDSTORM, 52


.hword 0xffff

.align 2, 0
