.include "source/macros_asm.s"

.word 8 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8033, 2, 565, 0, 694, 0, 0, 0, 4, 0
.hword 8032, 2, 522, 0, 714, 0, 0, 0, 4, 0
.hword 2, 0, 566, 0, 713, 0, 0, 0, 4, 0
.hword 2, 0, 566, 0, 714, 0, 0, 0, 4, 0
.hword 2, 0, 567, 0, 714, 0, 0, 0, 4, 0
.hword 2, 0, 567, 0, 713, 0, 0, 0, 4, 0
.hword 8035, 2, 550, 0, 710, 0, 0, 0, 4, 0
.hword 8153, 2, 539, 0, 722, 0, 0, 0, 4, 0

.word 33 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,    SPRITE_GENERICMALE, 45, 1,    0,  3045,  ORIENT_DOWN, 3, 0, 0, 0, 0, 16 << 5 | 10, 22 << 5 | 21, 0, 0
.hword  1,  SPRITE_GENERICFEMALE, 11, 1,    0,  3046, ORIENT_RIGHT, 5, 0, 0, 0, 0, 17 << 5 | 10, 22 << 5 |  7, 0, 0
.hword  2,                    42, 17, 1,    0,  3047, ORIENT_RIGHT, 2, 0, 0, 0, 0, 17 << 5 | 16, 21 << 5 | 18, 0, 0
.hword  3,                    45, 36, 1,  621,  3048,  ORIENT_DOWN, 4, 0, 0, 8, 7, 16 << 5 | 28, 22 << 5 | 12, 0, 0
.hword  4,                    45, 20, 1,  623,  3307,  ORIENT_LEFT, 1, 0, 0, 5, 0, 17 << 5 | 17, 22 << 5 | 11, 0, 0
.hword  5,                    71, 17, 1,    0,  3052, ORIENT_RIGHT, 0, 0, 0, 0, 0, 17 << 5 |  8, 22 << 5 | 18, 0, 0
.hword  6,     SPRITE_LITTLEGIRL, 15, 1,    0,  3293,  ORIENT_DOWN, 4, 0, 0, 0, 0, 17 << 5 |  0, 22 << 5 | 16, 0, 0
.hword  7,         SPRITE_BEAUTY, 43, 1,    0,  5054,  ORIENT_LEFT, 2, 0, 0, 3, 3, 17 << 5 | 17, 21 << 5 | 13, 0, 0
.hword  8,         SPRITE_ROCKER, 50, 1,    0,  3054,  ORIENT_DOWN, 2, 0, 0, 0, 0, 17 << 5 | 17, 21 << 5 | 12, 0, 0
.hword  9,      SPRITE_GUIDEPOST,  0, 0,    0,     3,    ORIENT_UP, 2, 0, 0, 0, 0, 16 << 5 |  7, 22 << 5 | 20, 0, 0
.hword 10,      SPRITE_GUIDEPOST,  0, 0,    0,     4,    ORIENT_UP, 3, 0, 0, 0, 0, 17 << 5 | 19, 21 << 5 |  6, 0, 0
.hword 11,                    86,  0, 0,   32, 10000,    ORIENT_UP, 0, 0, 0, 0, 0, 17 << 5 | 29, 21 << 5 | 18, 0, 0
.hword 12,       SPRITE_POKEBALL,  0, 0, 1100,  7086,    ORIENT_UP, 0, 0, 0, 0, 0, 16 << 5 | 15, 22 << 5 |  4, 0, 0
.hword 13,       SPRITE_POKEBALL,  0, 0, 1101,  7087,    ORIENT_UP, 0, 0, 0, 0, 0, 17 << 5 | 13, 22 << 5 | 16, 0, 0
.hword 14,       SPRITE_POKEBALL,  0, 0, 1103,  7089,    ORIENT_UP, 0, 0, 0, 0, 0, 17 << 5 | 28, 21 << 5 | 20, 0, 0
.hword 15,       SPRITE_POKEBALL,  0, 0, 1102,  7088,    ORIENT_UP, 0, 0, 0, 0, 0, 17 << 5 |  4, 21 << 5 |  2, 0, 0
.hword 16,       SPRITE_POKEBALL,  0, 0, 1104,  7090,    ORIENT_UP, 0, 0, 0, 0, 0, 17 << 5 | 24, 22 << 5 | 22, 0, 0
.hword 17,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 30, 0, 0, 0, 0, 16 << 5 | 18, 22 << 5 |  8, 0, 0
.hword 18,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 31, 0, 0, 0, 0, 16 << 5 | 19, 22 << 5 |  8, 0, 0
.hword 19,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 32, 0, 0, 0, 0, 17 << 5 | 22, 21 << 5 | 25, 0, 0
.hword 20,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 33, 0, 0, 0, 0, 17 << 5 | 23, 21 << 5 | 25, 0, 0
.hword 21,                    15, 14, 0,    0,     1,    ORIENT_UP, 0, 0, 0, 1, 0, 17 << 5 | 26, 21 << 5 | 13, 0, 0
.hword 22,     SPRITE_LITTLEGIRL, 15, 1,    0,  5293,  ORIENT_DOWN, 4, 0, 0, 0, 0, 17 << 5 |  1, 22 << 5 | 16, 0, 0
.hword  4,       SPRITE_SIGNPOST,  0, 0,  433, 65535,    ORIENT_UP, 4, 0, 0, 0, 0, 17 << 5 | 20, 20 << 5 | 27, 0, 0
.hword 24,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 16 << 5 | 28, 22 << 5 |  8, 0, 0
.hword 25,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 16 << 5 | 29, 22 << 5 |  8, 0, 0
.hword 26,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 17 << 5 | 21, 21 << 5 | 30, 0, 0
.hword 27,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 17 << 5 | 21, 21 << 5 | 28, 0, 0
.hword 28,      SPRITE_FISHERMAN, 17, 0,    0,     5, ORIENT_RIGHT, 0, 0, 0, 0, 0, 16 << 5 | 20, 22 << 5 | 23, 0, 0
.hword 29,                    45, 36, 0,  620,     6,  ORIENT_DOWN, 4, 0, 0, 8, 7, 16 << 5 | 28, 22 << 5 | 12, 0, 0
.hword 30,                    45, 20, 0,  622,     7,  ORIENT_LEFT, 2, 0, 0, 5, 0, 17 << 5 | 17, 22 << 5 | 11, 0, 0
.hword 31,                    96,  0, 0,    0,     9,    ORIENT_UP, 0, 0, 0, 0, 0, 17 << 5 | 20, 22 << 5 |  5, 0, 0
.hword 32,       SPRITE_POKEBALL,  0, 0, 1283,  7268,    ORIENT_UP, 0, 0, 0, 0, 0, 17 << 5 | 12, 21 << 5 | 31, 0, 0

.word 3 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword 16 << 5 |  0, 22 << 5 | 22, 110, 1, 0, 0
.hword 16 << 5 |  0, 22 << 5 | 23, 110, 1, 0, 0
.hword 17 << 5 | 24, 21 << 5 |  8, 357, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
