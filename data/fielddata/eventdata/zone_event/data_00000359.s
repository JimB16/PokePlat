.include "source/macros_asm.s"

.word 12 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8030, 2, 691, 0, 819, 0, 0, 0, 4, 0
.hword 8029, 2, 722, 0, 856, 0, 0, 0, 4, 0
.hword 8028, 2, 667, 0, 841, 0, 0, 0, 4, 0
.hword 8152, 2, 650, 0, 825, 0, 0, 0, 4, 0
.hword 8164, 2, 678, 0, 834, 0, 0, 0, 4, 0
.hword 8165, 2, 702, 0, 830, 0, 0, 0, 4, 0
.hword 8166, 2, 692, 0, 801, 0, 0, 0, 4, 0
.hword 8184, 2, 714, 0, 831, 0, 0, 0, 4, 0
.hword 8185, 2, 683, 0, 856, 0, 0, 0, 4, 0
.hword 8186, 2, 661, 0, 845, 0, 0, 0, 4, 0
.hword 8216, 2, 705, 0, 812, 0, 0, 0, 4, 0
.hword 8258, 2, 712, 0, 826, 0, 0, 0, 4, 0

.word 34 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    46, 44, 1,    0,  3102, ORIENT_RIGHT, 2, 0, 0, 8, 1, 21 << 5 | 19, 26 << 5 | 26, 0, 0
.hword  1,                    46,  9, 1,    0,  3103, ORIENT_RIGHT, 4, 0, 0, 0, 0, 22 << 5 | 21, 26 << 5 | 10, 0, 0
.hword  2,                    47, 16, 1,    0,  3105,  ORIENT_LEFT, 4, 0, 0, 0, 0, 22 << 5 | 26, 26 << 5 | 10, 0, 0
.hword  3,                    47, 20, 7,    0,  3104, ORIENT_RIGHT, 2, 1, 0, 5, 0, 21 << 5 | 30, 26 << 5 | 19, 0, 0
.hword  4,                    49, 20, 1,    0,  3106, ORIENT_RIGHT, 3, 0, 0, 9, 0, 21 << 5 | 31, 26 << 5 |  0, 0, 0
.hword  5,                    48, 10, 1,    0,  3107,  ORIENT_DOWN, 4, 0, 0, 0, 0, 22 << 5 |  0, 25 << 5 | 27, 0, 0
.hword  6,         SPRITE_BEAUTY, 46, 1,    0,  3345,  ORIENT_LEFT, 5, 0, 0, 0, 0, 20 << 5 | 28, 25 << 5 | 27, 0, 0
.hword  7,      SPRITE_FISHERMAN, 15, 1,    0,  3110,  ORIENT_DOWN, 0, 0, 0, 0, 0, 20 << 5 | 25, 26 << 5 | 13, 0, 0
.hword  8,                    56, 14, 1,    0,  3109,    ORIENT_UP, 3, 0, 0, 0, 0, 22 << 5 | 13, 26 << 5 | 22, 0, 0
.hword  9,                    85,  0, 0,   32, 10001,    ORIENT_UP, 0, 0, 0, 0, 0, 20 << 5 | 15, 25 << 5 | 28, 0, 0
.hword 10,                    85,  0, 0,   33, 10001,    ORIENT_UP, 0, 0, 0, 0, 0, 21 << 5 |  5, 25 << 5 | 27, 0, 0
.hword 11,                    85,  0, 0,   34, 10001,    ORIENT_UP, 0, 0, 0, 0, 0, 20 << 5 | 25, 26 << 5 |  7, 0, 0
.hword 12,                    85,  0, 0,   35, 10001,    ORIENT_UP, 0, 0, 0, 0, 0, 20 << 5 | 29, 26 << 5 | 10, 0, 0
.hword 13,                    85,  0, 0,   36, 10001,    ORIENT_UP, 0, 0, 0, 0, 0, 20 << 5 | 22, 26 << 5 | 11, 0, 0
.hword 14,                    85,  0, 0,   37, 10001,    ORIENT_UP, 0, 0, 0, 0, 0, 20 << 5 | 23, 26 << 5 | 12, 0, 0
.hword 15,      SPRITE_GUIDEPOST,  0, 0,    0,     6,    ORIENT_UP, 2, 0, 0, 0, 0, 20 << 5 | 11, 25 << 5 | 10, 0, 0
.hword 16,                    93,  0, 0,    0,     8,    ORIENT_UP, 0, 0, 0, 0, 0, 20 << 5 | 25, 26 << 5 |  3, 0, 0
.hword 17,                    93,  0, 0,    0,     7,    ORIENT_UP, 0, 0, 0, 0, 0, 22 << 5 |  0, 25 << 5 | 19, 0, 0
.hword 18,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 62, 0, 0, 0, 0, 20 << 5 | 16, 25 << 5 |  8, 0, 0
.hword 19,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 64, 0, 0, 0, 0, 20 << 5 | 17, 25 << 5 |  8, 0, 0
.hword 20,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 65, 0, 0, 0, 0, 20 << 5 | 18, 25 << 5 |  8, 0, 0
.hword 21,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 63, 0, 0, 0, 0, 20 << 5 | 19, 25 << 5 |  8, 0, 0
.hword 22,       SPRITE_POKEBALL,  0, 0, 1090,  7076,    ORIENT_UP, 0, 0, 0, 0, 0, 21 << 5 |  5, 25 << 5 | 31, 0, 0
.hword 23,       SPRITE_POKEBALL,  0, 0, 1091,  7077,    ORIENT_UP, 0, 0, 0, 0, 0, 21 << 5 | 28, 25 << 5 | 18, 0, 0
.hword 24,       SPRITE_POKEBALL,  0, 0, 1092,  7078,    ORIENT_UP, 0, 0, 0, 0, 0, 21 << 5 | 14, 26 << 5 | 19, 0, 0
.hword 25,       SPRITE_POKEBALL,  0, 0, 1093,  7079,    ORIENT_UP, 0, 0, 0, 0, 0, 22 << 5 | 22, 26 << 5 |  5, 0, 0
.hword 26,       SPRITE_POKEBALL,  0, 0, 1089,  7075,    ORIENT_UP, 0, 0, 0, 0, 0, 21 << 5 | 17, 25 << 5 | 26, 0, 0
.hword 27,       SPRITE_POKEBALL,  0, 0, 1094,  7080,    ORIENT_UP, 0, 0, 0, 0, 0, 21 << 5 | 18, 25 << 5 | 11, 0, 0
.hword 28,       SPRITE_POKEBALL,  0, 0, 1095,  7081,    ORIENT_UP, 0, 0, 0, 0, 0, 22 << 5 | 13, 25 << 5 | 13, 0, 0
.hword 29,      SPRITE_FISHERMAN,  0, 0,    0,     3,  ORIENT_DOWN, 0, 0, 0, 0, 0, 21 << 5 |  5, 26 << 5 |  5, 0, 0
.hword 30,                   124, 17, 0,  538,     2, ORIENT_RIGHT, 0, 0, 0, 0, 0, 21 << 5 | 11, 26 << 5 |  1, 0, 0
.hword 31,         SPRITE_BEAUTY,  3, 0,    0,     4,  ORIENT_LEFT, 0, 0, 0, 0, 0, 21 << 5 | 22, 25 << 5 |  4, 0, 0
.hword 32,         SPRITE_FATGUY,  3, 0,    0,     5, ORIENT_RIGHT, 0, 0, 0, 0, 0, 21 << 5 |  5, 25 << 5 | 23, 0, 0
.hword 33,                   213, 17, 0,  488,     0, ORIENT_RIGHT, 0, 0, 0, 0, 0, 20 << 5 | 31, 26 << 5 |  3, 0, 0

.word 8 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword 20 << 5 |  6, 25 << 5 | 12, 374, 0, 0, 0
.hword 20 << 5 |  6, 25 << 5 | 13, 374, 0, 0, 0
.hword 20 << 5 | 23, 26 << 5 |  2, 375, 0, 0, 0
.hword 22 << 5 |  2, 25 << 5 | 18, 376, 1, 0, 0
.hword 22 << 5 |  2, 25 << 5 | 13, 376, 0, 0, 0
.hword 22 << 5 |  6, 25 << 5 | 10, 377, 0, 0, 0
.hword 21 << 5 | 29, 25 << 5 |  5, 378, 0, 0, 0
.hword 22 << 5 |  8, 25 << 5 |  5, 379, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
