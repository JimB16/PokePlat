.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 4 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    56,  0, 0,  633,     2, ORIENT_RIGHT, 0, 0, 0, 0, 0,  4 << 5 | 23,  8 << 5 | 21, 0, 0
.hword  1,                   192,  0, 0,    0,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  4 << 5 | 23,  8 << 5 | 22, 0, 0
.hword  2,                   192,  0, 0,    0,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  4 << 5 | 23,  8 << 5 | 20, 0, 0
.hword  3,                   192,  0, 0,    0,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  4 << 5 | 23,  8 << 5 | 19, 0, 0

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  4 << 5 |  9,  8 << 5 | 12, 321, 0, 0, 0
.hword  4 << 5 | 10,  8 << 5 | 12, 321, 1, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
