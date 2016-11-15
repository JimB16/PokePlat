.include "source/macros_asm.s"

.word 1 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 3, 0, 22, 0, 5, 0, 0, 0, 0, 0

.word 7 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   124,  3, 0,  509,     1,  ORIENT_DOWN, 0, 0, 0, 1, 1,  0 << 5 |  3,  0 << 5 | 11, 0, 0
.hword  1,                   124, 15, 0,  509,     2,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 10,  0 << 5 | 11, 0, 0
.hword  2,                   124, 16, 1,  509,  3409,  ORIENT_LEFT, 3, 0, 0, 0, 0,  0 << 5 | 16,  0 << 5 |  8, 0, 0
.hword  3,                   125, 17, 1,  509,  3420, ORIENT_RIGHT, 3, 0, 0, 0, 0,  0 << 5 | 12,  0 << 5 |  8, 0, 0
.hword  4,                   124, 14, 0,  450,     4,    ORIENT_UP, 0, 0, 0, 1, 1,  0 << 5 | 14,  0 << 5 | 15, 0, 0
.hword  5,                   213, 14, 0,  443,     4,    ORIENT_UP, 0, 0, 0, 1, 1,  0 << 5 | 14,  0 << 5 | 15, 0, 0
.hword  6,                   262,  0, 0,  710,     6,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  1,  0 << 5 |  5, 0, 0

.word 4 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 11,  0 << 5 | 15, 65, 3, 0, 0
.hword  0 << 5 | 14,  0 << 5 |  6, 73, 0, 0, 0
.hword  0 << 5 | 20,  0 << 5 |  6, 73, 2, 0, 0
.hword  0 << 5 |  2,  0 << 5 |  2, 571, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
