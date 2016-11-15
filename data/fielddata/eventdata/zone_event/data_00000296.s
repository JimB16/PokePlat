.include "source/macros_asm.s"

.word 3 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8080, 2, 20, 0, 7, 0, 0, 0, 4, 0
.hword 3, 0, 21, 0, 14, 0, 0, 0, 0, 0
.hword 4, 0, 1, 0, 6, 0, 0, 0, 2, 0

.word 5 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   120, 14, 0,  446,     1,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 |  8, 0, 0
.hword  1,                   202,  0, 0,  550,     2,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 | 14, 0, 0
.hword  2,                   202,  0, 0,  550,     2,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  9,  0 << 5 | 14, 0, 0
.hword  3,                   192,  0, 0,  567,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 18,  0 << 5 | 14, 0, 0
.hword  4,                   192,  0, 0,  567,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 19,  0 << 5 | 14, 0, 0

.word 4 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  3,  0 << 5 | 15, 307, 2, 0, 0
.hword  0 << 5 | 22,  0 << 5 |  3, 497, 0, 0, 0
.hword  0 << 5 | 21,  0 << 5 | 17, 305, 14, 0, 0
.hword  0 << 5 |  8,  0 << 5 |  3, 569, 2, 0, 0

.word 1 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 1,  0 << 5 |  8,  0 << 5 | 11, 2, 1, 0, 0, 16598
