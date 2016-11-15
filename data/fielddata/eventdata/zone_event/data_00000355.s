.include "source/macros_asm.s"

.word 7 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8163, 2, 23, 0, 9, 0, 0, 0, 4, 0
.hword 3, 0, 6, 0, 4, 0, 0, 0, 4, 0
.hword 3, 0, 6, 0, 5, 0, 0, 0, 4, 0
.hword 3, 0, 14, 0, 4, 0, 0, 0, 4, 0
.hword 3, 0, 14, 0, 5, 0, 0, 0, 4, 0
.hword 3, 0, 22, 0, 4, 0, 0, 0, 4, 0
.hword 3, 0, 22, 0, 5, 0, 0, 0, 4, 0

.word 3 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,       SPRITE_POKEBALL,  0, 0, 1072,  7058,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  4,  0 << 5 |  3, 0, 0
.hword  1,                   175,  3, 0,    0,     1,    ORIENT_UP, 0, 0, 0, 2, 2,  0 << 5 | 11,  0 << 5 |  6, 0, 0
.hword  2,                   175,  3, 0,    0,     2, ORIENT_RIGHT, 0, 0, 0, 1, 0,  0 << 5 | 20,  0 << 5 |  7, 0, 0

.word 3 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 20,  0 << 5 |  9, 368, 3, 0, 0
.hword  0 << 5 |  4,  0 << 5 |  9, 368, 1, 0, 0
.hword  0 << 5 | 12,  0 << 5 |  9, 368, 2, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
