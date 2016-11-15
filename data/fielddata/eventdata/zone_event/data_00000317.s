.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 6 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    27,  0, 0,    0,     0, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  2,  0 << 5 |  5, 0, 0
.hword  1,                    27,  0, 0,    0,     0, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  2,  0 << 5 |  6, 0, 0
.hword  2,                   101,  0, 0,    0,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  7,  0 << 5 |  9, 0, 0
.hword  3,                   102,  0, 0,    0,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 |  9, 0, 0
.hword  4,                   104,  0, 0,  491,     0,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  7,  0 << 5 |  2, 0, 0
.hword  5,                   103,  0, 0,  490,     0,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 |  2, 0, 0

.word 0 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
