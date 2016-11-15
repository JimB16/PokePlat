.include "source/macros_asm.s"

.word 2 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8014, 2, 389, 0, 717, 0, 0, 0, 4, 0
.hword 8015, 2, 428, 0, 731, 0, 0, 0, 4, 0

.word 24 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,          SPRITE_HIKER, 15, 1,    0,  3038,  ORIENT_DOWN, 2, 0, 0, 0, 0, 13 << 5 |  4, 22 << 5 | 18, 0, 0
.hword  1,          SPRITE_HIKER, 17, 1,    0,  3039, ORIENT_RIGHT, 2, 0, 0, 0, 0, 12 << 5 |  6, 22 << 5 | 15, 0, 0
.hword  2,          SPRITE_HIKER,  8, 1,    0,  3040,  ORIENT_LEFT, 2, 0, 0, 0, 0, 12 << 5 | 24, 22 << 5 | 19, 0, 0
.hword  3,                    51, 37, 1,    0,  3041,    ORIENT_UP, 2, 0, 0, 5, 1, 12 << 5 | 21, 22 << 5 | 10, 0, 0
.hword  4,      SPRITE_FISHERMAN, 17, 1,    0,  3042, ORIENT_RIGHT, 0, 0, 0, 0, 0, 12 << 5 | 29, 22 << 5 | 23, 0, 0
.hword  5,  SPRITE_GENERICFEMALE, 18, 1,    0,  3043,    ORIENT_UP, 2, 0, 0, 0, 0, 13 << 5 | 17, 22 << 5 | 16, 0, 0
.hword  6,                    44, 46, 1,    0,  3044, ORIENT_RIGHT, 4, 0, 0, 0, 0, 13 << 5 | 23, 22 << 5 | 20, 0, 0
.hword  7,                    85,  0, 0,   32, 10001,    ORIENT_UP, 0, 0, 0, 0, 0, 13 << 5 |  3, 22 << 5 |  9, 0, 0
.hword  8,                    85,  0, 0,   33, 10001,    ORIENT_UP, 0, 0, 0, 0, 0, 13 << 5 |  4, 22 << 5 | 10, 0, 0
.hword  9,                    85,  0, 0,   34, 10001,    ORIENT_UP, 0, 0, 0, 0, 0, 13 << 5 |  4, 22 << 5 | 11, 0, 0
.hword 10,      SPRITE_GUIDEPOST,  0, 0,    0,     2,    ORIENT_UP, 1, 0, 0, 0, 0, 13 << 5 | 28, 22 << 5 | 20, 0, 0
.hword 11,                    93,  0, 0,    0,     3,    ORIENT_UP, 0, 0, 0, 0, 0, 13 << 5 | 23, 22 << 5 | 12, 0, 0
.hword 12,      SPRITE_GUIDEPOST,  0, 0,    0,     1,    ORIENT_UP, 2, 0, 0, 0, 0, 12 << 5 |  8, 22 << 5 | 19, 0, 0
.hword 13,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 26, 0, 0, 0, 0, 13 << 5 | 19, 22 << 5 | 10, 0, 0
.hword 14,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 27, 0, 0, 0, 0, 13 << 5 | 20, 22 << 5 | 10, 0, 0
.hword 15,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 28, 0, 0, 0, 0, 13 << 5 | 21, 22 << 5 | 10, 0, 0
.hword 16,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 29, 0, 0, 0, 0, 13 << 5 | 22, 22 << 5 | 10, 0, 0
.hword 17,       SPRITE_POKEBALL,  0, 0, 1064,  7050,    ORIENT_UP, 0, 0, 0, 0, 0, 13 << 5 |  0, 22 << 5 | 10, 0, 0
.hword 18,       SPRITE_POKEBALL,  0, 0, 1062,  7048,    ORIENT_UP, 0, 0, 0, 0, 0, 12 << 5 | 17, 22 << 5 |  1, 0, 0
.hword 19,       SPRITE_POKEBALL,  0, 0, 1063,  7049,    ORIENT_UP, 0, 0, 0, 0, 0, 12 << 5 | 15, 22 << 5 | 16, 0, 0
.hword 20,                    85,  0, 0,   35, 10001,    ORIENT_UP, 0, 0, 0, 0, 0, 12 << 5 |  6, 22 << 5 | 13, 0, 0
.hword 21,                    85,  0, 0,   36, 10001,    ORIENT_UP, 0, 0, 0, 0, 0, 12 << 5 |  7, 22 << 5 | 14, 0, 0
.hword 22,                    51, 14, 0,    0,     4,    ORIENT_UP, 0, 0, 0, 0, 0, 13 << 5 | 21, 22 << 5 | 29, 0, 0
.hword 23,                    96,  0, 0,    0,     5,    ORIENT_UP, 0, 0, 0, 0, 0, 13 << 5 | 18, 22 << 5 | 12, 0, 0

.word 4 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword 13 << 5 | 31, 22 << 5 | 22, 109, 1, 0, 0
.hword 13 << 5 | 31, 22 << 5 | 23, 109, 1, 0, 0
.hword 13 << 5 | 25, 22 << 5 | 12, 355, 0, 0, 0
.hword 12 << 5 |  8, 22 << 5 | 20, 207, 1, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
