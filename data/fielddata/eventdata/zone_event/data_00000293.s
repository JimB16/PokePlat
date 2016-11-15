.include "source/macros_asm.s"

.word 2 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8074, 2, 45, 0, 21, 0, 0, 0, 4, 0
.hword 7, 0, 42, 0, 13, 0, 0, 0, 0, 0

.word 11 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   125, 15, 0,    0,     2,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 29,  0 << 5 | 15, 0, 0
.hword  1,  SPRITE_MALESCIENTIST,  3, 0,    0,     5,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 11,  0 << 5 | 18, 0, 0
.hword  2,       SPRITE_POKEBALL,  0, 0, 1179,  7165,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 20,  0 << 5 | 14, 0, 0
.hword  3,                   125,  8, 1,  567,  3427,  ORIENT_DOWN, 2, 0, 0, 0, 0,  1 << 5 |  9,  0 << 5 |  7, 0, 0
.hword  4,  SPRITE_MALESCIENTIST, 17, 1,  567,  3829, ORIENT_RIGHT, 6, 0, 0, 0, 0,  0 << 5 | 17,  0 << 5 |  6, 0, 0
.hword  5,                   202,  0, 0,  548,     6,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 22,  0 << 5 | 18, 0, 0
.hword  6,                   202,  0, 0,  548,     6,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 23,  0 << 5 | 18, 0, 0
.hword  7,                   125, 15, 0,    0,     4,  ORIENT_DOWN, 0, 0, 0, 1, 1,  0 << 5 |  2,  0 << 5 | 19, 0, 0
.hword  8,                   124,  3, 0,    0,     3,  ORIENT_LEFT, 0, 0, 0, 1, 1,  0 << 5 | 19,  0 << 5 | 21, 0, 0
.hword  9,                   122,  3, 0,  658,     8,  ORIENT_LEFT, 0, 0, 0, 3, 0,  1 << 5 |  1,  0 << 5 | 19, 0, 0
.hword 10,       SPRITE_POKEBALL,  0, 0, 1312,  7297,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 16,  0 << 5 |  6, 0, 0

.word 15 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  8,  0 << 5 | 22, 132, 14, 0, 0
.hword  0 << 5 | 29,  0 << 5 | 22, 132, 15, 0, 0
.hword  1 << 5 | 10,  0 << 5 | 22, 132, 16, 0, 0
.hword  0 << 5 |  4,  0 << 5 |  3, 306, 0, 0, 0
.hword  0 << 5 | 19,  0 << 5 | 14, 306, 2, 0, 0
.hword  0 << 5 | 27,  0 << 5 |  3, 306, 1, 0, 0
.hword  0 << 5 | 11,  0 << 5 |  3, 310, 0, 0, 0
.hword  1 << 5 | 14,  0 << 5 |  3, 309, 0, 0, 0
.hword  1 << 5 | 20,  0 << 5 | 21, 305, 9, 0, 0
.hword  1 << 5 |  9,  0 << 5 |  3, 305, 8, 0, 0
.hword  1 << 5 |  7,  0 << 5 |  3, 305, 11, 0, 0
.hword  1 << 5 |  0,  0 << 5 |  3, 305, 10, 0, 0
.hword  1 << 5 |  4,  0 << 5 |  8, 305, 13, 0, 0
.hword  0 << 5 |  1,  0 << 5 |  8, 305, 12, 0, 0
.hword  1 << 5 |  9,  0 << 5 | 14, 308, 2, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
