.include "source/macros_asm.s"

.word 2 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 6, 0, 10, 0, 9, 0, 0, 0, 0, 0
.hword 7, 0, 13, 0, 2, 0, 0, 0, 0, 0

.word 6 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   163,  0, 0,    0,     1,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 16,  0 << 5 |  8, 0, 0
.hword  1,                    82,  3, 0,    0,     2,  ORIENT_DOWN, 0, 0, 0, 1, 0,  0 << 5 | 17,  0 << 5 | 11, 0, 0
.hword  2,                    63,  3, 0,    0,     3, ORIENT_RIGHT, 0, 0, 0, 1, 0,  0 << 5 |  2,  0 << 5 |  9, 0, 0
.hword  3,                    37,  3, 0,    0,     8,    ORIENT_UP, 0, 0, 0, 1, 0,  0 << 5 |  4,  0 << 5 | 11, 0, 0
.hword  4,                    25,  0, 0,    0,     4, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  3,  0 << 5 |  5, 0, 0
.hword  5,                    24,  0, 0,    0,     5,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  2,  0 << 5 |  5, 0, 0

.word 4 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 10,  0 << 5 | 12, 132, 3, 0, 0
.hword  0 << 5 | 12,  0 << 5 |  8, 138, 0, 0, 0
.hword  0 << 5 | 15,  0 << 5 |  2, 142, 0, 0, 0
.hword  0 << 5 |  7,  0 << 5 |  8, 566, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
