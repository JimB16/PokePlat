.include "source/macros_asm.s"

.word 3 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 44, 0, 11, 0, 7, 0, 0, 0, 4, 0
.hword 44, 0, 13, 0, 7, 0, 0, 0, 4, 0
.hword 44, 0, 12, 0, 8, 0, 0, 0, 4, 0

.word 17 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   102, 15, 0,  680,     3,  ORIENT_DOWN, 0, 0, 0, 1, 0,  0 << 5 |  7,  0 << 5 |  6, 0, 0
.hword  1,          SPRITE_BARRY,  5, 0,  679,     2,  ORIENT_LEFT, 0, 0, 0, 1, 0,  0 << 5 |  4,  0 << 5 |  3, 0, 0
.hword  2,                    99, 14, 0,  681,     4,    ORIENT_UP, 0, 0, 0, 1, 0,  0 << 5 | 17,  0 << 5 |  4, 0, 0
.hword  3,                   140, 17, 0,  683,     5, ORIENT_RIGHT, 0, 0, 0, 1, 0,  0 << 5 | 11,  0 << 5 |  4, 0, 0
.hword  4,          SPRITE_ROARK, 15, 0,  684,     6,  ORIENT_DOWN, 0, 0, 0, 1, 0,  0 << 5 | 18,  0 << 5 | 10, 0, 0
.hword  5,                   127,  3, 0,  686,     7,  ORIENT_DOWN, 0, 0, 0, 1, 1,  0 << 5 |  8,  0 << 5 |  6, 0, 0
.hword  6,                   130,  2, 0,  688,     8,    ORIENT_UP, 0, 0, 0, 1, 1,  0 << 5 |  6,  0 << 5 |  6, 0, 0
.hword  7,                   129,  2, 0,  689,     9, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  9,  0 << 5 |  6, 0, 0
.hword  8,                   132,  3, 0,  692,    11,  ORIENT_DOWN, 0, 0, 0, 1, 1,  0 << 5 |  9,  0 << 5 | 11, 0, 0
.hword  9,                   128, 14, 0,  691,    10,    ORIENT_UP, 0, 0, 0, 1, 0,  0 << 5 | 19,  0 << 5 |  4, 0, 0
.hword 10,                   131, 15, 0,  694,    12,  ORIENT_DOWN, 0, 0, 0, 1, 0,  0 << 5 |  6,  0 << 5 |  6, 0, 0
.hword 11,                   133,  7, 0,  695,    13,  ORIENT_LEFT, 0, 0, 0, 1, 0,  0 << 5 | 13,  0 << 5 |  4, 0, 0
.hword 12,                   138, 16, 0,  696,    14,  ORIENT_LEFT, 0, 0, 0, 1, 0,  0 << 5 |  3,  0 << 5 |  5, 0, 0
.hword 13,                   136,  6, 0,  697,    15,  ORIENT_LEFT, 0, 0, 0, 1, 0,  0 << 5 | 14,  0 << 5 |  4, 0, 0
.hword 14,  SPRITE_MALESCHOOLKID, 17, 0,  602,    42, ORIENT_RIGHT, 0, 0, 0, 1, 0,  0 << 5 |  9,  0 << 5 |  6, 0, 0
.hword 15,    SPRITE_GENERICMALE, 14, 0,  709,     0,    ORIENT_UP, 0, 0, 0, 1, 1,  0 << 5 | 10,  0 << 5 |  8, 0, 0
.hword 16,                   183,  0, 0,  711,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 12,  0 << 5 |  7, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 11,  0 << 5 | 11, 457, 0, 0, 0

.word 5 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 17,  0 << 5 | 10,  0 << 5 |  7, 1, 1, 0, 6, 16399
.hword 18,  0 << 5 | 10,  0 << 5 |  7, 1, 1, 0, 8, 16399
.hword 19,  0 << 5 | 10,  0 << 5 |  7, 1, 1, 0, 10, 16399
.hword 20,  0 << 5 | 10,  0 << 5 |  7, 1, 1, 0, 12, 16399
.hword 43,  0 << 5 | 11,  0 << 5 | 11, 1, 1, 0, 1, 16545
