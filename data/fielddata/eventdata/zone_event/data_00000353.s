.include "source/macros_asm.s"

.word 2 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8018, 2, 475, 0, 803, 0, 0, 0, 4, 0
.hword 8017, 2, 467, 0, 779, 0, 0, 0, 4, 0

.word 30 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    62, 17, 1,    0,  3081, ORIENT_RIGHT, 1, 0, 0, 0, 0, 14 << 5 | 24, 24 << 5 | 12, 0, 0
.hword  1,                    63, 16, 1,    0,  3082,  ORIENT_LEFT, 1, 0, 0, 0, 0, 14 << 5 | 26, 24 << 5 | 12, 0, 0
.hword  2,                    36,  7, 1,    0,  3083, ORIENT_RIGHT, 2, 0, 0, 0, 0, 14 << 5 |  7, 24 << 5 | 28, 0, 0
.hword  3,                    37,  8, 1,    0,  3084,  ORIENT_LEFT, 3, 0, 0, 0, 0, 14 << 5 | 10, 24 << 5 | 28, 0, 0
.hword  4,                    34,  9, 1,  609,  3087, ORIENT_RIGHT, 3, 0, 0, 0, 0, 14 << 5 | 10, 23 << 5 | 23, 0, 0
.hword  5,                    34, 29, 1,  611,  3088,  ORIENT_LEFT, 3, 0, 0, 3, 4, 14 << 5 | 10, 24 << 5 |  9, 0, 0
.hword  6,                    34, 20, 4,  613,  3089,  ORIENT_DOWN, 2, 1, 0, 0, 6, 14 << 5 | 12, 24 << 5 | 19, 0, 0
.hword  7,                    34, 20, 1,  615,  3101, ORIENT_RIGHT, 2, 0, 0, 9, 0, 14 << 5 | 18, 24 << 5 | 29, 0, 0
.hword  8,      SPRITE_GUIDEPOST,  0, 0,    0,     2,    ORIENT_UP, 3, 0, 0, 0, 0, 14 << 5 |  7, 23 << 5 |  8, 0, 0
.hword  9,                    93,  0, 0,    0,     3,    ORIENT_UP, 0, 0, 0, 0, 0, 14 << 5 | 20, 25 << 5 |  3, 0, 0
.hword 10,                    96,  0, 0,    0,     4,    ORIENT_UP, 0, 0, 0, 0, 0, 14 << 5 | 11, 25 << 5 | 22, 0, 0
.hword 11,                    86,  0, 0,   32, 10000,    ORIENT_UP, 0, 0, 0, 0, 0, 14 << 5 |  6, 25 << 5 |  7, 0, 0
.hword 12,       SPRITE_POKEBALL,  0, 0, 1069,  7055,    ORIENT_UP, 0, 0, 0, 0, 0, 14 << 5 |  8, 24 << 5 | 23, 0, 0
.hword 13,       SPRITE_POKEBALL,  0, 0, 1068,  7054,    ORIENT_UP, 0, 0, 0, 0, 0, 14 << 5 |  2, 24 << 5 |  9, 0, 0
.hword 14,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 51, 0, 0, 0, 0, 14 << 5 | 12, 24 << 5 | 29, 0, 0
.hword 15,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 50, 0, 0, 0, 0, 14 << 5 | 13, 24 << 5 | 29, 0, 0
.hword 16,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 53, 0, 0, 0, 0, 14 << 5 |  0, 25 << 5 | 17, 0, 0
.hword 17,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 52, 0, 0, 0, 0, 14 << 5 |  1, 25 << 5 | 17, 0, 0
.hword 18,       SPRITE_POKEBALL,  0, 0, 1070,  7056,    ORIENT_UP, 0, 0, 0, 0, 0, 14 << 5 | 11, 25 << 5 | 21, 0, 0
.hword 19,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 14 << 5 |  8, 25 << 5 | 26, 0, 0
.hword 20,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 14 << 5 | 13, 25 << 5 | 26, 0, 0
.hword 21,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 14 << 5 | 16, 25 << 5 | 26, 0, 0
.hword 22,      SPRITE_YOUNGSTER,  5, 0,    0,     1,  ORIENT_LEFT, 0, 0, 0, 2, 0, 14 << 5 | 13, 25 << 5 |  5, 0, 0
.hword 23,         SPRITE_FATGUY,  3, 0,    0,     5,  ORIENT_DOWN, 0, 0, 0, 1, 1, 14 << 5 |  6, 23 << 5 | 12, 0, 0
.hword 24,                    34,  9, 0,  608,     6, ORIENT_RIGHT, 3, 0, 0, 0, 0, 14 << 5 | 10, 23 << 5 | 23, 0, 0
.hword 25,                    34, 29, 0,  610,     7,  ORIENT_LEFT, 3, 0, 0, 3, 4, 14 << 5 | 10, 24 << 5 |  9, 0, 0
.hword 26,                    34, 20, 0,  612,     8,  ORIENT_DOWN, 2, 1, 0, 0, 6, 14 << 5 | 12, 24 << 5 | 19, 0, 0
.hword 27,                    34, 20, 0,  614,     9, ORIENT_RIGHT, 2, 0, 0, 9, 0, 14 << 5 | 18, 24 << 5 | 29, 0, 0
.hword 28,       SPRITE_POKEBALL,  0, 0, 1288,  7273,    ORIENT_UP, 0, 0, 0, 0, 0, 14 << 5 | 28, 24 << 5 |  0, 0, 0
.hword 29,       SPRITE_POKEBALL,  0, 0, 1287,  7272,    ORIENT_UP, 0, 0, 0, 0, 0, 14 << 5 | 13, 23 << 5 | 30, 0, 0

.word 3 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword 14 << 5 | 10, 23 << 5 |  0, 111, 1, 0, 0
.hword 14 << 5 | 11, 23 << 5 |  0, 111, 1, 0, 0
.hword 14 << 5 | 22, 24 << 5 |  4, 368, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
