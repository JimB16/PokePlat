.include "source/macros_asm.s"

.word 5 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 4, 0, 10, 0, 29, 0, 0, 0, 0, 0
.hword 4, 0, 14, 0, 29, 0, 0, 0, 0, 0
.hword 7, 0, 12, 0, 2, 0, 0, 0, 0, 0
.hword 5, 0, 10, 0, 2, 0, 0, 0, 0, 0
.hword 6, 0, 14, 0, 2, 0, 0, 0, 0, 0

.word 6 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   129, 15, 0,  664,     2,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 12,  0 << 5 |  4, 0, 0
.hword  1,                   168, 15, 0,    0,     3,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 13,  0 << 5 | 29, 0, 0
.hword  2,                    51,  7, 1,    0,  3308, ORIENT_RIGHT, 3, 0, 0, 0, 0,  0 << 5 | 15,  0 << 5 | 23, 0, 0
.hword  3,                    51,  2, 1,    0,  3309,  ORIENT_LEFT, 2, 0, 0, 0, 0,  0 << 5 | 16,  0 << 5 | 14, 0, 0
.hword  4,                    51,  8, 1,    0,  3311,  ORIENT_DOWN, 2, 0, 0, 0, 0,  0 << 5 |  2,  0 << 5 |  9, 0, 0
.hword  5,                    51, 15, 1,    0,  3310,  ORIENT_LEFT, 4, 0, 0, 0, 0,  0 << 5 | 11,  0 << 5 | 13, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 12,  0 << 5 | 30, 132, 13, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
