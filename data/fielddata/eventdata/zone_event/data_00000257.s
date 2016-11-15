.include "source/macros_asm.s"

.word 7 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8140, 2, 85, 0, 49, 0, 0, 0, 4, 0
.hword 8141, 2, 73, 0, 15, 0, 0, 0, 4, 0
.hword 8139, 2, 5, 0, 48, 0, 0, 0, 4, 0
.hword 8175, 2, 51, 0, 77, 0, 0, 0, 4, 0
.hword 8176, 2, 53, 0, 39, 0, 0, 0, 4, 0
.hword 8177, 2, 18, 0, 73, 0, 0, 0, 4, 0
.hword 8268, 2, 14, 0, 13, 0, 0, 0, 4, 0

.word 31 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    85,  0, 0,   33, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 11,  0 << 5 | 30, 0, 0
.hword  1,                    84,  0, 0,   55, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 20,  0 << 5 | 30, 0, 0
.hword  2,                    84,  0, 0,   54, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 29,  0 << 5 | 12, 0, 0
.hword  3,                    84,  0, 0,   56, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 21,  1 << 5 | 20, 0, 0
.hword  4,                    85,  0, 0,   37, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 28,  1 << 5 | 21, 0, 0
.hword  5,                    85,  0, 0,   51, 10001,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  9,  0 << 5 | 15, 0, 0
.hword  6,       SPRITE_POKEBALL,  0, 0, 1230,  7216,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 11,  1 << 5 | 12, 0, 0
.hword  7,       SPRITE_POKEBALL,  0, 0, 1237,  7223,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 17,  1 << 5 | 17, 0, 0
.hword  8,       SPRITE_POKEBALL,  0, 0, 1236,  7222,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 22,  0 << 5 |  3, 0, 0
.hword  9,       SPRITE_POKEBALL,  0, 0, 1234,  7220,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 12,  2 << 5 | 12, 0, 0
.hword 10,       SPRITE_POKEBALL,  0, 0, 1231,  7217,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 24,  2 << 5 | 13, 0, 0
.hword 11,       SPRITE_POKEBALL,  0, 0, 1232,  7218,    ORIENT_UP, 0, 0, 0, 0, 0,  2 << 5 |  5,  1 << 5 | 23, 0, 0
.hword 12,       SPRITE_POKEBALL,  0, 0, 1233,  7219,    ORIENT_UP, 0, 0, 0, 0, 0,  2 << 5 | 28,  0 << 5 |  3, 0, 0
.hword 13,       SPRITE_POKEBALL,  0, 0, 1235,  7221,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  6,  1 << 5 | 12, 0, 0
.hword 14,                   144, 14, 0,  474,  9703,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 10,  2 << 5 |  4, 0, 0
.hword 15, SPRITE_ACETRAINERMALE, 15, 1,    0,  3568,  ORIENT_DOWN, 3, 0, 0, 0, 0,  0 << 5 | 31,  2 << 5 |  9, 0, 0
.hword 16, SPRITE_ACETRAINERFEMALE, 16, 1,    0,  3578,  ORIENT_LEFT, 2, 0, 0, 0, 0,  1 << 5 |  1,  2 << 5 | 12, 0, 0
.hword 17, SPRITE_ACETRAINERMALE, 17, 1,    0,  3570, ORIENT_RIGHT, 1, 0, 0, 0, 0,  1 << 5 | 20,  0 << 5 | 11, 0, 0
.hword 18, SPRITE_ACETRAINERFEMALE, 16, 1,    0,  3580,  ORIENT_LEFT, 1, 0, 0, 0, 0,  1 << 5 | 22,  0 << 5 | 11, 0, 0
.hword 19,        SPRITE_PSYCHIC, 16, 1,    0,  3585,  ORIENT_LEFT, 2, 0, 0, 0, 0,  2 << 5 | 22,  2 << 5 | 11, 0, 0
.hword 20,        SPRITE_PSYCHIC, 17, 1,    0,  3583, ORIENT_RIGHT, 2, 0, 0, 0, 0,  2 << 5 | 19,  2 << 5 | 11, 0, 0
.hword 21, SPRITE_ACETRAINERFEMALE, 15, 1,    0,  3555,  ORIENT_DOWN, 3, 0, 0, 0, 0,  1 << 5 | 16,  1 << 5 | 21, 0, 0
.hword 22,                    51, 14, 1,    0,  3588,    ORIENT_UP, 3, 0, 0, 0, 0,  1 << 5 | 16,  1 << 5 | 25, 0, 0
.hword 23, SPRITE_ACETRAINERMALE, 16, 1,    0,  3569,  ORIENT_LEFT, 3, 0, 0, 0, 0,  0 << 5 | 13,  1 << 5 |  4, 0, 0
.hword 24, SPRITE_ACETRAINERFEMALE, 17, 1,    0,  3579, ORIENT_RIGHT, 3, 0, 0, 0, 0,  0 << 5 |  9,  1 << 5 |  4, 0, 0
.hword 25, SPRITE_ACETRAINERMALE, 17, 1,    0,  3560, ORIENT_RIGHT, 1, 0, 0, 0, 0,  0 << 5 | 15,  0 << 5 | 22, 0, 0
.hword 26,                    51, 16, 1,    0,  3589,  ORIENT_LEFT, 1, 0, 0, 0, 0,  0 << 5 | 17,  0 << 5 | 22, 0, 0
.hword 27, SPRITE_ACETRAINERMALE, 15, 1,    0,  3571,  ORIENT_DOWN, 1, 0, 0, 0, 0,  2 << 5 | 13,  2 << 5 |  0, 0, 0
.hword 28, SPRITE_ACETRAINERFEMALE, 14, 1,    0,  3581,    ORIENT_UP, 1, 0, 0, 0, 0,  2 << 5 | 13,  2 << 5 |  2, 0, 0
.hword 29,         SPRITE_OLDMAN, 17, 1,    0,  3605, ORIENT_RIGHT, 5, 0, 0, 0, 0,  1 << 5 | 30,  0 << 5 | 10, 0, 0
.hword 30, SPRITE_ACETRAINERMALE, 14, 1,    0,  3561,    ORIENT_UP, 2, 0, 0, 0, 0,  2 << 5 |  3,  0 << 5 | 12, 0, 0

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  1 << 5 | 15,  0 << 5 |  2, 265, 0, 0, 0
.hword  1 << 5 | 10,  2 << 5 | 22, 263, 1, 0, 0

.word 3 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 1,  1 << 5 | 10,  2 << 5 |  5, 1, 1, 0, 0, 16532
.hword 2,  1 << 5 | 10,  2 << 5 |  6, 1, 1, 0, 1, 16532
.hword 3,  1 << 5 | 15,  0 << 5 |  3, 1, 1, 0, 1, 16532
