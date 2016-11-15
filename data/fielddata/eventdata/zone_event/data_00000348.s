.include "source/macros_asm.s"

.word 5 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8039, 2, 549, 0, 573, 0, 0, 0, 4, 0
.hword 8149, 2, 555, 0, 562, 0, 0, 0, 4, 0
.hword 8154, 2, 565, 0, 607, 0, 0, 0, 4, 0
.hword 8189, 2, 566, 0, 571, 0, 0, 0, 4, 0
.hword 8202, 2, 573, 0, 561, 0, 0, 0, 4, 0

.word 31 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,      SPRITE_LITTLEBOY, 54, 2,    0,  3487,  ORIENT_DOWN, 1, 0, 0, 0, 0, 17 << 5 | 18, 17 << 5 | 26, 0, 0
.hword  1,      SPRITE_LITTLEBOY, 54, 2,    0,  3488,  ORIENT_DOWN, 1, 0, 0, 0, 0, 17 << 5 |  6, 17 << 5 | 27, 0, 0
.hword  2,     SPRITE_LITTLEGIRL, 15, 1,    0,  5064,  ORIENT_DOWN, 3, 0, 0, 0, 0, 17 << 5 | 14, 19 << 5 |  1, 0, 0
.hword  3,     SPRITE_LITTLEGIRL, 15, 1,    0,  3064,  ORIENT_DOWN, 3, 0, 0, 0, 0, 17 << 5 | 13, 19 << 5 |  1, 0, 0
.hword  4,      SPRITE_LITTLEBOY, 54, 2,    0,  3489,  ORIENT_DOWN, 1, 0, 0, 0, 0, 17 << 5 | 28, 17 << 5 | 18, 0, 0
.hword  5,                    45, 20, 1,  625,  3305,  ORIENT_LEFT, 2, 0, 0, 7, 0, 17 << 5 | 27, 19 << 5 | 16, 0, 0
.hword  6,    SPRITE_GENERICMALE, 16, 1,    0,  3055,  ORIENT_LEFT, 2, 0, 0, 0, 0, 17 << 5 | 10, 18 << 5 | 28, 0, 0
.hword  7,  SPRITE_GENERICFEMALE,  8, 1,    0,  3056,  ORIENT_DOWN, 3, 0, 0, 0, 0, 17 << 5 | 19, 18 << 5 | 25, 0, 0
.hword  8,                    42, 16, 1,    0,  5289,  ORIENT_LEFT, 1, 0, 0, 0, 0, 17 << 5 | 19, 19 << 5 |  8, 0, 0
.hword  9,                    41, 16, 1,    0,  3289,  ORIENT_LEFT, 1, 0, 0, 0, 0, 17 << 5 | 19, 19 << 5 |  7, 0, 0
.hword 10,      SPRITE_GUIDEPOST,  0, 0,    0,     5,    ORIENT_UP, 4, 0, 0, 0, 0, 17 << 5 | 19, 19 << 5 | 23, 0, 0
.hword 11,       SPRITE_POKEBALL,  0, 0, 1114,  7100,    ORIENT_UP, 0, 0, 0, 0, 0, 17 << 5 |  2, 18 << 5 |  2, 0, 0
.hword 12,       SPRITE_POKEBALL,  0, 0, 1113,  7099,    ORIENT_UP, 0, 0, 0, 0, 0, 17 << 5 | 10, 18 << 5 | 22, 0, 0
.hword 13,                    93,  0, 0,    0,     4,    ORIENT_UP, 0, 0, 0, 0, 0, 17 << 5 | 20, 18 << 5 | 20, 0, 0
.hword 14,       SPRITE_POKEBALL,  0, 0, 1116,  7102,    ORIENT_UP, 0, 0, 0, 0, 0, 17 << 5 | 31, 17 << 5 |  2, 0, 0
.hword 15,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 38, 0, 0, 0, 0, 17 << 5 | 26, 19 << 5 | 19, 0, 0
.hword 16,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 39, 0, 0, 0, 0, 17 << 5 | 27, 19 << 5 | 19, 0, 0
.hword 17,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 40, 0, 0, 0, 0, 17 << 5 | 28, 19 << 5 | 19, 0, 0
.hword 18,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 41, 0, 0, 0, 0, 17 << 5 | 29, 19 << 5 | 19, 0, 0
.hword 19,                    74, 15, 0,  432,     1,  ORIENT_DOWN, 3, 0, 0, 0, 0, 17 << 5 | 17, 18 << 5 | 11, 0, 0
.hword 20,                   138, 15, 0,  433,     0,  ORIENT_DOWN, 3, 0, 0, 0, 0, 17 << 5 | 17, 18 << 5 |  4, 0, 0
.hword 21, SPRITE_ACETRAINERFEMALE, 14, 0,    0,     3,    ORIENT_UP, 0, 0, 0, 0, 0, 17 << 5 | 22, 19 << 5 |  4, 0, 0
.hword 22,       SPRITE_POKEBALL,  0, 0, 1117,  7103,    ORIENT_UP, 0, 0, 0, 0, 0, 17 << 5 | 18, 17 << 5 | 21, 0, 0
.hword  5,                    93,  0, 0,  433, 65535,    ORIENT_UP, 0, 0, 0, 0, 0, 17 << 5 | 12, 20 << 5 |  5, 0, 0
.hword 24,                    41, 17, 1,    0,  3291, ORIENT_RIGHT, 3, 0, 0, 0, 0, 17 << 5 | 11, 19 << 5 | 19, 0, 0
.hword  8,      SPRITE_GUIDEPOST,  0, 0,  382, 65535,    ORIENT_UP, 6, 0, 0, 0, 0, 18 << 5 |  4, 18 << 5 | 20, 0, 0
.hword 26,                    74, 15, 0,  432,     1,  ORIENT_DOWN, 3, 0, 0, 0, 0, 17 << 5 | 16, 18 << 5 | 11, 0, 0
.hword 27,                    74, 15, 0,  432,     1,  ORIENT_DOWN, 3, 0, 0, 0, 0, 17 << 5 | 17, 18 << 5 |  9, 0, 0
.hword 28,                    74, 15, 0,  432,     1,  ORIENT_DOWN, 3, 0, 0, 0, 0, 17 << 5 | 16, 18 << 5 | 10, 0, 0
.hword 23,                    51,  6, 0,  363, 65535,  ORIENT_LEFT, 0, 0, 0, 0, 0, 17 << 5 | 26, 16 << 5 | 23, 0, 0
.hword 30,                    45, 20, 0,  624,     6,  ORIENT_LEFT, 2, 0, 0, 7, 0, 17 << 5 | 27, 19 << 5 | 16, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword 17 << 5 | 22, 18 << 5 | 15, 492, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
