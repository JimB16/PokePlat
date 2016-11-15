.include "source/macros_asm.s"

.word 3 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8181, 2, 614, 0, 582, 0, 0, 0, 4, 0
.hword 8182, 2, 659, 0, 583, 0, 0, 0, 4, 0
.hword 8183, 2, 643, 0, 591, 0, 0, 0, 4, 0

.word 29 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    51, 46, 1,    0,  3127,  ORIENT_LEFT, 3, 0, 0, 0, 0, 18 << 5 | 31, 18 << 5 |  8, 0, 0
.hword  1,                    51, 16, 1,    0,  3126,  ORIENT_LEFT, 3, 0, 0, 0, 0, 19 << 5 | 13, 18 << 5 |  2, 0, 0
.hword  2,                    51, 16, 1,    0,  3128,  ORIENT_LEFT, 2, 0, 0, 0, 0, 20 << 5 |  3, 18 << 5 |  6, 0, 0
.hword  3,                    45, 36, 1,  627,  3129,  ORIENT_DOWN, 3, 0, 0, 9, 4, 20 << 5 | 14, 18 << 5 | 13, 0, 0
.hword  4,                    50, 15, 1,    0,  3303,  ORIENT_DOWN, 3, 0, 0, 0, 0, 18 << 5 | 13, 18 << 5 | 14, 0, 0
.hword  5, SPRITE_ACETRAINERMALE, 14, 1,    0,  3277,    ORIENT_UP, 2, 0, 0, 0, 0, 20 << 5 |  8, 18 << 5 | 23, 0, 0
.hword  6, SPRITE_ACETRAINERFEMALE, 15, 1,    0,  3286,  ORIENT_DOWN, 2, 0, 0, 0, 0, 20 << 5 |  8, 18 << 5 | 20, 0, 0
.hword  7,                    45, 37, 1,  629,  3306,    ORIENT_UP, 3, 0, 0, 5, 3, 18 << 5 | 27, 18 << 5 | 17, 0, 0
.hword  8,      SPRITE_GUIDEPOST,  0, 0,    0,     3,    ORIENT_UP, 6, 0, 0, 0, 0, 18 << 5 |  4, 18 << 5 | 20, 0, 0
.hword  9,      SPRITE_GUIDEPOST,  0, 0,    0,     4,    ORIENT_UP, 1, 0, 0, 0, 0, 20 << 5 | 18, 18 << 5 | 20, 0, 0
.hword 10,                    86,  0, 0,   32, 10000,    ORIENT_UP, 0, 0, 0, 0, 0, 19 << 5 |  3, 18 << 5 |  2, 0, 0
.hword 11,                    86,  0, 0,   33, 10000,    ORIENT_UP, 0, 0, 0, 0, 0, 19 << 5 | 13, 18 << 5 | 18, 0, 0
.hword 12,                    86,  0, 0,   34, 10000,    ORIENT_UP, 0, 0, 0, 0, 0, 19 << 5 | 26, 18 << 5 |  2, 0, 0
.hword 13,                    86,  0, 0,   35, 10000,    ORIENT_UP, 0, 0, 0, 0, 0, 20 << 5 | 17, 18 << 5 | 12, 0, 0
.hword 14,                    86,  0, 0,   36, 10000,    ORIENT_UP, 0, 0, 0, 0, 0, 20 << 5 | 17, 18 << 5 | 13, 0, 0
.hword 15,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 70, 0, 0, 0, 0, 19 << 5 | 20, 18 << 5 | 16, 0, 0
.hword 16,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 71, 0, 0, 0, 0, 19 << 5 | 21, 18 << 5 | 16, 0, 0
.hword 17,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 72, 0, 0, 0, 0, 20 << 5 | 20, 18 << 5 | 17, 0, 0
.hword 18,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 73, 0, 0, 0, 0, 20 << 5 | 21, 18 << 5 | 17, 0, 0
.hword 19,       SPRITE_POKEBALL,  0, 0, 1119,  7105,    ORIENT_UP, 0, 0, 0, 0, 0, 19 << 5 | 18, 18 << 5 | 23, 0, 0
.hword 20,       SPRITE_POKEBALL,  0, 0, 1121,  7107,    ORIENT_UP, 0, 0, 0, 0, 0, 19 << 5 | 29, 18 << 5 | 20, 0, 0
.hword 21,       SPRITE_POKEBALL,  0, 0, 1120,  7106,    ORIENT_UP, 0, 0, 0, 0, 0, 18 << 5 | 24, 18 << 5 | 15, 0, 0
.hword 22,       SPRITE_POKEBALL,  0, 0, 1122,  7108,    ORIENT_UP, 0, 0, 0, 0, 0, 20 << 5 | 21, 18 << 5 | 11, 0, 0
.hword 23,                    51, 14, 0,    0,     2,    ORIENT_UP, 0, 0, 0, 0, 0, 19 << 5 |  3, 18 << 5 | 22, 0, 0
.hword 24,       SPRITE_POKEBALL,  0, 0, 1118,  7104,    ORIENT_UP, 0, 0, 0, 0, 0, 19 << 5 | 12, 18 << 5 |  4, 0, 0
.hword 25,                    45, 36, 0,  626,     5,  ORIENT_DOWN, 3, 0, 0, 9, 4, 20 << 5 | 14, 18 << 5 | 13, 0, 0
.hword 26,                    45, 37, 0,  628,     6,    ORIENT_UP, 3, 0, 0, 5, 3, 18 << 5 | 27, 18 << 5 | 17, 0, 0
.hword 27,                    96,  0, 0,    0,     8,    ORIENT_UP, 0, 0, 0, 0, 0, 19 << 5 | 11, 18 << 5 |  9, 0, 0
.hword 28,       SPRITE_POKEBALL,  0, 0, 1285,  7270,    ORIENT_UP, 0, 0, 0, 0, 0, 20 << 5 | 20, 18 << 5 |  0, 0, 0

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword 20 << 5 | 31, 18 << 5 | 22, 149, 1, 0, 0
.hword 20 << 5 | 31, 18 << 5 | 23, 149, 1, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
