.include "source/macros_asm.s"

.word 13 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 1, 0, 12, 0, 6, 0, 0, 0, 1, 0
.hword 2, 0, 13, 0, 7, 0, 0, 0, 2, 0
.hword 3, 0, 7, 0, 7, 0, 0, 0, 1, 0
.hword 4, 0, 7, 0, 8, 0, 0, 0, 1, 0
.hword 5, 0, 13, 0, 9, 0, 0, 0, 2, 0
.hword 6, 0, 8, 0, 6, 0, 0, 0, 2, 0
.hword 7, 0, 8, 0, 7, 0, 0, 0, 2, 0
.hword 8, 0, 8, 0, 8, 0, 0, 0, 2, 0
.hword 9, 0, 8, 0, 9, 0, 0, 0, 2, 0
.hword 10, 0, 13, 0, 6, 0, 0, 0, 2, 0
.hword 11, 0, 12, 0, 8, 0, 0, 0, 1, 0
.hword 12, 0, 12, 0, 9, 0, 0, 0, 1, 0
.hword 21, 0, 10, 0, 2, 0, 0, 0, 0, 0

.word 9 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   163,  0, 0,    0,    13,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  2,  0 << 5 |  4, 0, 0
.hword  1,         SPRITE_BEAUTY,  3, 0,    0,    14,  ORIENT_LEFT, 0, 0, 0, 1, 0,  0 << 5 | 10,  0 << 5 | 11, 0, 0
.hword  2,                    15, 11, 0,    0,    15, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  4,  0 << 5 |  8, 0, 0
.hword  3,         SPRITE_FATGUY,  0, 0,    0,    16, ORIENT_RIGHT, 0, 0, 0, 1, 0,  0 << 5 |  6,  0 << 5 |  6, 0, 0
.hword  4,         SPRITE_ROCKER,  0, 0,    0,    19, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 | 11,  0 << 5 |  7, 0, 0
.hword  5,                    40,  8, 0,    0,    17,  ORIENT_LEFT, 0, 0, 0, 1, 0,  0 << 5 |  7,  0 << 5 |  3, 0, 0
.hword  6,         SPRITE_BEAUTY,  0, 0,    0,    18, ORIENT_RIGHT, 0, 0, 0, 1, 0,  0 << 5 |  6,  0 << 5 |  9, 0, 0
.hword  7,                    15,  0, 0,    0,    20,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 14,  0 << 5 |  8, 0, 0
.hword  8,                   213, 16, 0,  419,    22,  ORIENT_LEFT, 0, 0, 0, 1, 0,  0 << 5 |  9,  0 << 5 |  8, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  5,  0 << 5 | 11, 132, 2, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
