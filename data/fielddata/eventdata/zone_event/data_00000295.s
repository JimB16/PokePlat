.include "source/macros_asm.s"

.word 4 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8078, 2, 39, 0, 21, 0, 0, 0, 4, 0
.hword 8077, 2, 2, 0, 18, 0, 0, 0, 4, 0
.hword 8079, 2, 21, 0, 14, 0, 0, 0, 4, 0
.hword 3, 0, 6, 0, 19, 0, 0, 0, 0, 0

.word 10 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   124, 15, 0,  567,     1,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 15,  0 << 5 |  6, 0, 0
.hword  1,       SPRITE_POKEBALL,  0, 0, 1180,  7166,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  4,  0 << 5 | 12, 0, 0
.hword  2,                   124, 20, 4,  567,  3511, ORIENT_RIGHT, 2, 2, 0, 8, 0,  0 << 5 |  9,  0 << 5 | 20, 0, 0
.hword  3,                   124, 14, 1,  567,  3513,    ORIENT_UP, 3, 0, 0, 0, 0,  1 << 5 | 10,  0 << 5 |  7, 0, 0
.hword  4,                   125, 15, 1,  567,  3521,  ORIENT_DOWN, 3, 0, 0, 0, 0,  1 << 5 | 10,  0 << 5 |  3, 0, 0
.hword  5,                   202,  0, 0,  549,     2,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 27,  0 << 5 | 19, 0, 0
.hword  6,                   202,  0, 0,  549,     2,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 28,  0 << 5 | 19, 0, 0
.hword  7,                   124,  6, 1,  567,  3508,    ORIENT_UP, 3, 0, 0, 0, 0,  0 << 5 |  4,  0 << 5 |  6, 0, 0
.hword  8,       SPRITE_POKEBALL,  0, 0, 1182,  7168,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 18,  0 << 5 | 21, 0, 0
.hword  9,       SPRITE_POKEBALL,  0, 0, 1310,  7295,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  6,  0 << 5 | 20, 0, 0

.word 9 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 15,  0 << 5 |  3, 306, 3, 0, 0
.hword  1 << 5 | 15,  0 << 5 |  3, 306, 4, 0, 0
.hword  0 << 5 | 10,  0 << 5 | 11, 308, 0, 0, 0
.hword  0 << 5 |  6,  0 << 5 | 14, 307, 4, 0, 0
.hword  0 << 5 | 15,  0 << 5 | 13, 307, 3, 0, 0
.hword  0 << 5 | 17,  0 << 5 | 11, 307, 6, 0, 0
.hword  1 << 5 | 20,  0 << 5 | 12, 307, 5, 0, 0
.hword  0 << 5 | 19,  0 << 5 | 11, 307, 8, 0, 0
.hword  1 << 5 |  0,  0 << 5 | 22, 307, 7, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
