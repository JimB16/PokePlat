.include "source/macros_asm.s"

.word 6 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8105, 2, 6, 0, 23, 0, 0, 0, 4, 0
.hword 8103, 2, 18, 0, 30, 0, 0, 0, 4, 0
.hword 8104, 2, 16, 0, 35, 0, 0, 0, 4, 0
.hword 8107, 2, 16, 0, 19, 0, 0, 0, 4, 0
.hword 8106, 2, 24, 0, 38, 0, 0, 0, 4, 0
.hword 8108, 2, 20, 0, 58, 0, 0, 0, 4, 0

.word 17 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    85,  0, 0,   32, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  6,  0 << 5 |  7, 0, 0
.hword  1,                    85,  0, 0,   33, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  7,  0 << 5 | 23, 0, 0
.hword  2,                    85,  0, 0,   34, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 25,  0 << 5 |  6, 0, 0
.hword  3,                    85,  0, 0,   35, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 18,  0 << 5 | 29, 0, 0
.hword  4,                    85,  0, 0,   36, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 17,  0 << 5 | 30, 0, 0
.hword  5,                    85,  0, 0,   37, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 13,  1 << 5 |  2, 0, 0
.hword  6,                    85,  0, 0,   38, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 15,  1 << 5 |  3, 0, 0
.hword  7,                    85,  0, 0,   39, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 14,  1 << 5 |  6, 0, 0
.hword  8,                    85,  0, 0,   40, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 15,  1 << 5 |  9, 0, 0
.hword  9,                    85,  0, 0,   41, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 14,  1 << 5 | 11, 0, 0
.hword 10,                    85,  0, 0,   42, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 26,  1 << 5 | 22, 0, 0
.hword 11,                    85,  0, 0,   43, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 25,  1 << 5 | 23, 0, 0
.hword 12,                    85,  0, 0,   44, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  6,  1 << 5 | 25, 0, 0
.hword 13,                   124, 17, 1,  655,  3517, ORIENT_RIGHT, 4, 0, 0, 0, 0,  0 << 5 | 20,  0 << 5 |  7, 0, 0
.hword 14,                   124, 15, 1,  655,  3518,  ORIENT_DOWN, 4, 0, 0, 0, 0,  0 << 5 |  3,  1 << 5 | 16, 0, 0
.hword 15,                   125, 20, 4,  655,  3523,  ORIENT_DOWN, 1, 2, 0, 0, 10,  0 << 5 | 25,  0 << 5 | 31, 0, 0
.hword 16,                   124,  0, 0,  655,     1,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 16,  0 << 5 | 14, 0, 0

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  2,  1 << 5 | 26, 210, 2, 0, 0
.hword  0 << 5 | 16,  0 << 5 | 13, 218, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
