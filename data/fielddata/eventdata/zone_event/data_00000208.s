.include "source/macros_asm.s"

.word 6 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8084, 2, 41, 0, 7, 0, 0, 0, 4, 0
.hword 8092, 2, 44, 0, 10, 0, 0, 0, 4, 0
.hword 8089, 2, 13, 0, 29, 0, 0, 0, 4, 0
.hword 8090, 2, 31, 0, 33, 0, 0, 0, 4, 0
.hword 8260, 2, 15, 0, 22, 0, 0, 0, 4, 0
.hword 8269, 2, 34, 0, 13, 0, 0, 0, 4, 0

.word 8 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    85,  0, 0,   32, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 13,  0 << 5 | 31, 0, 0
.hword  1,                    85,  0, 0,   33, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 10,  0 << 5 |  7, 0, 0
.hword  2,                    85,  0, 0,   34, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 11,  0 << 5 |  5, 0, 0
.hword  3,                    85,  0, 0,   35, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 13,  0 << 5 |  6, 0, 0
.hword  4,                    85,  0, 0,   36, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 13,  0 << 5 |  2, 0, 0
.hword  5,                    85,  0, 0,   37, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 10,  0 << 5 |  0, 0, 0
.hword  6,                    85,  0, 0,   38, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 15,  0 << 5 |  0, 0, 0
.hword  7,                    84,  0, 0,   39, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 25,  0 << 5 | 29, 0, 0

.word 3 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 12,  1 << 5 |  3, 209, 2, 0, 0
.hword  0 << 5 | 11,  0 << 5 | 17, 212, 0, 0, 0
.hword  1 << 5 |  7,  0 << 5 | 18, 212, 1, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
