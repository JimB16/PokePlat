.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 8 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,       SPRITE_POKEBALL,  0, 0, 1225,  7211,    ORIENT_UP, 0, 0, 0, 0, 0, 23 << 5 |  4,  7 << 5 | 24, 0, 0
.hword  1,       SPRITE_POKEBALL,  0, 0, 1224,  7210,    ORIENT_UP, 0, 0, 0, 0, 0, 23 << 5 | 26,  7 << 5 |  8, 0, 0
.hword  2, SPRITE_ACETRAINERMALE, 46, 1,    0,  3557, ORIENT_RIGHT, 1, 0, 0, 0, 0, 23 << 5 | 13,  7 << 5 | 24, 0, 0
.hword  3,                    93,  0, 0,    0,     2,    ORIENT_UP, 0, 0, 0, 0, 0, 23 << 5 | 12,  7 << 5 |  8, 0, 0
.hword  4,                   213, 15, 0,  558,     0,  ORIENT_DOWN, 0, 0, 0, 0, 0, 23 << 5 | 15,  7 << 5 |  8, 0, 0
.hword  5,                   144, 17, 0,  557,     0, ORIENT_RIGHT, 0, 0, 0, 0, 0, 23 << 5 | 14,  7 << 5 |  9, 0, 0
.hword  6,                   124, 14, 0,  556,     0,    ORIENT_UP, 0, 0, 0, 0, 0, 23 << 5 |  6,  7 << 5 |  8, 0, 0
.hword  7,                   124, 14, 0,  556,     0,    ORIENT_UP, 0, 0, 0, 0, 0, 23 << 5 |  6,  7 << 5 |  9, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword 23 << 5 | 14,  7 << 5 |  7, 263, 0, 0, 0

.word 1 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 3, 23 << 5 | 16,  7 << 5 | 11, 1, 1, 0, 0, 16544
