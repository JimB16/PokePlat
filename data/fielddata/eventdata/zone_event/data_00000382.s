.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 7 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    71,  5, 0,    0,     2,  ORIENT_LEFT, 0, 0, 0, 1, 0,  0 << 5 |  8,  0 << 5 |  5, 0, 0
.hword  1,                    71,  3, 0,    0,     2,    ORIENT_UP, 0, 0, 0, 1, 0,  0 << 5 |  2,  0 << 5 |  7, 0, 0
.hword  2,                    71,  3, 0,    0,     2, ORIENT_RIGHT, 0, 0, 0, 1, 1,  0 << 5 |  1,  0 << 5 |  4, 0, 0
.hword  3,                    71,  3, 0,    0,     2,  ORIENT_DOWN, 0, 0, 0, 1, 1,  0 << 5 |  7,  0 << 5 |  7, 0, 0
.hword  4,                    71,  5, 0,    0,     2, ORIENT_RIGHT, 0, 0, 0, 1, 0,  0 << 5 |  7,  0 << 5 |  5, 0, 0
.hword  5,                    15, 11, 0,    0,     7,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  5,  0 << 5 |  5, 0, 0
.hword  6,                    71,  3, 1,    0,  3831, ORIENT_RIGHT, 0, 0, 0, 1, 0,  0 << 5 |  4,  0 << 5 |  3, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  4,  0 << 5 |  8, 395, 3, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
