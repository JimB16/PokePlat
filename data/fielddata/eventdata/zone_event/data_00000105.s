.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 6 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    36,  0, 0,    0,     1,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  6,  0 << 5 |  7, 0, 0
.hword  1,         SPRITE_BEAUTY,  0, 0,    0,     2,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  2,  0 << 5 |  4, 0, 0
.hword  2,                    74,  3, 0,    0,     3,  ORIENT_DOWN, 0, 0, 0, 0, 1,  0 << 5 |  9,  0 << 5 |  5, 0, 0
.hword  3,                   206,  3, 0,    0,     4,  ORIENT_DOWN, 0, 0, 0, 1, 1,  0 << 5 |  7,  0 << 5 | 13, 0, 0
.hword  4,                    72,  2, 0,    0,     5,  ORIENT_DOWN, 0, 0, 0, 1, 1,  0 << 5 |  3,  0 << 5 | 11, 0, 0
.hword  5,       SPRITE_REPORTER,  0, 0,  528, 10153, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  4,  0 << 5 | 17, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  6,  0 << 5 | 17, 86, 12, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
