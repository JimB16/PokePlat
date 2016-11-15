.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 6 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    27,  0, 0,    0,     1, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 |  1, 0, 0
.hword  1,                   141,  2, 0,  492,     2,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 13,  0 << 5 | 10, 0, 0
.hword  2,                   145,  2, 0,  493,     3, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  4,  0 << 5 |  6, 0, 0
.hword  3,                   142,  2, 0,  494,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 11,  0 << 5 |  8, 0, 0
.hword  4,                   143,  2, 0,  495,     5, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  2,  0 << 5 | 10, 0, 0
.hword  5,                   144,  2, 0,  496,     6,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  7,  0 << 5 |  9, 0, 0

.word 0 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
