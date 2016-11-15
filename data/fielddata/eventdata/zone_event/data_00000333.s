.include "source/macros_asm.s"

.word 1 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8217, 2, 212, 0, 627, 0, 0, 0, 4, 0

.word 32 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,          SPRITE_HIKER,  8, 1,    0,  3017,  ORIENT_LEFT, 4, 0, 0, 0, 0,  6 << 5 | 18, 19 << 5 | 29, 0, 5
.hword  1,  SPRITE_GENERICFEMALE, 18, 1,    0,  3020,  ORIENT_LEFT, 3, 0, 0, 0, 0,  6 << 5 | 23, 19 << 5 | 25, 0, 5
.hword  2,         SPRITE_CAMPER, 11, 1,    0,  3015, ORIENT_RIGHT, 4, 0, 0, 0, 0,  6 << 5 | 23, 20 << 5 |  6, 0, 6
.hword  3,      SPRITE_PICNICKER,  3, 1,    0,  3016,  ORIENT_LEFT, 2, 0, 0, 1, 1,  6 << 5 | 23, 19 << 5 | 11, 0, 7
.hword  4,          SPRITE_HIKER,  9, 1,    0,  3018,  ORIENT_DOWN, 2, 0, 0, 0, 0,  6 << 5 | 16, 19 << 5 |  2, 0, 7
.hword  5,     SPRITE_BATTLEGIRL, 39, 1,    0,  3019,  ORIENT_DOWN, 2, 0, 0, 2, 5,  6 << 5 | 15, 18 << 5 | 22, 0, 7
.hword  6,      SPRITE_GUIDEPOST,  0, 0,    0,     8,    ORIENT_UP, 2, 0, 0, 0, 0,  6 << 5 | 23, 20 << 5 | 19, 0, 0
.hword  7,      SPRITE_GUIDEPOST,  0, 0,    0,     9,    ORIENT_UP, 3, 0, 0, 0, 0,  6 << 5 | 17, 18 << 5 | 11, 0, 0
.hword  8,     SPRITE_BUGCATCHER,  5, 0,    0,     2,  ORIENT_LEFT, 0, 0, 0, 1, 0,  6 << 5 | 17, 18 << 5 |  8, 0, 0
.hword  9,                    96,  0, 0,    0,    10,    ORIENT_UP, 0, 0, 0, 0, 0,  6 << 5 | 17, 19 << 5 | 15, 0, 0
.hword 10,       SPRITE_POKEBALL,  0, 3, 1030,  7016,    ORIENT_UP, 0, 0, 0, 0, 0,  6 << 5 | 12, 19 << 5 | 10, 0, 0
.hword 11,       SPRITE_POKEBALL,  0, 3, 1031,  7017,    ORIENT_UP, 0, 0, 0, 0, 0,  6 << 5 | 21, 20 << 5 |  0, 0, 0
.hword 12,                   124, 15, 0,  418,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  6 << 5 | 26, 20 << 5 | 13, 0, 5
.hword 13,                   124, 15, 0,  418,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  6 << 5 | 24, 20 << 5 | 13, 0, 5
.hword 14,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 2, 0, 0, 0, 0,  6 << 5 | 10, 20 << 5 | 18, 0, 0
.hword 15,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 3, 0, 0, 0, 0,  6 << 5 | 11, 20 << 5 | 18, 0, 0
.hword 16,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 4, 0, 0, 0, 0,  6 << 5 | 19, 19 << 5 |  6, 0, 0
.hword 17,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 5, 0, 0, 0, 0,  6 << 5 | 20, 19 << 5 |  6, 0, 0
.hword 18,     SPRITE_LITTLEGIRL, 17, 0,  504,     5, ORIENT_RIGHT, 0, 0, 0, 0, 0,  6 << 5 | 19, 20 << 5 | 21, 0, 0
.hword 11,                    93,  0, 0,  426, 65535,    ORIENT_UP, 3, 0, 0, 0, 0,  5 << 5 | 29, 20 << 5 | 15, 0, 0
.hword 20,      SPRITE_PICNICKER, 45, 1,    0,  3455,  ORIENT_DOWN, 3, 0, 0, 0, 0,  6 << 5 | 16, 18 << 5 | 19, 0, 7
.hword 21,         SPRITE_CAMPER, 44, 1,    0,  3376, ORIENT_RIGHT, 2, 0, 0, 3, 3,  6 << 5 | 14, 19 << 5 | 17, 0, 6
.hword 22,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0,  6 << 5 | 20, 19 << 5 | 15, 0, 0
.hword 23,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0,  6 << 5 | 27, 19 << 5 | 10, 0, 0
.hword 24,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0,  6 << 5 | 20, 19 << 5 | 14, 0, 0
.hword 25,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0,  6 << 5 | 27, 18 << 5 | 20, 0, 0
.hword 26,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0,  6 << 5 | 27, 18 << 5 | 21, 0, 0
.hword 27,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0,  6 << 5 | 28, 18 << 5 | 24, 0, 0
.hword 28,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0,  6 << 5 | 27, 19 << 5 | 11, 0, 0
.hword 29,       SPRITE_POKEBALL,  0, 3, 1267,  7253,    ORIENT_UP, 0, 0, 0, 0, 0,  6 << 5 | 27, 19 << 5 |  0, 0, 0
.hword 30,       SPRITE_POKEBALL,  0, 3, 1140,  7126,    ORIENT_UP, 0, 0, 0, 0, 0,  6 << 5 | 11, 18 << 5 | 27, 0, 0
.hword 31,      SPRITE_YOUNGSTER, 14, 0,  383,     3,    ORIENT_UP, 0, 0, 0, 0, 0,  6 << 5 | 20, 20 << 5 | 13, 0, 0

.word 3 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  6 << 5 | 14, 18 << 5 |  5, 203, 0, 0, 0
.hword  6 << 5 | 15, 18 << 5 |  5, 203, 1, 0, 0
.hword  6 << 5 | 22, 18 << 5 | 18, 348, 0, 0, 0

.word 2 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 6,  6 << 5 | 19, 20 << 5 | 19, 1, 6, 0, 0, 16521
.hword 7,  6 << 5 | 25, 20 << 5 | 13, 1, 1, 0, 1, 16521
