.include "source/macros_asm.s"

.word 8 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 7, 0, 6, 0, 5, 0, 0, 0, 0, 0
.hword 7, 0, 7, 0, 5, 0, 0, 0, 0, 0
.hword 8, 0, 5, 0, 3, 0, 0, 0, 0, 0
.hword 9, 0, 2, 0, 3, 0, 0, 0, 4, 0
.hword 9, 0, 1, 0, 3, 0, 0, 0, 4, 0
.hword 10, 0, 1, 0, 5, 0, 0, 0, 4, 0
.hword 10, 0, 2, 0, 5, 0, 0, 0, 4, 0
.hword 10, 0, 3, 0, 5, 0, 0, 0, 4, 0

.word 2 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   140, 14, 0,    0,     4,    ORIENT_UP, 0, 0, 0, 1, 1,  0 << 5 |  7,  0 << 5 |  8, 0, 1
.hword  1,      SPRITE_BARRYSMOM, 14, 0,  497,     6,    ORIENT_UP, 0, 0, 0, 1, 1,  0 << 5 |  6,  0 << 5 | 10, 0, 1

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  6,  0 << 5 | 10, 411, 1, 0, 0
.hword  0 << 5 | 10,  0 << 5 |  3, 415, 0, 0, 0

.word 1 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 5,  0 << 5 |  6,  0 << 5 | 10, 1, 1, 0, 1, 16548
