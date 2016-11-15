.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 11 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    85,  0, 0,   35, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  9,  0 << 5 |  7, 0, 0
.hword  1,                    85,  0, 0,   36, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 13,  0 << 5 |  7, 0, 0
.hword  2,                    85,  0, 0,   37, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  9,  0 << 5 | 15, 0, 0
.hword  3,                    85,  0, 0,   34, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 12,  0 << 5 |  6, 0, 0
.hword  4,                    85,  0, 0,   33, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 11,  0 << 5 |  5, 0, 0
.hword  5,                    85,  0, 0,   32, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 10,  0 << 5 |  6, 0, 0
.hword  6,                    85,  0, 0,   38, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 10,  0 << 5 | 16, 0, 0
.hword  7,                    85,  0, 0,   39, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 11,  0 << 5 | 17, 0, 0
.hword  8,                    85,  0, 0,   40, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 12,  0 << 5 | 16, 0, 0
.hword  9,                    85,  0, 0,   41, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 13,  0 << 5 | 15, 0, 0
.hword 10,                    85,  0, 0,   43, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 11,  0 << 5 | 11, 0, 0

.word 4 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 11,  0 << 5 |  1, 268, 2, 0, 0
.hword  0 << 5 | 20,  0 << 5 | 11, 268, 3, 0, 0
.hword  0 << 5 | 11,  0 << 5 | 20, 268, 0, 0, 0
.hword  0 << 5 |  2,  0 << 5 | 11, 268, 1, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
