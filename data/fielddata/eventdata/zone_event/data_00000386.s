.include "source/macros_asm.s"

.word 4 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8130, 2, 627, 0, 370, 0, 0, 0, 4, 0
.hword 8173, 2, 636, 0, 389, 0, 0, 0, 4, 0
.hword 8203, 2, 614, 0, 373, 0, 0, 0, 4, 0
.hword 8204, 2, 621, 0, 331, 0, 0, 0, 4, 0

.word 31 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,      SPRITE_GUIDEPOST,  0, 0,    0,     1,    ORIENT_UP, 4, 0, 0, 0, 0, 19 << 5 | 20, 12 << 5 | 26, 0, 0
.hword  1,      SPRITE_GUIDEPOST,  0, 0,    0,     2,    ORIENT_UP, 1, 0, 0, 0, 0, 19 << 5 | 22, 10 << 5 | 10, 0, 0
.hword  2,       SPRITE_POKEBALL,  0, 0, 1212,  7198,    ORIENT_UP, 0, 0, 0, 0, 0, 19 << 5 |  3, 12 << 5 | 26, 0, 0
.hword  3,       SPRITE_POKEBALL,  0, 0, 1213,  7199,    ORIENT_UP, 0, 0, 0, 0, 0, 19 << 5 | 29, 12 << 5 | 10, 0, 0
.hword  4,       SPRITE_POKEBALL,  0, 0, 1214,  7200,    ORIENT_UP, 0, 0, 0, 0, 0, 19 << 5 | 10, 12 << 5 | 15, 0, 0
.hword  5,       SPRITE_POKEBALL,  0, 0, 1215,  7201,    ORIENT_UP, 0, 0, 0, 0, 0, 19 << 5 |  2, 11 << 5 | 16, 0, 0
.hword  6,       SPRITE_POKEBALL,  0, 0, 1216,  7202,    ORIENT_UP, 0, 0, 0, 0, 0, 19 << 5 |  2, 10 << 5 | 30, 0, 0
.hword  7,       SPRITE_POKEBALL,  0, 0, 1217,  7203,    ORIENT_UP, 0, 0, 0, 0, 0, 19 << 5 | 20, 10 << 5 |  1, 0, 0
.hword  8,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 97, 0, 0, 0, 0, 19 << 5 |  2, 10 << 5 | 17, 0, 0
.hword  9,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 96, 0, 0, 0, 0, 19 << 5 |  5, 10 << 5 | 17, 0, 0
.hword 10,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 95, 0, 0, 0, 0, 19 << 5 |  3, 10 << 5 | 17, 0, 0
.hword 11,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 94, 0, 0, 0, 0, 19 << 5 |  4, 10 << 5 | 17, 0, 0
.hword 12,       SPRITE_POKEBALL,  0, 0, 1218,  7204,    ORIENT_UP, 0, 0, 0, 0, 0, 19 << 5 |  3, 12 << 5 |  4, 0, 0
.hword 13,                    86,  0, 0,   32, 10000,    ORIENT_UP, 0, 0, 0, 0, 0, 19 << 5 | 24, 12 << 5 | 10, 0, 0
.hword 14,                    86,  0, 0,   33, 10000,    ORIENT_UP, 0, 0, 0, 0, 0, 19 << 5 | 24, 12 << 5 | 11, 0, 0
.hword 15,                    86,  0, 0,   34, 10000,    ORIENT_UP, 0, 0, 0, 0, 0, 19 << 5 |  5, 11 << 5 | 16, 0, 0
.hword 16,                    86,  0, 0,   35, 10000,    ORIENT_UP, 0, 0, 0, 0, 0, 19 << 5 |  5, 11 << 5 | 17, 0, 0
.hword 17,                    86,  0, 0,   36, 10000,    ORIENT_UP, 0, 0, 0, 0, 0, 19 << 5 |  6, 10 << 5 | 19, 0, 0
.hword 18,                    86,  0, 0,   37, 10000,    ORIENT_UP, 0, 0, 0, 0, 0, 19 << 5 |  6, 10 << 5 | 20, 0, 0
.hword 19, SPRITE_ACETRAINERMALE, 20, 4,    0,  3562, ORIENT_RIGHT, 2, 2, 0, 4, 0, 19 << 5 |  4, 11 << 5 | 25, 0, 0
.hword 20, SPRITE_ACETRAINERFEMALE,  9, 1,    0,  3593,  ORIENT_DOWN, 4, 0, 0, 0, 0, 19 << 5 | 20, 12 << 5 |  8, 0, 0
.hword 21, SPRITE_ACETRAINERFEMALE, 14, 1,    0,  3553,    ORIENT_UP, 4, 0, 0, 0, 0, 19 << 5 | 20, 12 << 5 | 13, 0, 0
.hword 22,        SPRITE_PSYCHIC, 16, 1,    0,  3584,  ORIENT_LEFT, 2, 0, 0, 0, 0, 19 << 5 | 23, 12 << 5 |  8, 0, 0
.hword 23, SPRITE_ACETRAINERMALE, 16, 1,    0,  3556,  ORIENT_LEFT, 3, 0, 0, 0, 0, 19 << 5 | 19, 10 << 5 |  2, 0, 0
.hword 24, SPRITE_ACETRAINERFEMALE, 17, 1,    0,  3572, ORIENT_RIGHT, 4, 0, 0, 0, 0, 19 << 5 | 11, 10 << 5 | 20, 0, 0
.hword  0,       SPRITE_SIGNPOST,  0, 0,  450, 65535,    ORIENT_UP, 6, 0, 0, 0, 0, 20 << 5 |  6, 10 << 5 | 18, 0, 0
.hword 26, SPRITE_ACETRAINERMALE, 28, 1,    0,  3592, ORIENT_RIGHT, 2, 0, 0, 2, 6, 19 << 5 |  4, 12 << 5 | 13, 0, 0
.hword 27, SPRITE_ACETRAINERMALE, 14, 1,    0,  3566,    ORIENT_UP, 3, 0, 0, 0, 0, 19 << 5 | 16, 11 << 5 | 15, 0, 0
.hword 28,                    86,  0, 0,   38, 10000,    ORIENT_UP, 0, 0, 0, 0, 0, 19 << 5 | 26, 11 << 5 |  9, 0, 0
.hword 29,                    86,  0, 0,   39, 10000,    ORIENT_UP, 0, 0, 0, 0, 0, 19 << 5 | 27, 11 << 5 |  9, 0, 0
.hword 30,       SPRITE_POKEBALL,  0, 0, 1321,  7306,    ORIENT_UP, 0, 0, 0, 0, 0, 19 << 5 | 22, 10 << 5 | 18, 0, 0

.word 3 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword 19 << 5 | 22, 12 << 5 | 29, 193, 1, 0, 0
.hword 19 << 5 | 23, 12 << 5 | 29, 193, 1, 0, 0
.hword 19 << 5 |  9, 11 << 5 | 16, 498, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
