.include "source/macros_asm.s"

.word 2 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8045, 2, 547, 0, 525, 0, 0, 0, 4, 0
.hword 8044, 2, 526, 0, 519, 0, 0, 0, 4, 0

.word 26 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0, SPRITE_ACETRAINERMALE,  7, 1,    0,  3065, ORIENT_RIGHT, 4, 0, 0, 0, 0, 16 << 5 | 22, 16 << 5 | 10, 0, 0
.hword  1, SPRITE_ACETRAINERFEMALE, 14, 1,    0,  3066,    ORIENT_UP, 2, 0, 0, 0, 0, 17 << 5 |  3, 16 << 5 | 22, 0, 0
.hword  2,      SPRITE_LITTLEBOY, 54, 2,    0,  3069,  ORIENT_DOWN, 1, 0, 0, 0, 0, 17 << 5 | 20, 16 << 5 | 19, 0, 0
.hword  3,      SPRITE_LITTLEBOY, 54, 2,    0,  3070,  ORIENT_DOWN, 1, 0, 0, 0, 0, 16 << 5 | 13, 16 << 5 | 22, 0, 0
.hword  4,      SPRITE_LITTLEBOY, 53, 2,    0,  3071,  ORIENT_DOWN, 1, 0, 0, 0, 0, 15 << 5 | 19, 16 << 5 |  9, 0, 0
.hword  5, SPRITE_ACETRAINERMALE, 16, 1,    0,  3072,  ORIENT_LEFT, 3, 0, 0, 0, 0, 17 << 5 | 16, 16 << 5 | 10, 0, 0
.hword  6, SPRITE_ACETRAINERFEMALE, 15, 1,    0,  3073,  ORIENT_DOWN, 2, 0, 0, 0, 0, 15 << 5 | 31, 16 << 5 | 21, 0, 0
.hword  7, SPRITE_ACETRAINERMALE, 50, 1,    0,  3074,  ORIENT_DOWN, 0, 0, 0, 0, 0, 16 << 5 | 25, 16 << 5 | 16, 0, 8
.hword  8, SPRITE_ACETRAINERFEMALE, 40, 1,    0,  5074, ORIENT_RIGHT, 2, 0, 0, 3, 1, 16 << 5 | 25, 16 << 5 | 17, 0, 8
.hword  9,         SPRITE_OLDMAN,  8, 1,    0,  3067,  ORIENT_DOWN, 3, 0, 0, 0, 0, 15 << 5 | 14, 16 << 5 | 16, 0, 0
.hword 10,                    51, 17, 4,    0,  3068, ORIENT_RIGHT, 4, 2, 0, 0, 0, 16 << 5 |  6, 16 << 5 | 28, 0, 0
.hword 11,      SPRITE_GUIDEPOST,  0, 0,    0,     2,    ORIENT_UP, 2, 0, 0, 0, 0, 15 << 5 |  8, 16 << 5 | 17, 0, 0
.hword 12,                    93,  0, 0,    0,     3,    ORIENT_UP, 0, 0, 0, 0, 0, 17 << 5 | 18, 16 << 5 |  4, 0, 0
.hword 13,                    85,  0, 0,   33, 10001,    ORIENT_UP, 0, 0, 0, 0, 0, 15 << 5 | 17, 16 << 5 | 28, 0, 0
.hword 14,                    86,  0, 0,   32, 10000,    ORIENT_UP, 0, 0, 0, 0, 0, 17 << 5 | 15, 16 << 5 | 19, 0, 0
.hword 15,       SPRITE_POKEBALL,  0, 0, 1131,  7117,    ORIENT_UP, 0, 0, 0, 0, 0, 16 << 5 | 15, 16 << 5 | 23, 0, 0
.hword 16,       SPRITE_POKEBALL,  0, 0, 1132,  7118,    ORIENT_UP, 0, 0, 0, 0, 0, 15 << 5 | 17, 16 << 5 | 21, 0, 0
.hword 17,       SPRITE_POKEBALL,  0, 0, 1133,  7119,    ORIENT_UP, 0, 0, 0, 0, 0, 15 << 5 | 13, 16 << 5 | 28, 0, 0
.hword 18,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 42, 0, 0, 0, 0, 15 << 5 | 12, 16 << 5 |  8, 0, 0
.hword 19,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 43, 0, 0, 0, 0, 15 << 5 | 13, 16 << 5 |  8, 0, 0
.hword 20,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 44, 0, 0, 0, 0, 15 << 5 | 14, 16 << 5 |  8, 0, 0
.hword 21,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 45, 0, 0, 0, 0, 15 << 5 | 15, 16 << 5 |  8, 0, 0
.hword 22,                    85,  0, 0,   34, 10001,    ORIENT_UP, 0, 0, 0, 0, 0, 15 << 5 | 18, 16 << 5 | 29, 0, 0
.hword 23,                    51,  6, 0,    0,     1,  ORIENT_LEFT, 0, 0, 0, 0, 0, 17 << 5 | 26, 16 << 5 | 23, 0, 0
.hword 24,       SPRITE_POKEBALL,  0, 0, 1294,  7279,    ORIENT_UP, 0, 0, 0, 0, 0, 17 << 5 | 18, 16 << 5 | 14, 0, 0
.hword 25,       SPRITE_POKEBALL,  0, 0, 1293,  7278,    ORIENT_UP, 0, 0, 0, 0, 0, 17 << 5 |  7, 16 << 5 | 24, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword 17 << 5 | 20, 16 << 5 |  4, 364, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
