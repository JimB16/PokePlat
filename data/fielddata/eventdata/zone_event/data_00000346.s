.include "source/macros_asm.s"

.word 1 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8188, 2, 2, 0, 11, 0, 0, 0, 4, 0

.word 6 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,       SPRITE_POKEBALL,  0, 0, 1108,  7094,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  6,  0 << 5 | 12, 0, 0
.hword  1,      SPRITE_BARRYSMOM,  9, 1,    0,  3530, ORIENT_RIGHT, 2, 0, 0, 0, 0,  0 << 5 |  9,  0 << 5 | 11, 0, 0
.hword  2,    SPRITE_GENERICMALE, 14, 1,    0,  3533,    ORIENT_UP, 1, 0, 0, 0, 0,  0 << 5 |  4,  0 << 5 |  9, 0, 0
.hword  3,  SPRITE_GENERICFEMALE, 14, 1,    0,  5533,    ORIENT_UP, 1, 0, 0, 0, 0,  0 << 5 |  5,  0 << 5 |  9, 0, 0
.hword  4,                    41, 16, 1,    0,  3532,  ORIENT_LEFT, 2, 0, 0, 0, 0,  0 << 5 | 13,  0 << 5 | 13, 0, 0
.hword  5,                    42, 16, 1,    0,  5532,  ORIENT_LEFT, 2, 0, 0, 0, 0,  0 << 5 | 13,  0 << 5 | 14, 0, 0

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 11,  0 << 5 |  3, 359, 1, 0, 0
.hword  0 << 5 |  4,  0 << 5 |  3, 361, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
