.include "source/macros_asm.s"

.word 10 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8072, 2, 292, 0, 332, 0, 0, 0, 4, 0
.hword 8073, 2, 316, 0, 291, 0, 0, 0, 4, 0
.hword 8193, 2, 291, 0, 299, 0, 0, 0, 4, 0
.hword 8194, 2, 304, 0, 354, 0, 0, 0, 4, 0
.hword 8195, 2, 305, 0, 308, 0, 0, 0, 4, 0
.hword 8196, 2, 313, 0, 324, 0, 0, 0, 4, 0
.hword 8197, 2, 299, 0, 319, 0, 0, 0, 4, 0
.hword 8198, 2, 318, 0, 303, 0, 0, 0, 4, 0
.hword 8199, 2, 314, 0, 348, 0, 0, 0, 4, 0
.hword 8200, 2, 288, 0, 337, 0, 0, 0, 4, 0

.word 19 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    32, 39, 1,    0,  3141,  ORIENT_DOWN, 3, 0, 0, 2, 8,  9 << 5 | 30, 10 << 5 | 24, 0, 0
.hword  1,                    33, 37, 1,    0,  3143,    ORIENT_UP, 4, 0, 0, 4, 6,  9 << 5 |  6,  9 << 5 |  8, 0, 0
.hword  2,                    32, 44, 7,    0,  3142, ORIENT_RIGHT, 2, 0, 0, 4, 6,  9 << 5 | 26,  9 << 5 |  8, 0, 0
.hword  3,                    33, 19, 1,    0,  3144,  ORIENT_DOWN, 3, 0, 0, 0, 0,  9 << 5 |  3, 10 << 5 | 24, 0, 0
.hword  4,      SPRITE_LITTLEBOY, 51, 2,    0,  3145,  ORIENT_DOWN, 1, 0, 0, 0, 0,  9 << 5 | 22, 10 << 5 | 31, 0, 0
.hword  5,      SPRITE_LITTLEBOY, 51, 2,    0,  3146,  ORIENT_DOWN, 1, 0, 0, 0, 0,  9 << 5 |  2, 10 << 5 |  1, 0, 0
.hword  6,                    51, 20, 5,    0,  3147,  ORIENT_DOWN, 2, 0, 0, 0, 8,  9 << 5 |  3,  8 << 5 | 17, 0, 0
.hword  7,                    68, 16, 1,    0,  3139,  ORIENT_LEFT, 3, 0, 0, 0, 0,  9 << 5 | 19, 11 << 5 | 17, 0, 0
.hword  8,                    69, 17, 1,    0,  3140, ORIENT_RIGHT, 5, 0, 0, 0, 0,  9 << 5 | 14,  8 << 5 | 11, 0, 0
.hword  9,      SPRITE_GUIDEPOST,  0, 0,    0,     2,    ORIENT_UP, 10, 0, 0, 0, 0,  9 << 5 |  4,  8 << 5 | 14, 0, 0
.hword 10,       SPRITE_POKEBALL,  0, 0, 1175,  7161,    ORIENT_UP, 0, 0, 0, 0, 0,  9 << 5 |  8,  9 << 5 | 17, 0, 0
.hword 11,       SPRITE_POKEBALL,  0, 0, 1176,  7162,    ORIENT_UP, 0, 0, 0, 0, 0,  9 << 5 | 17, 10 << 5 | 10, 0, 0
.hword 12,       SPRITE_POKEBALL,  0, 0, 1174,  7160,    ORIENT_UP, 0, 0, 0, 0, 0,  9 << 5 | 12,  9 << 5 | 28, 0, 0
.hword 13,                   191,  0, 0,    0,     1,    ORIENT_UP, 0, 0, 0, 0, 0,  9 << 5 | 25,  8 << 5 | 19, 0, 0
.hword 14,                    65,  2, 0,    0,     3,    ORIENT_UP, 0, 0, 0, 0, 0,  9 << 5 | 25,  8 << 5 | 25, 0, 0
.hword 15,                   129, 14, 0,  663,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  9 << 5 | 17, 11 << 5 | 31, 0, 0
.hword 16,       SPRITE_POKEBALL,  0, 0, 1307,  7292,    ORIENT_UP, 0, 0, 0, 0, 0,  9 << 5 |  9, 11 << 5 |  6, 0, 0
.hword 17,       SPRITE_POKEBALL,  0, 0, 1308,  7293,    ORIENT_UP, 0, 0, 0, 0, 0,  9 << 5 | 23, 10 << 5 | 30, 0, 0
.hword 18,       SPRITE_POKEBALL,  0, 0, 1309,  7294,    ORIENT_UP, 0, 0, 0, 0, 0,  9 << 5 | 28,  9 << 5 | 21, 0, 0

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  9 << 5 |  5,  9 << 5 | 23, 386, 0, 0, 0
.hword  9 << 5 | 28,  8 << 5 | 29, 387, 0, 0, 0

.word 1 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 4,  9 << 5 | 14, 11 << 5 | 24, 2, 1, 0, 0, 16552
