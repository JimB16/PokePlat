.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 6 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   125, 15, 0,  456,     6,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 30,  1 << 5 | 16, 0, 0
.hword  1,                   120, 14, 0,  458,     1,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 31,  0 << 5 | 28, 0, 0
.hword  2,                   121, 15, 0,  457,     8,  ORIENT_DOWN, 0, 0, 0, 0, 0,  1 << 5 |  1,  1 << 5 |  0, 0, 0
.hword  3,                   124, 15, 0,  456,     6,  ORIENT_DOWN, 0, 0, 0, 0, 0,  1 << 5 |  0,  1 << 5 | 16, 0, 0
.hword  4,                   123, 15, 0,  457,     7,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 29,  1 << 5 |  0, 0, 0
.hword  5,          SPRITE_BARRY,  0, 0,  453,     1,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 30,  1 << 5 |  3, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 31,  1 << 5 | 21, 215, 1, 0, 0

.word 3 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 3,  0 << 5 | 31,  1 << 5 | 16, 1, 1, 0, 0, 16536
.hword 5,  0 << 5 | 30,  1 << 5 |  0, 3, 1, 0, 1, 16536
.hword 2039,  0 << 5 | 31,  1 << 5 | 20, 1, 1, 0, 1, 16664
