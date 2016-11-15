.include "source/macros_asm.s"

.word 7 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8084, 2, 41, 0, 44, 0, 0, 0, 4, 0
.hword 8092, 2, 44, 0, 47, 0, 0, 0, 4, 0
.hword 8085, 2, 33, 0, 9, 0, 0, 0, 4, 0
.hword 8086, 2, 19, 0, 12, 0, 0, 0, 4, 0
.hword 8088, 2, 43, 0, 17, 0, 0, 0, 4, 0
.hword 8262, 2, 32, 0, 14, 0, 0, 0, 4, 0
.hword 8270, 2, 10, 0, 20, 0, 0, 0, 4, 0

.word 7 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    85,  0, 0,   32, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 10,  1 << 5 | 12, 0, 0
.hword  1,                    85,  0, 0,   33, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 11,  1 << 5 | 10, 0, 0
.hword  2,                    85,  0, 0,   34, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 13,  1 << 5 | 11, 0, 0
.hword  3,                    85,  0, 0,   35, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 13,  1 << 5 |  7, 0, 0
.hword  4,                    85,  0, 0,   36, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 10,  1 << 5 |  5, 0, 0
.hword  5,                    85,  0, 0,   37, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  7,  0 << 5 | 20, 0, 0
.hword  6,                    84,  0, 0,   38, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  3,  0 << 5 | 17, 0, 0

.word 3 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  1 << 5 | 10,  1 << 5 |  8, 212, 4, 0, 0
.hword  0 << 5 | 13,  0 << 5 | 19, 213, 0, 0, 0
.hword  1 << 5 | 13,  0 << 5 | 28, 216, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
