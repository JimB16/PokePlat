.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 4 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,         SPRITE_FATGUY,  3, 0,    0,     3,    ORIENT_UP, 0, 0, 0, 0, 1,  0 << 5 |  4,  0 << 5 |  4, 0, 0
.hword  1,                    42,  4, 0,    0,     4,    ORIENT_UP, 0, 0, 0, 0, 1,  0 << 5 |  6,  0 << 5 |  7, 0, 0
.hword  2,       SPRITE_REPORTER, 16, 0,  382,     1,  ORIENT_LEFT, 0, 0, 0, 1, 2,  0 << 5 |  5,  0 << 5 | 12, 0, 0
.hword  3,      SPRITE_CAMERAMAN, 17, 0,  382,     2, ORIENT_RIGHT, 0, 0, 0, 1, 2,  0 << 5 |  4,  0 << 5 | 12, 0, 0

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  5,  0 << 5 |  2, 86, 15, 0, 0
.hword  0 << 5 |  5,  0 << 5 | 12, 367, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
