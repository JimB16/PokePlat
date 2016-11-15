.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 6 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    41, 17, 0,    0,     2, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  7,  0 << 5 |  7, 0, 0
.hword  1,                    60,  0, 0,    0,     3,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 |  4, 0, 0
.hword  2,         SPRITE_FATGUY, 17, 1,    0,  3274, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  1,  0 << 5 |  4, 0, 0
.hword  3,         SPRITE_FATGUY, 16, 1,    0,  3275,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 |  3,  0 << 5 |  4, 0, 0
.hword  4,                    60, 15, 1,    0,  3365,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  5,  0 << 5 |  3, 0, 0
.hword  5,                   164,  0, 0,    0,     4,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 |  3,  0 << 5 |  6, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  5,  0 << 5 |  8, 362, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
