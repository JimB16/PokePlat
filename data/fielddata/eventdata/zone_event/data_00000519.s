.include "source/macros_asm.s"

.word 1 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 12, 0, 12, 0, 2, 0, 0, 0, 0, 0

.word 10 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   163,  0, 0,    0,     4,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 15,  0 << 5 |  6, 0, 0
.hword  1,                    25,  0, 0,    0,     8,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 20,  0 << 5 | 11, 0, 0
.hword  2,                    25,  0, 0,    0,     9,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 15,  0 << 5 | 11, 0, 0
.hword  3,                    37,  3, 0,    0,     2,    ORIENT_UP, 0, 0, 0, 1, 1,  0 << 5 |  3,  0 << 5 |  8, 0, 0
.hword  4,                   163,  0, 0,    0,     5, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  5,  0 << 5 |  6, 0, 0
.hword  5,                    25,  0, 0,    0,    11,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  5,  0 << 5 | 11, 0, 0
.hword  6,                    25,  0, 0,    0,     6,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 20,  0 << 5 |  6, 0, 0
.hword  7,                    37,  3, 0,    0,     3,    ORIENT_UP, 0, 0, 0, 1, 1,  0 << 5 | 16,  0 << 5 |  9, 0, 0
.hword  8,                    36,  3, 0,    0,     1,  ORIENT_LEFT, 0, 0, 0, 1, 1,  0 << 5 | 21,  0 << 5 | 13, 0, 0
.hword  9,                    99, 15, 0,  389,     7,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 15,  0 << 5 |  4, 0, 0

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 11,  0 << 5 |  8, 137, 3, 0, 0
.hword  0 << 5 | 14,  0 << 5 |  2, 142, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
