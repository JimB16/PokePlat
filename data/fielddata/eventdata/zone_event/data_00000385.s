.include "source/macros_asm.s"

.word 8 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8124, 2, 881, 0, 530, 0, 0, 0, 4, 0
.hword 8125, 2, 899, 0, 535, 0, 0, 0, 4, 0
.hword 8126, 2, 908, 0, 530, 0, 0, 0, 4, 0
.hword 8127, 2, 914, 0, 533, 0, 0, 0, 4, 0
.hword 8170, 2, 917, 0, 529, 0, 0, 0, 4, 0
.hword 8171, 2, 883, 0, 563, 0, 0, 0, 4, 0
.hword 8172, 2, 908, 0, 527, 0, 0, 0, 4, 0
.hword 3, 0, 908, 0, 491, 0, 0, 0, 0, 0

.word 22 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,       SPRITE_POKEBALL,  0, 0, 1208,  7194,    ORIENT_UP, 0, 0, 0, 0, 0, 27 << 5 | 20, 17 << 5 | 26, 0, 0
.hword  1,       SPRITE_POKEBALL,  0, 0, 1209,  7195,    ORIENT_UP, 0, 0, 0, 0, 0, 27 << 5 |  5, 16 << 5 | 18, 0, 0
.hword  2,       SPRITE_POKEBALL,  0, 0, 1210,  7196,    ORIENT_UP, 0, 0, 0, 0, 0, 28 << 5 | 11, 15 << 5 | 29, 0, 0
.hword  3,                   166,  0, 0,  594,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0, 28 << 5 | 13, 15 << 5 | 12, 0, 0
.hword  4,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 86, 0, 0, 0, 0, 28 << 5 | 10, 16 << 5 | 10, 0, 0
.hword  5,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 87, 0, 0, 0, 0, 28 << 5 | 11, 16 << 5 | 10, 0, 0
.hword  6,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 88, 0, 0, 0, 0, 28 << 5 | 12, 16 << 5 | 10, 0, 0
.hword  7,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 89, 0, 0, 0, 0, 28 << 5 | 13, 16 << 5 | 10, 0, 0
.hword  8, SPRITE_ACETRAINERMALE, 17, 1,    0,  3281, ORIENT_RIGHT, 3, 0, 0, 0, 0, 27 << 5 | 19, 17 << 5 |  3, 0, 0
.hword  9,        SPRITE_PSYCHIC, 14, 1,    0,  3287,    ORIENT_UP, 4, 0, 0, 0, 0, 27 << 5 | 11, 16 << 5 | 17, 0, 0
.hword 10,                    51, 38, 1,    0,  3312, ORIENT_RIGHT, 2, 0, 0, 10, 2, 28 << 5 |  5, 16 << 5 | 20, 0, 0
.hword 11,         SPRITE_OLDMAN,  8, 1,    0,  3361,  ORIENT_DOWN, 3, 0, 0, 0, 0, 27 << 5 | 21, 16 << 5 | 21, 0, 0
.hword 12,        SPRITE_PSYCHIC, 17, 1,    0,  3288, ORIENT_RIGHT, 2, 0, 0, 0, 0, 27 << 5 |  5, 16 << 5 | 24, 0, 0
.hword 13, SPRITE_ACETRAINERFEMALE, 16, 1,    0,  3285,  ORIENT_LEFT, 6, 0, 0, 0, 0, 28 << 5 | 19, 16 << 5 |  6, 0, 0
.hword 14,                    50, 17, 1,    0,  3304, ORIENT_RIGHT, 4, 0, 0, 0, 0, 28 << 5 | 17, 16 << 5 | 10, 0, 0
.hword 15, SPRITE_ACETRAINERMALE, 19, 1,    0,  3276, ORIENT_RIGHT, 3, 0, 0, 0, 0, 28 << 5 |  8, 15 << 5 | 31, 0, 0
.hword 16,                   158,  0, 0,  604,     0,  ORIENT_DOWN, 0, 0, 0, 0, 0, 28 << 5 | 15, 15 << 5 |  0, 0, 0
.hword 17,       SPRITE_POKEBALL,  0, 0, 1318,  7303,    ORIENT_UP, 0, 0, 0, 0, 0, 28 << 5 | 27, 15 << 5 | 23, 0, 0
.hword 18,       SPRITE_POKEBALL,  0, 0, 1319,  7304,    ORIENT_UP, 0, 0, 0, 0, 0, 28 << 5 |  8, 16 << 5 | 12, 0, 0
.hword 19,       SPRITE_POKEBALL,  0, 0, 1320,  7305,    ORIENT_UP, 0, 0, 0, 0, 0, 28 << 5 | 18, 15 << 5 | 29, 0, 0
.hword 20,       SPRITE_POKEBALL,  0, 0, 1317,  7302,    ORIENT_UP, 0, 0, 0, 0, 0, 27 << 5 | 13, 16 << 5 | 29, 0, 0
.hword 21,                   143, 14, 0,  714,     6,    ORIENT_UP, 0, 0, 0, 0, 0, 28 << 5 | 11, 15 << 5 | 13, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword 27 << 5 | 14, 17 << 5 | 16, 249, 1, 0, 0

.word 1 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 5, 28 << 5 |  7, 15 << 5 | 16, 1, 3, 0, 1, 16517
