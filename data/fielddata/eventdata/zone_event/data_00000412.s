.include "source/macros_asm.s"

.word 1 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8034, 2, 594, 0, 640, 0, 0, 0, 4, 0

.word 21 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    42,  3, 0,    0,     2,  ORIENT_DOWN, 0, 0, 0, 0, 2, 17 << 5 | 19, 20 << 5 | 12, 0, 7
.hword  1,     SPRITE_LITTLEGIRL,  0, 0,    0,     3,  ORIENT_LEFT, 0, 0, 0, 0, 0, 17 << 5 |  7, 20 << 5 | 18, 0, 7
.hword  2,                    41,  2, 0,    0,     1,  ORIENT_DOWN, 0, 0, 0, 2, 0, 17 << 5 | 25, 20 << 5 | 19, 0, 7
.hword  3,         SPRITE_OLDMAN,  0, 0,    0,  9500,  ORIENT_DOWN, 0, 0, 0, 0, 0, 17 << 5 | 11, 20 << 5 |  8, 0, 0
.hword  4,       SPRITE_SIGNPOST,  0, 0,    0,     7,  ORIENT_DOWN, 4, 0, 0, 0, 0, 17 << 5 | 20, 20 << 5 | 27, 0, 0
.hword  5,                    93,  0, 0,    0,     8,  ORIENT_DOWN, 0, 0, 0, 0, 0, 17 << 5 | 12, 20 << 5 |  5, 0, 0
.hword  6,                    93,  0, 0,    0,     9,  ORIENT_DOWN, 0, 0, 0, 0, 0, 17 << 5 | 25, 20 << 5 | 16, 0, 0
.hword  7,                    42,  3, 0,    0,     4,  ORIENT_DOWN, 0, 0, 0, 0, 2, 17 << 5 | 15, 20 << 5 | 13, 0, 7
.hword  8,                    50,  3, 0,    0,     6,  ORIENT_DOWN, 0, 0, 0, 0, 2, 17 << 5 | 14, 20 << 5 | 19, 0, 7
.hword  9,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 34, 0, 0, 0, 0, 17 << 5 | 21, 20 << 5 | 23, 0, 0
.hword 10,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 35, 0, 0, 0, 0, 17 << 5 | 22, 20 << 5 | 23, 0, 0
.hword 11,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 36, 0, 0, 0, 0, 17 << 5 | 23, 20 << 5 | 23, 0, 0
.hword 12,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 37, 0, 0, 0, 0, 17 << 5 | 24, 20 << 5 | 23, 0, 0
.hword 10,      SPRITE_GUIDEPOST,  0, 0,  356, 65535,    ORIENT_UP, 3, 0, 0, 0, 0, 17 << 5 | 19, 21 << 5 |  6, 0, 0
.hword 14,                    41,  3, 0,    0,     5,  ORIENT_DOWN, 0, 0, 0, 0, 1, 17 << 5 | 25, 20 << 5 | 10, 0, 7
.hword 15,                   206, 20, 0,    0,     0,    ORIENT_UP, 0, 0, 0, 0, 3, 17 << 5 |  5, 20 << 5 | 19, 0, 0
.hword 16,                   206, 20, 0,    0,     0,  ORIENT_LEFT, 0, 0, 0, 4, 0, 17 << 5 |  8, 20 << 5 | 12, 0, 0
.hword 17,                   204,  3, 0,    0,     0,    ORIENT_UP, 0, 0, 0, 1, 1, 17 << 5 |  9, 20 << 5 | 15, 0, 0
.hword 18,          SPRITE_BARRY, 15, 0,  542,     0,  ORIENT_DOWN, 0, 0, 0, 0, 2, 17 << 5 | 16, 20 << 5 | 19, 0, 7
.hword 19,       SPRITE_POKEBALL,  0, 0, 1284,  7269,    ORIENT_UP, 0, 0, 0, 0, 0, 18 << 5 |  8, 20 << 5 | 22, 0, 0
.hword 20,       SPRITE_POKEBALL,  0, 0, 1291,  7276,    ORIENT_UP, 0, 0, 0, 0, 0, 18 << 5 | 18, 20 << 5 | 13, 0, 0

.word 9 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword 17 << 5 |  9, 20 << 5 |  5, 437, 0, 0, 0
.hword 18 << 5 |  3, 20 << 5 |  8, 438, 0, 0, 0
.hword 17 << 5 | 27, 20 << 5 | 16, 439, 0, 0, 0
.hword 17 << 5 | 21, 20 << 5 |  6, 440, 0, 0, 0
.hword 18 << 5 |  5, 20 << 5 | 16, 441, 0, 0, 0
.hword 17 << 5 | 22, 20 << 5 | 16, 435, 0, 0, 0
.hword 17 << 5 | 27, 20 << 5 | 25, 434, 0, 0, 0
.hword 18 << 5 | 21, 20 << 5 | 12, 225, 0, 0, 0
.hword 18 << 5 | 19, 20 << 5 | 15, 226, 0, 0, 0

.word 1 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 12, 17 << 5 | 13, 20 << 5 | 29, 7, 1, 0, 0, 16499
