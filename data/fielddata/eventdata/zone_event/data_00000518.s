.include "source/macros_asm.s"

.word 1 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 10455, 0, 16, 0, 5, 0, 0, 0, 0, 0

.word 12 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   231, 15, 0,    0,     1,  ORIENT_DOWN, 0, 0, 0, 1, 1,  0 << 5 | 14,  0 << 5 |  5, 0, 0
.hword  1,                   232, 15, 0,    0,     6,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 15,  0 << 5 |  5, 0, 0
.hword  2,        SPRITE_PSYCHIC,  6, 0,    0,     9, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 | 19,  0 << 5 |  9, 0, 0
.hword  3,                    60,  9, 0,    0,    11,  ORIENT_DOWN, 0, 0, 0, 3, 0,  0 << 5 |  2,  0 << 5 | 12, 0, 0
.hword  4,         SPRITE_CAMPER,  7, 0,    0,    12, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  2,  0 << 5 | 14, 0, 0
.hword  5,         SPRITE_BEAUTY,  6, 0,    0,    13, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  4,  0 << 5 | 14, 0, 0
.hword  6,                    40,  3, 0,    0,     7,  ORIENT_LEFT, 0, 0, 0, 0, 1,  0 << 5 | 12,  0 << 5 |  3, 0, 0
.hword  7,     SPRITE_BUGCATCHER,  3, 0,    0,    10,  ORIENT_LEFT, 0, 0, 0, 3, 0,  0 << 5 |  7,  0 << 5 | 11, 0, 0
.hword  8,                    48,  0, 0,    0,    14, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 | 21,  0 << 5 | 14, 0, 0
.hword  9,                    55,  7, 0,    0,     8, ORIENT_RIGHT, 0, 0, 0, 1, 0,  0 << 5 | 19,  0 << 5 |  6, 0, 0
.hword 10,          SPRITE_HIKER,  0, 0,    0,    16,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 13,  0 << 5 |  8, 0, 0
.hword 11,          SPRITE_HIKER,  0, 0,    0,    17,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 13,  0 << 5 |  9, 0, 0

.word 3 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  1,  0 << 5 |  6, 559, 14, 0, 0
.hword  0 << 5 |  1,  0 << 5 |  5, 559, 14, 0, 0
.hword  0 << 5 |  1,  0 << 5 |  7, 559, 14, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
