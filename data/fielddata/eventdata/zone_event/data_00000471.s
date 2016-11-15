.include "source/macros_asm.s"

.word 4 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 4, 0, 8, 0, 10, 0, 0, 0, 0, 0
.hword 5, 0, 2, 0, 4, 0, 0, 0, 0, 0
.hword 6, 0, 14, 0, 4, 0, 0, 0, 0, 0
.hword 10, 0, 8, 0, 5, 0, 0, 0, 0, 0

.word 5 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   122, 14, 0,  567,     3,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 |  6, 0, 0
.hword  1,                   153, 15, 0,  566,    13,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 14,  0 << 5 |  4, 0, 0
.hword  2,                   152, 15, 0,  566,    12,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  2,  0 << 5 |  4, 0, 0
.hword  3,                   151, 15, 0,  566,    11,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 | 10, 0, 0
.hword  4,         SPRITE_CHARON, 14, 0,  670,    15,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  7,  0 << 5 |  6, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  8,  0 << 5 | 13, 497, 1, 0, 0

.word 1 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 14,  0 << 5 |  8,  0 << 5 | 13, 1, 1, 0, 1, 16653
