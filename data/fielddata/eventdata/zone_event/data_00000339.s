.include "source/macros_asm.s"

.word 5 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8012, 2, 313, 0, 719, 0, 0, 0, 4, 0
.hword 8008, 2, 349, 0, 725, 0, 0, 0, 4, 0
.hword 8091, 2, 299, 0, 711, 0, 0, 0, 4, 0
.hword 8151, 2, 337, 0, 712, 0, 0, 0, 4, 0
.hword 8256, 2, 338, 0, 718, 0, 0, 0, 4, 0

.word 27 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,         SPRITE_CAMPER, 14, 1,    0,  3033,    ORIENT_UP, 5, 0, 0, 0, 0, 10 << 5 |  0, 22 << 5 | 12, 0, 5
.hword  1,      SPRITE_PICNICKER, 15, 1,    0,  3034,  ORIENT_DOWN, 5, 0, 0, 0, 0, 10 << 5 |  0, 22 << 5 |  6, 0, 5
.hword  2,      SPRITE_YOUNGSTER, 44, 1,    0,  3032, ORIENT_RIGHT, 2, 0, 0, 6, 1, 10 << 5 |  5, 22 << 5 | 21, 0, 5
.hword  3,          SPRITE_HIKER,  7, 1,    0,  3036, ORIENT_RIGHT, 6, 0, 0, 0, 0, 10 << 5 |  9, 22 << 5 | 11, 0, 0
.hword  4,          SPRITE_HIKER,  7, 1,    0,  3035,    ORIENT_UP, 2, 0, 0, 0, 0,  9 << 5 | 31, 22 << 5 | 17, 0, 7
.hword  5,     SPRITE_BATTLEGIRL, 20, 1,    0,  3037, ORIENT_RIGHT, 2, 0, 0, 4, 0, 10 << 5 | 16, 22 << 5 | 18, 0, 6
.hword  6,      SPRITE_GUIDEPOST,  0, 0,    0,     6,    ORIENT_UP, 4, 0, 0, 0, 0,  9 << 5 |  9, 22 << 5 | 22, 0, 0
.hword  7,      SPRITE_GUIDEPOST,  0, 0,    0,     5,    ORIENT_UP, 1, 0, 0, 0, 0, 10 << 5 | 20, 22 << 5 |  7, 0, 0
.hword  8,                    96,  0, 0,    0,     7,    ORIENT_UP, 0, 0, 0, 0, 0,  9 << 5 | 25, 22 << 5 |  7, 0, 0
.hword  9,       SPRITE_POKEBALL,  0, 0, 1057,  7043,    ORIENT_UP, 0, 0, 0, 0, 0,  9 << 5 |  3, 22 << 5 |  7, 0, 0
.hword 10,       SPRITE_POKEBALL,  0, 0, 1058,  7044,    ORIENT_UP, 0, 0, 0, 0, 0, 10 << 5 |  3, 22 << 5 | 26, 0, 0
.hword 11,       SPRITE_POKEBALL,  0, 0, 1059,  7045,    ORIENT_UP, 0, 0, 0, 0, 0, 10 << 5 | 15, 22 << 5 | 21, 0, 0
.hword 12,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 23, 0, 0, 0, 0,  9 << 5 |  2, 22 << 5 |  2, 0, 0
.hword 13,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 22, 0, 0, 0, 0,  9 << 5 |  3, 22 << 5 |  2, 0, 0
.hword 14,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 25, 0, 0, 0, 0,  9 << 5 |  4, 22 << 5 |  2, 0, 0
.hword 15,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 24, 0, 0, 0, 0,  9 << 5 |  5, 22 << 5 |  2, 0, 0
.hword  8,      SPRITE_GUIDEPOST,  0, 0,  350, 65535,    ORIENT_UP, 4, 0, 0, 0, 0,  9 << 5 | 17, 21 << 5 | 28, 0, 0
.hword  9,       SPRITE_SIGNPOST,  0, 0,   45, 65535,    ORIENT_UP, 10, 0, 0, 0, 0,  9 << 5 | 12, 23 << 5 |  1, 0, 0
.hword 18,                   101, 14, 0,  460,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  9 << 5 | 13, 22 << 5 | 12, 0, 0
.hword 19,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 10 << 5 |  6, 22 << 5 | 24, 0, 0
.hword 20,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 10 << 5 |  7, 22 << 5 | 24, 0, 0
.hword 21,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 10 << 5 |  8, 22 << 5 | 24, 0, 0
.hword 22,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 10 << 5 |  6, 22 << 5 | 11, 0, 0
.hword 23,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 10 << 5 |  8, 22 << 5 | 11, 0, 0
.hword 24,                    38, 14, 0,    0,     4,    ORIENT_UP, 0, 0, 0, 0, 0,  9 << 5 | 19, 22 << 5 | 19, 0, 0
.hword 25,       SPRITE_POKEBALL,  0, 0, 1159,  7145,    ORIENT_UP, 0, 0, 0, 0, 0, 10 << 5 |  7, 22 << 5 | 11, 0, 0
.hword 26,       SPRITE_POKEBALL,  0, 0, 1335,  7320,    ORIENT_UP, 0, 0, 0, 0, 0, 10 << 5 | 28, 22 << 5 | 23, 0, 0

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword 10 << 5 | 21, 22 << 5 |  8, 207, 0, 0, 0
.hword 10 << 5 | 28, 22 << 5 | 13, 208, 1, 0, 0

.word 1 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 2, 10 << 5 | 20, 22 << 5 |  8, 1, 3, 0, 0, 16524
