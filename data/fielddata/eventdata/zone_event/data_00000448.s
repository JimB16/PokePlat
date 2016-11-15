.include "source/macros_asm.s"

.word 5 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8135, 2, 715, 0, 345, 0, 0, 0, 4, 0
.hword 8132, 2, 719, 0, 333, 0, 0, 0, 4, 0
.hword 8134, 2, 724, 0, 334, 0, 0, 0, 4, 0
.hword 8133, 2, 723, 0, 331, 0, 0, 0, 4, 0
.hword 8159, 2, 744, 0, 326, 0, 0, 0, 4, 0

.word 16 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,      SPRITE_GUIDEPOST,  0, 0,    0,     1,    ORIENT_UP, 2, 0, 0, 0, 0, 21 << 5 |  7, 10 << 5 | 21, 0, 0
.hword  1,       SPRITE_POKEBALL,  0, 0, 1219,  7205,    ORIENT_UP, 0, 0, 0, 0, 0, 22 << 5 | 13, 10 << 5 | 19, 0, 0
.hword  2,       SPRITE_POKEBALL,  0, 0, 1221,  7207,    ORIENT_UP, 0, 0, 0, 0, 0, 21 << 5 | 18, 10 << 5 | 24, 0, 0
.hword  3,       SPRITE_POKEBALL,  0, 0, 1220,  7206,    ORIENT_UP, 0, 0, 0, 0, 0, 21 << 5 | 21, 10 << 5 | 13, 0, 0
.hword  4,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 98, 0, 0, 0, 0, 21 << 5 | 17, 10 << 5 |  8, 0, 0
.hword  5,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 99, 0, 0, 0, 0, 21 << 5 | 20, 10 << 5 |  8, 0, 0
.hword  6,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 100, 0, 0, 0, 0, 21 << 5 | 18, 10 << 5 |  8, 0, 0
.hword  7,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 101, 0, 0, 0, 0, 21 << 5 | 19, 10 << 5 |  8, 0, 0
.hword  8,                    47, 15, 1,    0,  3603,  ORIENT_DOWN, 2, 0, 0, 0, 0, 22 << 5 | 23, 10 << 5 | 22, 0, 0
.hword  0,      SPRITE_GUIDEPOST,  0, 0,  403, 65535,    ORIENT_UP, 3, 0, 0, 0, 0, 23 << 5 | 19,  9 << 5 | 26, 0, 0
.hword 10, SPRITE_ACETRAINERMALE, 20, 1,    0,  3567,  ORIENT_LEFT, 1, 0, 0, 4, 0, 21 << 5 | 17, 10 << 5 | 15, 0, 0
.hword 11, SPRITE_ACETRAINERFEMALE,  6, 1,    0,  3554,  ORIENT_LEFT, 2, 0, 0, 0, 0, 22 << 5 |  3, 10 << 5 | 11, 0, 0
.hword 12, SPRITE_ACETRAINERMALE, 15, 1,    0,  3559,  ORIENT_DOWN, 1, 0, 0, 0, 0, 22 << 5 |  3, 10 << 5 |  9, 0, 0
.hword  5,      SPRITE_YOUNGSTER,  2, 0,  450, 65535,  ORIENT_DOWN, 0, 0, 0, 0, 0, 20 << 5 | 27, 10 << 5 | 18, 0, 0
.hword 14,      SPRITE_GUIDEPOST,  0, 0,    0,     2,    ORIENT_UP, 18, 0, 0, 0, 0, 23 << 5 | 24, 10 << 5 |  7, 0, 0
.hword 15,                    46, 18, 1,    0,  3599,  ORIENT_DOWN, 2, 0, 0, 0, 0, 23 << 5 | 24, 10 << 5 | 22, 0, 0

.word 3 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword 23 << 5 |  3, 10 << 5 | 19, 499, 0, 0, 0
.hword 23 << 5 | 31, 10 << 5 | 10, 501, 0, 0, 0
.hword 23 << 5 | 31, 10 << 5 | 11, 501, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
