.include "source/macros_asm.s"

.word 1 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8169, 2, 175, 0, 889, 0, 0, 0, 4, 0

.word 4 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    49, 20, 1,    0,  3357, ORIENT_RIGHT, 3, 0, 0, 4, 0,  5 << 5 | 11, 27 << 5 | 23, 0, 0
.hword  1,                    48, 16, 1,    0,  3359,  ORIENT_LEFT, 3, 0, 0, 0, 0,  5 << 5 | 16, 27 << 5 | 23, 0, 0
.hword  2,      SPRITE_GUIDEPOST,  0, 0,    0,     1,    ORIENT_UP, 4, 0, 0, 0, 0,  5 << 5 | 19, 27 << 5 |  2, 0, 0
.hword  3,       SPRITE_POKEBALL,  0, 0, 1138,  7124,    ORIENT_UP, 0, 0, 0, 0, 0,  5 << 5 |  9, 27 << 5 | 13, 0, 0

.word 0 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
