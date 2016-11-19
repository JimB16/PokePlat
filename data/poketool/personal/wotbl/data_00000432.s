.include "source/macros_asm.s"

@ all unknown
MoveTable FAKE_OUT, 1
MoveTable SCRATCH, 1
MoveTable GROWL, 1
MoveTable SCRATCH, 5
MoveTable GROWL, 8
MoveTable HYPNOSIS, 13
MoveTable FEINT_ATTACK, 17
MoveTable FURY_SWIPES, 20
MoveTable CHARM, 25
MoveTable ASSIST, 29
MoveTable CAPTIVATE, 32
MoveTable SLASH, 37
MoveTable SWAGGER, 38
MoveTable BODY_SLAM, 45
MoveTable ATTRACT, 53


.hword 0xffff

.align 2, 0
