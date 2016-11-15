.include "source/macros_asm.s"

.word 2 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8147, 2, 718, 0, 419, 0, 0, 0, 4, 0
.hword 8148, 2, 725, 0, 427, 0, 0, 0, 4, 0

.word 19 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    85,  0, 0,   32, 10001,    ORIENT_UP, 0, 0, 0, 0, 0, 22 << 5 |  6, 13 << 5 |  9, 0, 0
.hword  1,                    85,  0, 0,   33, 10001,    ORIENT_UP, 0, 0, 0, 0, 0, 22 << 5 | 12, 13 << 5 |  3, 0, 0
.hword  2,                    85,  0, 0,   34, 10001,    ORIENT_UP, 0, 0, 0, 0, 0, 22 << 5 | 21, 13 << 5 | 12, 0, 0
.hword  3,                    85,  0, 0,   35, 10001,    ORIENT_UP, 0, 0, 0, 0, 0, 22 << 5 | 25, 13 << 5 | 15, 0, 0
.hword  4,       SPRITE_POKEBALL,  0, 0, 1247,  7233,    ORIENT_UP, 0, 0, 0, 0, 0, 22 << 5 | 23, 13 << 5 | 11, 0, 0
.hword  5,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 114, 0, 0, 0, 0, 21 << 5 | 12, 13 << 5 |  4, 0, 0
.hword  6,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 115, 0, 0, 0, 0, 21 << 5 | 13, 13 << 5 |  4, 0, 0
.hword  7,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 116, 0, 0, 0, 0, 21 << 5 | 14, 13 << 5 |  4, 0, 0
.hword  8,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 117, 0, 0, 0, 0, 21 << 5 | 15, 13 << 5 |  4, 0, 0
.hword  9,                    46, 42, 1,    0,  3596,  ORIENT_DOWN, 3, 0, 0, 10, 2, 22 << 5 | 27, 13 << 5 | 24, 0, 0
.hword 10,                    47, 28, 1,    0,  3600, ORIENT_RIGHT, 3, 0, 0, 13, 6, 22 << 5 | 30, 13 << 5 | 17, 0, 0
.hword 11,                    46, 44, 1,    0,  3597, ORIENT_RIGHT, 4, 0, 0, 1, 8, 23 << 5 | 14, 13 << 5 | 14, 0, 0
.hword 12,                    47,  4, 1,    0,  3601,    ORIENT_UP, 4, 0, 0, 0, 0, 21 << 5 | 27, 13 << 5 | 22, 0, 0
.hword 13,                    46, 15, 1,    0,  3598,  ORIENT_DOWN, 4, 0, 0, 0, 0, 21 << 5 | 27, 13 << 5 | 17, 0, 0
.hword 14,                    47, 20, 6,    0,  3602, ORIENT_RIGHT, 3, 3, 0, 3, 0, 23 << 5 |  2, 13 << 5 |  9, 0, 0
.hword 15,      SPRITE_GUIDEPOST,  0, 0,    0,     1,    ORIENT_UP, 2, 0, 0, 0, 0, 21 << 5 |  8, 13 << 5 | 13, 0, 0
.hword 16,      SPRITE_FISHERMAN,  0, 0,  660,     2,  ORIENT_LEFT, 0, 0, 0, 0, 0, 21 << 5 | 10, 13 << 5 | 14, 0, 0
.hword 17,                    62,  0, 0,  660,     3,  ORIENT_LEFT, 0, 0, 0, 0, 0, 21 << 5 | 10, 13 << 5 | 15, 0, 0
.hword 18,       SPRITE_POKEBALL,  0, 0, 1323,  7308,    ORIENT_UP, 0, 0, 0, 0, 0, 22 << 5 |  4, 13 << 5 | 15, 0, 0

.word 0 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
