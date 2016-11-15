.include "source/macros_asm.s"

.word 12 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 1, 0, 40, 0, 4, 0, 0, 0, 4, 0
.hword 8075, 2, 44, 0, 5, 0, 0, 0, 4, 0
.hword 8076, 2, 1, 0, 12, 0, 0, 0, 4, 0
.hword 2, 0, 42, 0, 2, 0, 0, 0, 0, 0
.hword 3, 0, 31, 0, 18, 0, 0, 0, 0, 0
.hword 4, 0, 9, 0, 19, 0, 0, 0, 0, 0
.hword 7, 0, 39, 0, 14, 0, 0, 0, 0, 0
.hword 5, 0, 41, 0, 12, 0, 0, 0, 0, 0
.hword 5, 0, 42, 0, 12, 0, 0, 0, 0, 0
.hword 1, 0, 40, 0, 5, 0, 0, 0, 3, 0
.hword 1, 0, 44, 0, 5, 0, 0, 0, 3, 0
.hword 1, 0, 44, 0, 4, 0, 0, 0, 4, 0

.word 7 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,       SPRITE_POKEBALL,  0, 0, 1181,  7167,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 16,  0 << 5 | 21, 0, 0
.hword  1,                   124, 14, 1,  567,  3509,    ORIENT_UP, 3, 0, 0, 0, 0,  0 << 5 | 10,  0 << 5 |  6, 0, 0
.hword  2,                   124,  7, 1,  567,  3512,    ORIENT_UP, 4, 0, 0, 0, 0,  0 << 5 | 21,  0 << 5 | 16, 0, 0
.hword  3,                   125, 16, 1,  567,  3429,  ORIENT_LEFT, 4, 0, 0, 0, 0,  0 << 5 | 26,  0 << 5 | 16, 0, 0
.hword  4,  SPRITE_MALESCIENTIST, 14, 1,  567,  3828,    ORIENT_UP, 2, 0, 0, 0, 0,  1 << 5 |  0,  0 << 5 |  6, 0, 0
.hword  5,       SPRITE_POKEBALL,  0, 0, 1313,  7298,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  3,  0 << 5 | 11, 0, 0
.hword  6,                   183,  0, 0,    0,     6,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  9,  0 << 5 | 17, 0, 0

.word 15 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  7,  0 << 5 |  3, 305, 3, 0, 0
.hword  0 << 5 | 24,  0 << 5 |  3, 305, 5, 0, 0
.hword  0 << 5 | 10,  0 << 5 | 11, 305, 4, 0, 0
.hword  0 << 5 | 12,  0 << 5 |  3, 307, 0, 0, 0
.hword  1 << 5 | 18,  0 << 5 |  3, 307, 1, 0, 0
.hword  0 << 5 |  1,  0 << 5 |  3, 306, 6, 0, 0
.hword  0 << 5 | 17,  0 << 5 |  5, 306, 5, 0, 0
.hword  0 << 5 |  1,  0 << 5 | 14, 306, 8, 0, 0
.hword  1 << 5 | 13,  0 << 5 | 12, 306, 7, 0, 0
.hword  1 << 5 | 20,  0 << 5 |  6, 569, 1, 0, 0
.hword  0 << 5 | 29,  0 << 5 | 13, 569, 0, 0, 0
.hword  1 << 5 | 20,  0 << 5 | 12, 306, 12, 0, 0
.hword  0 << 5 | 18,  0 << 5 | 20, 306, 11, 0, 0
.hword  0 << 5 |  1,  0 << 5 | 22, 306, 14, 0, 0
.hword  1 << 5 | 13,  0 << 5 | 22, 306, 13, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
