.include "source/macros_asm.s"

.word 5 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 9, 0, 6, 0, 6, 0, 0, 0, 4, 0
.hword 9, 0, 4, 0, 6, 0, 0, 0, 4, 0
.hword 9, 0, 8, 0, 6, 0, 0, 0, 4, 0
.hword 9, 0, 10, 0, 6, 0, 0, 0, 4, 0
.hword 9, 0, 12, 0, 6, 0, 0, 0, 4, 0

.word 8 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   237,  0, 0,  699,     1,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  4,  0 << 5 |  6, 0, 0
.hword  1,                   238,  0, 0,  702,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  6,  0 << 5 |  6, 0, 0
.hword  2,                   239,  0, 0,  701,     2,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 |  6, 0, 0
.hword  3,                   240,  0, 0,  700,     3,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 10,  0 << 5 |  6, 0, 0
.hword  4,                   241,  0, 0,  703,     5,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 12,  0 << 5 |  6, 0, 0
.hword  5,                   183,  0, 0,    0,     6,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 11,  0 << 5 |  9, 0, 0
.hword  6,                    99, 14, 0,  704,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  7,  0 << 5 | 11, 0, 0
.hword  7,                   183,  0, 0,    0,    10,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 13,  0 << 5 |  5, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  7,  0 << 5 | 11, 72, 3, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
