.include "source/macros_asm.s"

.word 1 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8060, 2, 431, 0, 514, 0, 0, 0, 4, 0

.word 22 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0, SPRITE_ACETRAINERFEMALE, 17, 1,    0,  3080, ORIENT_RIGHT, 2, 0, 0, 0, 0, 13 << 5 | 16, 16 << 5 |  8, 0, 0
.hword  1,      SPRITE_LITTLEBOY, 53, 2,    0,  3079,  ORIENT_DOWN, 1, 0, 0, 0, 0, 13 << 5 |  9, 16 << 5 |  8, 0, 0
.hword  2,                    51, 20, 1,    0,  3078, ORIENT_RIGHT, 2, 0, 0, 9, 0, 13 << 5 | 12, 16 << 5 | 28, 0, 0
.hword  3,                    86,  0, 0,   32, 10000,    ORIENT_UP, 0, 0, 0, 0, 0, 13 << 5 |  7, 16 << 5 | 21, 0, 0
.hword  4,                    85,  0, 0,   33, 10001,    ORIENT_UP, 0, 0, 0, 0, 0, 13 << 5 | 22, 16 << 5 | 10, 0, 0
.hword  5,                    85,  0, 0,   34, 10001,    ORIENT_UP, 0, 0, 0, 0, 0, 13 << 5 | 15, 16 << 5 |  7, 0, 0
.hword  6,                    85,  0, 0,   35, 10001,    ORIENT_UP, 0, 0, 0, 0, 0, 13 << 5 | 13, 16 << 5 |  7, 0, 0
.hword  7,                    85,  0, 0,   36, 10001,    ORIENT_UP, 0, 0, 0, 0, 0, 13 << 5 | 19, 16 << 5 | 10, 0, 0
.hword  8,                    85,  0, 0,   37, 10001,    ORIENT_UP, 0, 0, 0, 0, 0, 13 << 5 | 14, 16 << 5 |  8, 0, 0
.hword  9,                    84,  0, 0,   38, 10002,    ORIENT_UP, 0, 0, 0, 0, 0, 13 << 5 | 11, 16 << 5 | 14, 0, 0
.hword 10,                    96,  0, 0,    0,     3,    ORIENT_UP, 0, 0, 0, 0, 0, 13 << 5 | 10, 16 << 5 | 18, 0, 0
.hword 11,      SPRITE_GUIDEPOST,  0, 0,    0,     2,    ORIENT_UP, 2, 0, 0, 0, 0, 13 << 5 |  4, 16 << 5 | 14, 0, 0
.hword 12,       SPRITE_POKEBALL,  0, 0, 1161,  7147,    ORIENT_UP, 0, 0, 0, 0, 0, 13 << 5 |  8, 16 << 5 |  2, 0, 0
.hword 13,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 46, 0, 0, 0, 0, 13 << 5 | 19, 16 << 5 | 12, 0, 0
.hword 14,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 47, 0, 0, 0, 0, 13 << 5 | 20, 16 << 5 | 12, 0, 0
.hword 15,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 48, 0, 0, 0, 0, 13 << 5 | 21, 16 << 5 | 12, 0, 0
.hword 16,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 49, 0, 0, 0, 0, 13 << 5 | 22, 16 << 5 | 12, 0, 0
.hword 17, SPRITE_ACETRAINERMALE, 15, 0,    0,     1,  ORIENT_DOWN, 0, 0, 0, 0, 0, 13 << 5 | 14, 16 << 5 | 17, 0, 0
.hword 18,                    85,  0, 0,   39, 10001,    ORIENT_UP, 0, 0, 0, 0, 0, 13 << 5 | 22, 16 << 5 |  8, 0, 0
.hword 19,                    50,  8, 1,    0,  3441,  ORIENT_DOWN, 2, 0, 0, 0, 0, 13 << 5 | 13, 16 << 5 | 13, 0, 0
.hword 20,      SPRITE_GUIDEPOST,  0, 0,    0,     4,    ORIENT_UP, 1, 0, 0, 0, 0, 13 << 5 | 24, 16 << 5 | 14, 0, 0
.hword 21,       SPRITE_POKEBALL,  0, 0, 1331,  7316,    ORIENT_UP, 0, 0, 0, 0, 0, 13 << 5 | 17, 16 << 5 | 23, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword 13 << 5 |  3, 16 << 5 | 15, 218, 3, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
