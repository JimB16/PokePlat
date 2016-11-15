.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 7 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   175,  0, 0,    0,     2,  ORIENT_DOWN, 0, 0, 0, 0, 0,  1 << 5 | 17,  0 << 5 |  6, 0, 0
.hword  1,                   175,  0, 0,    0,     3,  ORIENT_DOWN, 0, 0, 0, 0, 0,  1 << 5 |  2,  0 << 5 |  6, 0, 0
.hword  2,                   175,  0, 0,    0,     4, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  1,  0 << 5 |  7, 0, 0
.hword  3,                   175,  0, 0,    0,     5,  ORIENT_LEFT, 0, 0, 0, 0, 0,  1 << 5 | 24,  0 << 5 |  7, 0, 0
.hword  4,                   101, 17, 0,  600,     0, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  1,  0 << 5 |  7, 0, 0
.hword  5,                   175, 17, 0,  599,     0, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  1,  0 << 5 |  7, 0, 0
.hword  6,                   175, 20, 0,    0,     6, ORIENT_RIGHT, 0, 0, 0, 3, 0,  1 << 5 | 10,  0 << 5 |  6, 0, 0

.word 6 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  1 << 5 |  1,  0 << 5 | 16, 367, 2, 0, 0
.hword  0 << 5 |  5,  0 << 5 |  5, 369, 1, 0, 0
.hword  0 << 5 | 13,  0 << 5 |  5, 369, 2, 0, 0
.hword  0 << 5 | 21,  0 << 5 |  5, 369, 0, 0, 0
.hword  1 << 5 | 16,  0 << 5 |  5, 370, 0, 0, 0
.hword  1 << 5 |  1,  0 << 5 |  2, 287, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
