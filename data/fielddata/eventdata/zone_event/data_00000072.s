.include "source/macros_asm.s"

.word 1 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 3, 0, 16, 0, 2, 0, 0, 0, 0, 0

.word 5 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   124, 14, 0,  509,     1,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  7,  0 << 5 |  6, 0, 0
.hword  1,                   125,  0, 0,  509,     2,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 19,  0 << 5 |  8, 0, 0
.hword  2,                   125,  0, 1,  509,  3421,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 13,  0 << 5 |  8, 0, 0
.hword  3,                   124, 14, 1,  509,  3411,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  3,  0 << 5 |  6, 0, 0
.hword  4,       SPRITE_POKEBALL,  0, 0, 1277,  7262,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  3,  0 << 5 | 12, 0, 0

.word 4 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  3,  0 << 5 |  3, 72, 1, 0, 0
.hword  0 << 5 | 20,  0 << 5 |  3, 74, 0, 0, 0
.hword  0 << 5 |  8,  0 << 5 |  3, 72, 2, 0, 0
.hword  0 << 5 | 14,  0 << 5 |  3, 74, 2, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
