.include "source/macros_asm.s"

.word 2 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 7, 0, 29, 0, 17, 0, 0, 0, 4, 0
.hword 8, 0, 33, 0, 17, 0, 0, 0, 4, 0

.word 6 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   138, 14, 0,  461,     2,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 31,  0 << 5 | 30, 0, 0
.hword  1,                   152, 15, 0,  698,     0,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 31,  0 << 5 | 28, 0, 0
.hword  2,                   123, 14, 0,  455,     3,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 29,  1 << 5 |  1, 0, 0
.hword  3,                   121, 14, 0,  455,     4,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  1,  1 << 5 |  1, 0, 0
.hword  4,                   125, 14, 0,  455,     6,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 30,  1 << 5 | 16, 0, 0
.hword  5,                   124, 14, 0,  455,     5,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  0,  1 << 5 | 16, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 31,  1 << 5 | 21, 215, 2, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
