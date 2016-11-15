.include "source/macros_asm.s"

.word 8 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8019, 2, 493, 0, 858, 0, 0, 0, 4, 0
.hword 8026, 2, 561, 0, 835, 0, 0, 0, 4, 0
.hword 8025, 2, 534, 0, 851, 0, 0, 0, 4, 0
.hword 8021, 2, 533, 0, 857, 0, 0, 0, 4, 0
.hword 8024, 2, 571, 0, 839, 0, 0, 0, 4, 0
.hword 8023, 2, 527, 0, 847, 0, 0, 0, 4, 0
.hword 8022, 2, 570, 0, 835, 0, 0, 0, 4, 0
.hword 8020, 2, 471, 0, 856, 0, 0, 0, 4, 0

.word 44 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,      SPRITE_FISHERMAN, 14, 1,    0,  3090,    ORIENT_UP, 0, 0, 0, 0, 0, 15 << 5 | 27, 26 << 5 | 19, 0, 0
.hword  1,      SPRITE_FISHERMAN, 16, 1,    0,  3091,  ORIENT_LEFT, 0, 0, 0, 0, 0, 15 << 5 | 20, 26 << 5 | 15, 0, 0
.hword  2,      SPRITE_FISHERMAN, 15, 1,    0,  3092,  ORIENT_DOWN, 0, 0, 0, 0, 0, 15 << 5 | 19, 26 << 5 | 24, 0, 0
.hword  3, SPRITE_ACETRAINERMALE, 15, 1,    0,  3093,  ORIENT_DOWN, 2, 0, 0, 0, 0, 17 << 5 |  7, 26 << 5 | 23, 0, 0
.hword  4, SPRITE_ACETRAINERFEMALE, 15, 1,    0,  3095,  ORIENT_DOWN, 2, 0, 0, 0, 0, 14 << 5 |  9, 26 << 5 | 10, 0, 0
.hword  5, SPRITE_ACETRAINERMALE, 14, 1,    0,  3094,    ORIENT_UP, 2, 0, 0, 0, 0, 14 << 5 |  9, 26 << 5 | 13, 0, 0
.hword  6,                    34,  8, 1,  617,  3331,  ORIENT_DOWN, 2, 0, 0, 0, 0, 14 << 5 | 26, 26 << 5 |  6, 0, 0
.hword  7,  SPRITE_MALESCIENTIST,  8, 1,    0,  3098,  ORIENT_LEFT, 3, 0, 0, 0, 0, 14 << 5 | 10, 26 << 5 | 24, 0, 0
.hword  8,         SPRITE_FATGUY,  7, 1,    0,  3380,    ORIENT_UP, 3, 0, 0, 0, 0, 15 << 5 | 12, 26 << 5 | 21, 0, 0
.hword  9,      SPRITE_GUIDEPOST,  0, 0,    0,     4,    ORIENT_UP, 1, 0, 0, 0, 0, 17 << 5 | 26, 26 << 5 | 13, 0, 0
.hword 10,                    93,  0, 0,    0,     5,    ORIENT_UP, 0, 0, 0, 0, 0, 16 << 5 |  4, 26 << 5 | 15, 0, 0
.hword 11,                    86,  0, 0,   32, 10000,    ORIENT_UP, 0, 0, 0, 0, 0, 14 << 5 | 15, 26 << 5 | 16, 0, 0
.hword 12,                    86,  0, 0,   33, 10000,    ORIENT_UP, 0, 0, 0, 0, 0, 15 << 5 | 16, 26 << 5 |  8, 0, 0
.hword 13,                    86,  0, 0,   34, 10000,    ORIENT_UP, 0, 0, 0, 0, 0, 15 << 5 | 16, 26 << 5 |  9, 0, 0
.hword 14,                    86,  0, 0,   35, 10000,    ORIENT_UP, 0, 0, 0, 0, 0, 16 << 5 | 13, 26 << 5 |  4, 0, 0
.hword 15,                    86,  0, 0,   36, 10000,    ORIENT_UP, 0, 0, 0, 0, 0, 16 << 5 | 21, 26 << 5 |  5, 0, 0
.hword 16,                    86,  0, 0,   37, 10000,    ORIENT_UP, 0, 0, 0, 0, 0, 16 << 5 | 24, 26 << 5 |  6, 0, 0
.hword 17,                    86,  0, 0,   38, 10000,    ORIENT_UP, 0, 0, 0, 0, 0, 17 << 5 |  5, 26 << 5 |  7, 0, 0
.hword 18,                    86,  0, 0,   39, 10000,    ORIENT_UP, 0, 0, 0, 0, 0, 17 << 5 | 16, 26 << 5 | 27, 0, 0
.hword 19,                    86,  0, 0,   40, 10000,    ORIENT_UP, 0, 0, 0, 0, 0, 17 << 5 | 17, 26 << 5 | 27, 0, 0
.hword 20,       SPRITE_POKEBALL,  0, 0, 1073,  7059,    ORIENT_UP, 0, 0, 0, 0, 0, 14 << 5 |  7, 26 << 5 | 28, 0, 0
.hword 21,       SPRITE_POKEBALL,  0, 0, 1074,  7060,    ORIENT_UP, 0, 0, 0, 0, 0, 14 << 5 | 27, 26 << 5 | 20, 0, 0
.hword 22,       SPRITE_POKEBALL,  0, 0, 1075,  7061,    ORIENT_UP, 0, 0, 0, 0, 0, 15 << 5 | 27, 26 << 5 | 14, 0, 0
.hword 23,       SPRITE_POKEBALL,  0, 0, 1076,  7062,    ORIENT_UP, 0, 0, 0, 0, 0, 16 << 5 | 10, 26 << 5 | 10, 0, 0
.hword 24,       SPRITE_POKEBALL,  0, 0, 1077,  7063,    ORIENT_UP, 0, 0, 0, 0, 0, 17 << 5 |  1, 26 << 5 |  3, 0, 0
.hword 25,       SPRITE_POKEBALL,  0, 0, 1078,  7064,    ORIENT_UP, 0, 0, 0, 0, 0, 17 << 5 |  3, 26 << 5 | 30, 0, 0
.hword 26,       SPRITE_POKEBALL,  0, 0, 1079,  7065,    ORIENT_UP, 0, 0, 0, 0, 0, 17 << 5 | 14, 26 << 5 | 12, 0, 0
.hword 27,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 54, 0, 0, 0, 0, 17 << 5 | 15, 26 << 5 | 22, 0, 0
.hword 28,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 55, 0, 0, 0, 0, 17 << 5 | 16, 26 << 5 | 22, 0, 0
.hword 29,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 56, 0, 0, 0, 0, 17 << 5 | 17, 26 << 5 | 22, 0, 0
.hword 30,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 57, 0, 0, 0, 0, 17 << 5 | 18, 26 << 5 | 22, 0, 0
.hword 31,  SPRITE_MALESCIENTIST,  7, 1,    0,  3485, ORIENT_RIGHT, 2, 0, 0, 0, 0, 16 << 5 | 29, 26 << 5 |  7, 0, 0
.hword 32,                    55, 19, 1,    0,  3326,  ORIENT_DOWN, 3, 0, 0, 0, 0, 16 << 5 |  8, 26 << 5 | 16, 0, 0
.hword 33,                    55,  8, 1,    0,  3327,  ORIENT_DOWN, 2, 0, 0, 0, 0, 16 << 5 | 16, 26 << 5 |  5, 0, 0
.hword 19,        SPRITE_AIRVENT,  0, 0,  367, 65535,    ORIENT_UP, 0, 0, 0, 0, 0, 14 << 5 |  8, 25 << 5 | 26, 0, 0
.hword 20,        SPRITE_AIRVENT,  0, 0,  367, 65535,    ORIENT_UP, 0, 0, 0, 0, 0, 14 << 5 | 14, 25 << 5 | 26, 0, 0
.hword 21,        SPRITE_AIRVENT,  0, 0,  367, 65535,    ORIENT_UP, 0, 0, 0, 0, 0, 14 << 5 | 16, 25 << 5 | 26, 0, 0
.hword 37,  SPRITE_MALESCHOOLKID, 17, 0,    0,     1, ORIENT_RIGHT, 0, 0, 0, 0, 0, 15 << 5 | 14, 26 << 5 | 12, 0, 0
.hword 38,                    63, 15, 0,    0,     2,  ORIENT_DOWN, 0, 0, 0, 0, 0, 16 << 5 | 31, 26 << 5 | 19, 0, 0
.hword 39,         SPRITE_FATGUY,  2, 0,    0,     3,  ORIENT_DOWN, 0, 0, 0, 0, 0, 17 << 5 | 26, 26 << 5 | 20, 0, 0
.hword 40,                    34,  8, 0,  616,     6,  ORIENT_DOWN, 2, 0, 0, 0, 0, 14 << 5 | 26, 26 << 5 |  6, 0, 0
.hword 41,                    96,  0, 0,    0,     8,    ORIENT_UP, 0, 0, 0, 0, 0, 16 << 5 | 11, 26 << 5 | 18, 0, 0
.hword 42,       SPRITE_POKEBALL,  0, 0, 1290,  7275,    ORIENT_UP, 0, 0, 0, 0, 0, 16 << 5 | 19, 26 << 5 | 17, 0, 0
.hword 43,       SPRITE_POKEBALL,  0, 0, 1289,  7274,    ORIENT_UP, 0, 0, 0, 0, 0, 14 << 5 |  4, 26 << 5 |  8, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword 16 << 5 |  5, 26 << 5 | 14, 372, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
