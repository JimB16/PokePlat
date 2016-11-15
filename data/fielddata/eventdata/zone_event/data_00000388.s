.include "source/macros_asm.s"

.word 6 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8142, 2, 793, 0, 402, 0, 0, 0, 4, 0
.hword 8144, 2, 774, 0, 357, 0, 0, 0, 4, 0
.hword 8143, 2, 781, 0, 365, 0, 0, 0, 4, 0
.hword 8205, 2, 780, 0, 334, 0, 0, 0, 4, 0
.hword 8206, 2, 778, 0, 326, 0, 0, 0, 4, 0
.hword 8207, 2, 775, 0, 404, 0, 0, 0, 4, 0

.word 27 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,      SPRITE_GUIDEPOST,  0, 0,    0,     1,    ORIENT_UP, 2, 0, 0, 0, 0, 24 << 5 | 11, 10 << 5 |  9, 0, 0
.hword  1,      SPRITE_GUIDEPOST,  0, 0,    0,     2,    ORIENT_UP, 4, 0, 0, 0, 0, 24 << 5 | 18, 12 << 5 | 22, 0, 0
.hword  2,                    85,  0, 0,   32, 10001,    ORIENT_UP, 0, 0, 0, 0, 0, 24 << 5 | 25, 11 << 5 | 20, 0, 0
.hword  3,                    85,  0, 0,   33, 10001,    ORIENT_UP, 0, 0, 0, 0, 0, 24 << 5 | 13, 11 << 5 |  0, 0, 0
.hword  4,                    85,  0, 0,   34, 10001,    ORIENT_UP, 0, 0, 0, 0, 0, 24 << 5 | 14, 11 << 5 |  0, 0, 0
.hword  5,                    85,  0, 0,   35, 10001,    ORIENT_UP, 0, 0, 0, 0, 0, 24 << 5 | 15, 11 << 5 |  1, 0, 0
.hword  6,       SPRITE_POKEBALL,  0, 0, 1238,  7224,    ORIENT_UP, 0, 0, 0, 0, 0, 24 << 5 | 18, 10 << 5 | 13, 0, 0
.hword  7,       SPRITE_POKEBALL,  0, 0, 1239,  7225,    ORIENT_UP, 0, 0, 0, 0, 0, 24 << 5 | 28, 10 << 5 | 26, 0, 0
.hword  8,       SPRITE_POKEBALL,  0, 0, 1240,  7226,    ORIENT_UP, 0, 0, 0, 0, 0, 24 << 5 | 26, 12 << 5 |  1, 0, 0
.hword  9,       SPRITE_POKEBALL,  0, 0, 1241,  7227,    ORIENT_UP, 0, 0, 0, 0, 0, 24 << 5 | 12, 10 << 5 | 25, 0, 0
.hword 10,       SPRITE_POKEBALL,  0, 0, 1242,  7228,    ORIENT_UP, 0, 0, 0, 0, 0, 24 << 5 | 11, 11 << 5 | 28, 0, 0
.hword 11,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 102, 0, 0, 0, 0, 24 << 5 | 11, 12 << 5 |  5, 0, 0
.hword 12,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 103, 0, 0, 0, 0, 24 << 5 | 14, 12 << 5 |  5, 0, 0
.hword 13,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 104, 0, 0, 0, 0, 24 << 5 | 12, 12 << 5 |  5, 0, 0
.hword 14,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 105, 0, 0, 0, 0, 24 << 5 | 13, 12 << 5 |  5, 0, 0
.hword 15, SPRITE_ACETRAINERMALE, 46, 1,    0,  3564,  ORIENT_LEFT, 3, 0, 0, 0, 0, 24 << 5 | 11, 10 << 5 |  5, 0, 0
.hword 16, SPRITE_ACETRAINERFEMALE, 16, 1,    0,  3573,  ORIENT_LEFT, 2, 0, 0, 0, 0, 24 << 5 |  5, 10 << 5 | 26, 0, 0
.hword 17, SPRITE_ACETRAINERMALE, 16, 1,    0,  3590,  ORIENT_LEFT, 2, 0, 0, 0, 0, 24 << 5 | 21, 11 << 5 | 23, 0, 0
.hword 18, SPRITE_ACETRAINERFEMALE, 17, 1,    0,  3595, ORIENT_RIGHT, 2, 0, 0, 0, 0, 24 << 5 | 18, 11 << 5 | 23, 0, 0
.hword 19, SPRITE_ACETRAINERMALE, 15, 1,    0,  3558,  ORIENT_DOWN, 4, 0, 0, 0, 0, 24 << 5 | 28, 10 << 5 |  7, 0, 0
.hword 20,        SPRITE_PSYCHIC, 16, 1,    0,  3582,  ORIENT_LEFT, 5, 0, 0, 0, 0, 24 << 5 | 17, 12 << 5 | 14, 0, 0
.hword 21, SPRITE_ACETRAINERFEMALE, 16, 1,    0,  3576,  ORIENT_LEFT, 4, 0, 0, 0, 0, 24 << 5 | 27, 12 << 5 | 10, 0, 0
.hword 22,                    51, 52, 2,    0,  3586,  ORIENT_DOWN, 1, 0, 0, 0, 0, 24 << 5 |  8, 10 << 5 | 18, 0, 0
.hword 23,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 24 << 5 | 17, 12 << 5 |  6, 0, 0
.hword 24,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 24 << 5 | 18, 12 << 5 |  6, 0, 0
.hword 25,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 24 << 5 |  4, 12 << 5 |  0, 0, 0
.hword 26,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 24 << 5 |  5, 12 << 5 |  0, 0, 0

.word 6 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword 24 << 5 |  6, 10 << 5 | 11, 501, 1, 0, 0
.hword 24 << 5 |  6, 10 << 5 | 10, 501, 1, 0, 0
.hword 24 << 5 | 21, 11 << 5 |  4, 502, 0, 0, 0
.hword 24 << 5 |  7, 12 << 5 |  2, 503, 0, 0, 0
.hword 24 << 5 | 17, 10 << 5 | 20, 591, 0, 0, 0
.hword 24 << 5 | 17, 10 << 5 | 20, 592, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
