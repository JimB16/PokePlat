.include "source/macros_asm.s"

.word 5 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8123, 2, 22, 0, 10, 0, 0, 0, 4, 0
.hword 8122, 2, 50, 0, 15, 0, 0, 0, 4, 0
.hword 8121, 2, 30, 0, 20, 0, 0, 0, 4, 0
.hword 8129, 2, 40, 0, 41, 0, 0, 0, 4, 0
.hword 8128, 2, 24, 0, 46, 0, 0, 0, 4, 0

.word 29 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,       SPRITE_POKEBALL,  0, 0, 1207,  7193,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 12,  0 << 5 |  9, 0, 1
.hword  1,       SPRITE_POKEBALL,  0, 0, 1205,  7191,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 14,  0 << 5 |  7, 0, 1
.hword  2,       SPRITE_POKEBALL,  0, 0, 1206,  7192,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 14,  0 << 5 |  4, 0, 1
.hword  3,       SPRITE_POKEBALL,  0, 0, 1211,  7197,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 27,  1 << 5 | 28, 0, 1
.hword  4, SPRITE_ACETRAINERMALE, 16, 1,    0,  3388,  ORIENT_LEFT, 3, 0, 0, 0, 0,  0 << 5 | 10,  1 << 5 | 15, 0, 1
.hword  5, SPRITE_ACETRAINERFEMALE, 17, 1,    0,  3392, ORIENT_RIGHT, 3, 0, 0, 0, 0,  0 << 5 |  6,  1 << 5 | 15, 0, 1
.hword  6,        SPRITE_PSYCHIC, 15, 1,    0,  3398,  ORIENT_DOWN, 4, 0, 0, 0, 0,  0 << 5 |  7,  0 << 5 | 13, 0, 1
.hword  7,        SPRITE_PSYCHIC, 17, 1,    0,  3395, ORIENT_RIGHT, 1, 0, 0, 0, 0,  0 << 5 |  6,  0 << 5 | 17, 0, 1
.hword  8,                    51, 14, 1,    0,  3445,    ORIENT_UP, 1, 0, 0, 0, 0,  0 << 5 | 16,  0 << 5 | 12, 0, 1
.hword  9,         SPRITE_OLDMAN, 15, 1,    0,  3498,  ORIENT_DOWN, 1, 0, 0, 0, 0,  0 << 5 | 16,  0 << 5 | 10, 0, 1
.hword 10, SPRITE_ACETRAINERMALE, 16, 1,    0,  3389,  ORIENT_LEFT, 1, 0, 0, 0, 0,  1 << 5 | 12,  1 << 5 | 25, 0, 1
.hword 11, SPRITE_ACETRAINERFEMALE, 17, 1,    0,  3393, ORIENT_RIGHT, 1, 0, 0, 0, 0,  1 << 5 | 10,  1 << 5 | 25, 0, 1
.hword 12,        SPRITE_PSYCHIC, 16, 1,    0,  3396,  ORIENT_LEFT, 1, 0, 0, 0, 0,  1 << 5 |  6,  0 << 5 | 17, 0, 1
.hword 13,        SPRITE_PSYCHIC, 17, 1,    0,  3399, ORIENT_RIGHT, 1, 0, 0, 0, 0,  1 << 5 |  4,  0 << 5 | 17, 0, 1
.hword 14, SPRITE_ACETRAINERFEMALE, 14, 1,    0,  3372,    ORIENT_UP, 1, 0, 0, 0, 0,  0 << 5 | 28,  0 << 5 | 12, 0, 1
.hword 15, SPRITE_ACETRAINERMALE, 15, 1,    0,  3385,  ORIENT_DOWN, 1, 0, 0, 0, 0,  0 << 5 | 28,  0 << 5 | 10, 0, 1
.hword 16,                    51, 14, 1,    0,  3446,    ORIENT_UP, 1, 0, 0, 0, 0,  1 << 5 | 14,  0 << 5 | 25, 0, 1
.hword 17,         SPRITE_OLDMAN, 15, 1,    0,  3499,  ORIENT_DOWN, 1, 0, 0, 0, 0,  1 << 5 | 14,  0 << 5 | 23, 0, 1
.hword 18,                    84,  0, 0,   32, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  6,  1 << 5 | 19, 0, 0
.hword 19,                    84,  0, 0,   33, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  7,  0 << 5 | 31, 0, 1
.hword 20,                    84,  0, 0,   34, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  7,  0 << 5 | 28, 0, 1
.hword 21,                    84,  0, 0,   35, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  7,  0 << 5 | 25, 0, 1
.hword 22,                    84,  0, 0,   36, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 |  9, 0, 1
.hword 23,                    84,  0, 0,   37, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 10,  0 << 5 |  7, 0, 1
.hword 24,                    84,  0, 0,   38, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 |  5, 0, 1
.hword 25,                    84,  0, 0,   39, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 12,  1 << 5 |  0, 0, 1
.hword 26,                    84,  0, 0,   40, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 12,  0 << 5 | 31, 0, 1
.hword 27,                    84,  0, 0,   41, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 21,  0 << 5 | 11, 0, 1
.hword 28,                   143, 17, 0,  486,  9705, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  7,  1 << 5 | 26, 0, 1

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  3,  1 << 5 | 26, 248, 1, 0, 0
.hword  1 << 5 | 24,  0 << 5 | 13, 249, 0, 0, 0

.word 3 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 3,  1 << 5 | 19,  0 << 5 | 19, 4, 1, 0, 1, 16528
.hword 2,  0 << 5 |  4,  1 << 5 | 23, 1, 6, 0, 1, 16528
.hword 1,  0 << 5 |  5,  1 << 5 | 23, 1, 6, 0, 0, 16528
