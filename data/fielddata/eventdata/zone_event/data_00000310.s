.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 14 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    15,  0, 0,    0,     9,  ORIENT_DOWN, 0, 0, 0, 0, 0,  1 << 5 |  2,  1 << 5 |  7, 0, 0
.hword  1,                    93,  0, 0,    0,     3,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 22,  1 << 5 |  3, 0, 0
.hword  2,                    81,  0, 0,    0,     8,  ORIENT_LEFT, 0, 0, 0, 1, 1,  1 << 5 |  3,  1 << 5 |  7, 0, 0
.hword  3,                    93,  0, 0,    0,     4,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 22,  0 << 5 | 13, 0, 0
.hword  4,         SPRITE_BEAUTY,  0, 0,    0,     5,  ORIENT_LEFT, 0, 0, 0, 0, 1,  0 << 5 | 29,  0 << 5 | 15, 0, 0
.hword  5,       SPRITE_OLDWOMAN,  3, 0,    0,     7,  ORIENT_LEFT, 0, 0, 0, 1, 0,  0 << 5 | 29,  1 << 5 |  5, 0, 0
.hword  6,  SPRITE_MALESCHOOLKID,  0, 0,    0,     6, ORIENT_RIGHT, 0, 0, 0, 0, 1,  0 << 5 | 28,  0 << 5 | 15, 0, 0
.hword  7,                    82,  3, 0,    0,    10,  ORIENT_LEFT, 0, 0, 0, 0, 2,  0 << 5 | 15,  1 << 5 |  8, 0, 0
.hword  8,                    51,  3, 0,    0,    12,    ORIENT_UP, 0, 0, 0, 1, 1,  0 << 5 | 14,  1 << 5 | 15, 0, 0
.hword  9, SPRITE_ACETRAINERMALE,  3, 0,    0,    11,    ORIENT_UP, 0, 0, 0, 1, 1,  0 << 5 | 26,  1 << 5 | 15, 0, 0
.hword 10,       SPRITE_POKEBALL,  0, 0, 1259,  7245,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 10,  1 << 5 | 20, 0, 0
.hword 11,                   169, 14, 0,  630,     0,    ORIENT_UP, 0, 0, 0, 1, 0,  0 << 5 | 23,  1 << 5 |  8, 0, 0
.hword 12,          SPRITE_BARRY, 14, 0,  631,     0,    ORIENT_UP, 0, 0, 0, 1, 0,  0 << 5 | 24,  1 << 5 |  8, 0, 0
.hword 13,                    93,  0, 0,    0,     3,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 27,  1 << 5 |  3, 0, 0

.word 4 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 20,  1 << 5 |  1, 323, 0, 0, 0
.hword  0 << 5 | 29,  1 << 5 |  1, 323, 1, 0, 0
.hword  0 << 5 | 24,  1 << 5 | 21, 192, 0, 0, 0
.hword  0 << 5 | 25,  1 << 5 | 21, 192, 0, 0, 0

.word 1 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 1,  0 << 5 | 23,  1 << 5 |  0, 4, 1, 0, 0, 16654
