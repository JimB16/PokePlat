.include "source/macros_asm.s"

.word 8 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8109, 2, 806, 0, 792, 0, 0, 0, 4, 0
.hword 8007, 2, 730, 0, 773, 0, 0, 0, 4, 0
.hword 8157, 2, 813, 0, 792, 0, 0, 0, 4, 0
.hword 8158, 2, 783, 0, 774, 0, 0, 0, 4, 0
.hword 8263, 2, 819, 0, 789, 0, 0, 0, 4, 0
.hword 8264, 2, 765, 0, 788, 0, 0, 0, 4, 0
.hword 8265, 2, 779, 0, 790, 0, 0, 0, 4, 0
.hword 8266, 2, 796, 0, 789, 0, 0, 0, 4, 0

.word 32 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,      SPRITE_FISHERMAN, 15, 1,    0,  3171,  ORIENT_DOWN, 0, 0, 0, 0, 0, 24 << 5 |  9, 24 << 5 | 22, 0, 0
.hword  1,      SPRITE_FISHERMAN, 15, 1,    0,  3172,  ORIENT_DOWN, 0, 0, 0, 0, 0, 23 << 5 | 25, 24 << 5 | 21, 0, 0
.hword  2,      SPRITE_FISHERMAN, 15, 1,    0,  3173,  ORIENT_DOWN, 0, 0, 0, 0, 0, 24 << 5 |  1, 24 << 5 | 21, 0, 0
.hword  3,      SPRITE_FISHERMAN, 15, 1,    0,  3174,  ORIENT_DOWN, 0, 0, 0, 0, 0, 24 << 5 | 14, 24 << 5 | 22, 0, 0
.hword  4,         SPRITE_BEAUTY, 45, 1,    0,  3491,  ORIENT_DOWN, 2, 0, 0, 0, 0, 24 << 5 |  3, 24 << 5 |  9, 0, 0
.hword  5,                    49, 16, 1,    0,  3358,  ORIENT_LEFT, 3, 0, 0, 0, 0, 25 << 5 | 12, 24 << 5 | 13, 0, 0
.hword  6,                    62, 17, 1,    0,  3334, ORIENT_RIGHT, 6, 0, 0, 0, 0, 23 << 5 | 15, 24 << 5 | 14, 0, 0
.hword  7,                    56, 15, 1,    0,  3179,  ORIENT_DOWN, 2, 0, 0, 0, 0, 25 << 5 | 14, 24 << 5 | 17, 0, 0
.hword  8,                    34, 20, 4,  619,  3332, ORIENT_RIGHT, 2, 2, 0, 8, 0, 24 << 5 | 26, 24 << 5 | 10, 0, 0
.hword  9,                    48, 45, 1,    0,  3360,    ORIENT_UP, 2, 0, 0, 0, 0, 24 << 5 | 19, 24 << 5 | 20, 0, 0
.hword 10,                    56, 46, 1,    0,  3336, ORIENT_RIGHT, 3, 0, 0, 0, 0, 25 << 5 |  8, 24 << 5 | 13, 0, 0
.hword 11,      SPRITE_GUIDEPOST,  0, 0,    0,     4,    ORIENT_UP, 9, 0, 0, 0, 0, 25 << 5 | 21, 24 << 5 | 16, 0, 0
.hword 12,      SPRITE_GUIDEPOST,  0, 0,    0,     3,    ORIENT_UP, 2, 0, 0, 0, 0, 23 << 5 | 13, 24 << 5 | 19, 0, 0
.hword 13,                    93,  0, 0,    0,     5,    ORIENT_UP, 0, 0, 0, 0, 0, 24 << 5 | 25, 24 << 5 | 16, 0, 0
.hword 14,                    93,  0, 0,    0,     6,    ORIENT_UP, 0, 0, 0, 0, 0, 25 << 5 |  4, 24 << 5 | 16, 0, 0
.hword 15,      SPRITE_FISHERMAN, 15, 0,    0,     1,  ORIENT_DOWN, 0, 0, 0, 0, 0, 25 << 5 |  1, 24 << 5 | 23, 0, 0
.hword 16,                    85,  0, 0,   32, 10001,    ORIENT_UP, 0, 0, 0, 0, 0, 24 << 5 | 21, 24 << 5 | 17, 0, 0
.hword 17,                    85,  0, 0,   33, 10001,    ORIENT_UP, 0, 0, 0, 0, 0, 25 << 5 |  4, 24 << 5 | 24, 0, 0
.hword 18,                    86,  0, 0,   34, 10000,    ORIENT_UP, 0, 0, 0, 0, 0, 25 << 5 | 14, 24 << 5 |  7, 0, 0
.hword 19,       SPRITE_POKEBALL,  0, 0, 1190,  7176,    ORIENT_UP, 0, 0, 0, 0, 0, 24 << 5 | 17, 24 << 5 | 13, 0, 0
.hword 20,       SPRITE_POKEBALL,  0, 0, 1189,  7175,    ORIENT_UP, 0, 0, 0, 0, 0, 25 << 5 | 16, 24 << 5 | 15, 0, 0
.hword 21,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 82, 0, 0, 0, 0, 23 << 5 | 24, 24 << 5 |  4, 0, 0
.hword 22,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 83, 0, 0, 0, 0, 23 << 5 | 25, 24 << 5 |  4, 0, 0
.hword 23,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 84, 0, 0, 0, 0, 23 << 5 | 26, 24 << 5 |  4, 0, 0
.hword 24,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 85, 0, 0, 0, 0, 23 << 5 | 27, 24 << 5 |  4, 0, 0
.hword 25,                    62, 15, 0,    0,     2,  ORIENT_DOWN, 0, 0, 0, 0, 0, 24 << 5 | 20, 24 << 5 | 13, 0, 0
.hword 26,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 24 << 5 |  7, 24 << 5 | 12, 0, 0
.hword 27,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 24 << 5 |  5, 24 << 5 | 12, 0, 0
.hword 28,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 24 << 5 |  3, 24 << 5 | 12, 0, 0
.hword 29,                    34, 20, 0,  618,     7, ORIENT_RIGHT, 2, 2, 0, 8, 0, 24 << 5 | 26, 24 << 5 | 10, 0, 0
.hword 30,       SPRITE_POKEBALL,  0, 0, 1314,  7299,    ORIENT_UP, 0, 0, 0, 0, 0, 25 << 5 |  9, 24 << 5 | 22, 0, 0
.hword 31,       SPRITE_POKEBALL,  0, 0, 1315,  7300,    ORIENT_UP, 0, 0, 0, 0, 0, 24 << 5 | 30, 24 << 5 | 14, 0, 0

.word 4 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword 25 << 5 | 25, 24 << 5 | 22, 398, 0, 0, 0
.hword 25 << 5 | 25, 24 << 5 | 23, 398, 0, 0, 0
.hword 25 << 5 |  1, 24 << 5 | 16, 397, 0, 0, 0
.hword 24 << 5 | 27, 24 << 5 | 16, 396, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
