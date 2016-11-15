.include "source/macros_asm.s"

.word 1 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8145, 2, 822, 0, 445, 0, 0, 0, 4, 0

.word 19 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    86,  0, 0,   34, 10000,    ORIENT_UP, 0, 0, 0, 0, 0, 25 << 5 | 20, 13 << 5 | 23, 0, 0
.hword  1,      SPRITE_GUIDEPOST,  0, 0,    0,     2,    ORIENT_UP, 11, 0, 0, 0, 0, 25 << 5 |  0, 13 << 5 | 18, 0, 0
.hword  2,                    15,  3, 0,    0,     1, ORIENT_RIGHT, 0, 0, 0, 0, 0, 25 << 5 | 14, 13 << 5 | 15, 0, 0
.hword  3,                    86,  0, 0,   33, 10000,    ORIENT_UP, 0, 0, 0, 0, 0, 25 << 5 | 20, 13 << 5 | 22, 0, 0
.hword  4,                    86,  0, 0,   32, 10000,    ORIENT_UP, 0, 0, 0, 0, 0, 25 << 5 |  8, 13 << 5 | 11, 0, 0
.hword  5,                    86,  0, 0,   35, 10000,    ORIENT_UP, 0, 0, 0, 0, 0, 25 << 5 | 21, 13 << 5 | 21, 0, 0
.hword  6,                    86,  0, 0,   36, 10000,    ORIENT_UP, 0, 0, 0, 0, 0, 25 << 5 | 26, 13 << 5 | 21, 0, 0
.hword  7,       SPRITE_POKEBALL,  0, 0, 1243,  7229,    ORIENT_UP, 0, 0, 0, 0, 0, 25 << 5 | 16, 13 << 5 | 10, 0, 0
.hword  8,       SPRITE_POKEBALL,  0, 0, 1245,  7231,    ORIENT_UP, 0, 0, 0, 0, 0, 25 << 5 | 28, 13 << 5 |  4, 0, 0
.hword  9,       SPRITE_POKEBALL,  0, 0, 1244,  7230,    ORIENT_UP, 0, 0, 0, 0, 0, 25 << 5 | 28, 13 << 5 | 22, 0, 0
.hword 10,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 106, 0, 0, 0, 0, 25 << 5 | 10, 13 << 5 | 18, 0, 0
.hword 11,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 107, 0, 0, 0, 0, 25 << 5 | 11, 13 << 5 | 18, 0, 0
.hword 12,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 108, 0, 0, 0, 0, 25 << 5 | 12, 13 << 5 | 18, 0, 0
.hword 13,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 109, 0, 0, 0, 0, 25 << 5 | 13, 13 << 5 | 18, 0, 0
.hword 14, SPRITE_ACETRAINERMALE, 14, 1,    0,  3591,    ORIENT_UP, 3, 0, 0, 0, 0, 25 << 5 | 29, 13 << 5 | 17, 0, 0
.hword 15, SPRITE_ACETRAINERMALE, 46, 1,    0,  3565, ORIENT_RIGHT, 4, 0, 0, 0, 0, 24 << 5 | 28, 13 << 5 | 16, 0, 0
.hword 16, SPRITE_ACETRAINERFEMALE, 16, 1,    0,  3574,  ORIENT_LEFT, 4, 0, 0, 0, 0, 25 << 5 |  1, 13 << 5 | 16, 0, 0
.hword 17, SPRITE_ACETRAINERFEMALE, 15, 1,    0,  3577,  ORIENT_DOWN, 3, 0, 0, 0, 0, 25 << 5 | 20, 13 << 5 |  2, 0, 0
.hword  0,       SPRITE_SIGNPOST,  0, 0,  457, 65535,    ORIENT_UP, 7, 0, 0, 0, 0, 25 << 5 |  5, 14 << 5 |  3, 0, 0

.word 0 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
