.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 32 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,       SPRITE_SIGNPOST,  0, 0,    0,     9,    ORIENT_UP, 18, 0, 0, 0, 0, 19 << 5 | 25, 13 << 5 | 17, 0, 0
.hword  1,      SPRITE_GUIDEPOST,  0, 0,    0,    11,    ORIENT_UP, 3, 0, 0, 0, 0, 19 << 5 | 23, 13 << 5 | 14, 0, 0
.hword  2,      SPRITE_GUIDEPOST,  0, 0,    0,    10,    ORIENT_UP, 3, 0, 0, 0, 0, 20 << 5 | 12, 13 << 5 | 10, 0, 0
.hword  3,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 20 << 5 |  8, 13 << 5 | 22, 0, 0
.hword  4,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 20 << 5 |  8, 13 << 5 | 21, 0, 0
.hword  5,                    56,  3, 0,    0,     7, ORIENT_RIGHT, 0, 0, 0, 1, 0, 19 << 5 | 26, 13 << 5 | 26, 0, 0
.hword  6,      SPRITE_FISHERMAN,  8, 0,    0,     8,  ORIENT_DOWN, 0, 0, 0, 0, 0, 19 << 5 | 20, 13 << 5 |  7, 0, 0
.hword  7,          SPRITE_BARRY, 17, 0,  467,    14, ORIENT_RIGHT, 0, 0, 0, 0, 0, 19 << 5 | 20, 13 << 5 | 18, 0, 0
.hword  8,                   144, 16, 0,  468,    25,  ORIENT_LEFT, 0, 0, 0, 0, 0, 20 << 5 | 17, 13 << 5 | 10, 0, 0
.hword  9,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 90, 0, 0, 0, 0, 19 << 5 | 31, 13 << 5 | 13, 0, 0
.hword 10,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 91, 0, 0, 0, 0, 20 << 5 |  0, 13 << 5 | 13, 0, 0
.hword 11,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 92, 0, 0, 0, 0, 20 << 5 |  1, 13 << 5 | 13, 0, 0
.hword 12,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 93, 0, 0, 0, 0, 20 << 5 |  2, 13 << 5 | 13, 0, 0
.hword 13,    SPRITE_GENERICMALE,  3, 0,    0,     4, ORIENT_RIGHT, 0, 0, 0, 1, 1, 20 << 5 | 12, 13 << 5 | 24, 0, 0
.hword 14, SPRITE_ACETRAINERMALE,  3, 0,    0,     2, ORIENT_RIGHT, 0, 0, 0, 1, 2, 20 << 5 | 18, 13 << 5 | 12, 0, 0
.hword 15, SPRITE_ACETRAINERFEMALE,  3, 0,    0,     3,  ORIENT_DOWN, 0, 0, 0, 0, 3, 20 << 5 | 17, 13 << 5 | 17, 0, 0
.hword 16,     SPRITE_LITTLEGIRL,  3, 0,    0,     5, ORIENT_RIGHT, 0, 0, 0, 1, 2, 20 << 5 | 10, 13 << 5 | 15, 0, 0
.hword 17,     SPRITE_BATTLEGIRL,  3, 0,    0,     6, ORIENT_RIGHT, 0, 0, 0, 1, 0, 20 << 5 |  2, 13 << 5 | 16, 0, 0
.hword 18,                    56,  0, 0,    0,    12, ORIENT_RIGHT, 0, 0, 0, 1, 0, 19 << 5 | 11, 13 << 5 | 19, 0, 0
.hword 19,                    51,  3, 0,    0,    13,  ORIENT_LEFT, 0, 0, 0, 1, 1, 20 << 5 |  8, 13 << 5 | 18, 0, 0
.hword 20,                   192,  0, 0,    0,     0,    ORIENT_UP, 0, 0, 0, 0, 0, 19 << 5 |  9, 13 << 5 | 18, 0, 0
.hword 21,                   192,  0, 0,    0,     0,    ORIENT_UP, 0, 0, 0, 0, 0, 19 << 5 |  9, 13 << 5 | 19, 0, 0
.hword 22, SPRITE_ACETRAINERMALE,  0, 0,  660,    16,  ORIENT_DOWN, 0, 0, 0, 0, 0, 19 << 5 | 21, 13 << 5 | 13, 0, 0
.hword 23,                    51,  0, 0,  660,    17,  ORIENT_DOWN, 0, 0, 0, 0, 0, 19 << 5 | 22, 13 << 5 | 13, 0, 0
.hword 24,                   133, 15, 0,  482,    19,  ORIENT_DOWN, 0, 0, 0, 0, 0, 20 << 5 | 15, 13 << 5 |  8, 0, 0
.hword 25,                   136, 15, 0,  482,    18,  ORIENT_DOWN, 0, 0, 0, 0, 0, 20 << 5 | 14, 13 << 5 |  8, 0, 0
.hword 26,                   169, 15, 0,  483,     0,  ORIENT_DOWN, 0, 0, 0, 0, 0, 20 << 5 | 15, 13 << 5 |  7, 0, 0
.hword 27,                    51, 17, 0,  482,    22, ORIENT_RIGHT, 0, 0, 0, 0, 0, 20 << 5 | 12, 13 << 5 | 13, 0, 0
.hword 28, SPRITE_ACETRAINERFEMALE, 17, 0,  482,    21, ORIENT_RIGHT, 0, 0, 0, 0, 0, 20 << 5 | 11, 13 << 5 | 12, 0, 0
.hword 29, SPRITE_ACETRAINERMALE, 17, 0,  482,    20, ORIENT_RIGHT, 0, 0, 0, 0, 0, 20 << 5 | 11, 13 << 5 | 11, 0, 0
.hword 30,     SPRITE_BATTLEGIRL, 16, 0,  482,    23,  ORIENT_LEFT, 0, 0, 0, 0, 0, 20 << 5 | 17, 13 << 5 | 12, 0, 0
.hword 31,                    56, 16, 0,  482,    24,  ORIENT_LEFT, 0, 0, 0, 0, 0, 20 << 5 | 17, 13 << 5 | 11, 0, 0

.word 8 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword 19 << 5 | 22, 13 << 5 |  5, 193, 0, 0, 0
.hword 19 << 5 | 23, 13 << 5 |  5, 193, 0, 0, 0
.hword 20 << 5 | 14, 13 << 5 |  7, 560, 3, 0, 0
.hword 20 << 5 | 15, 13 << 5 |  7, 560, 3, 0, 0
.hword 20 << 5 | 14, 13 << 5 | 22, 194, 0, 0, 0
.hword 20 << 5 | 14, 13 << 5 | 28, 195, 0, 0, 0
.hword 20 << 5 |  7, 13 << 5 | 13, 189, 0, 0, 0
.hword 20 << 5 | 20, 13 << 5 | 13, 191, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
