.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 13 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,  SPRITE_GENERICFEMALE,  2, 0,    0,     5,  ORIENT_DOWN, 0, 0, 0, 0, 0,  5 << 5 | 19, 20 << 5 | 21, 0, 5
.hword  1,           SPRITE_LASS,  5, 0,    0,     4, ORIENT_RIGHT, 0, 0, 0, 1, 0,  5 << 5 | 10, 20 << 5 |  5, 0, 5
.hword  2,  SPRITE_MALESCHOOLKID,  3, 0,    0,     3,  ORIENT_DOWN, 0, 0, 0, 1, 1,  5 << 5 | 16, 20 << 5 | 16, 0, 5
.hword  3,         SPRITE_BEAUTY, 15, 0,    0,    11,  ORIENT_DOWN, 0, 0, 0, 1, 1,  5 << 5 | 10, 20 << 5 | 19, 0, 5
.hword  4,           SPRITE_LASS, 16, 0,    0,     6,  ORIENT_LEFT, 0, 0, 0, 0, 0,  5 << 5 | 23, 20 << 5 | 11, 0, 5
.hword  5,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 0, 0, 0, 0, 0,  5 << 5 | 18, 20 << 5 | 11, 0, 0
.hword  6,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 1, 0, 0, 0, 0,  5 << 5 | 22, 20 << 5 | 11, 0, 0
.hword  7,                   124, 17, 0,  417,     2, ORIENT_RIGHT, 0, 0, 0, 1, 4,  5 << 5 |  2, 20 << 5 |  1, 0, 5
.hword  8,                   124, 16, 0,  417,     2,  ORIENT_LEFT, 0, 0, 0, 1, 4,  5 << 5 |  3, 20 << 5 |  1, 0, 5
.hword  9,       SPRITE_SIGNPOST,  0, 0,    0,     8,    ORIENT_UP, 3, 0, 0, 0, 0,  5 << 5 | 13, 20 << 5 | 19, 0, 0
.hword 10,                    93,  0, 0,    0,     9,    ORIENT_UP, 0, 0, 0, 0, 0,  5 << 5 | 17, 20 << 5 | 11, 0, 0
.hword 11,                    93,  0, 0,    0,    10,    ORIENT_UP, 3, 0, 0, 0, 0,  5 << 5 | 29, 20 << 5 | 15, 0, 0
.hword 12,         SPRITE_CAMPER,  2, 0,    0,     7,  ORIENT_DOWN, 0, 0, 0, 1, 1,  5 << 5 |  6, 20 << 5 | 10, 0, 0

.word 9 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  5 << 5 | 24, 20 << 5 | 17, 427, 0, 0, 0
.hword  5 << 5 | 16, 20 << 5 | 26, 428, 0, 0, 0
.hword  5 << 5 | 20, 20 << 5 | 11, 430, 0, 0, 0
.hword  5 << 5 | 24, 20 << 5 | 26, 431, 0, 0, 0
.hword  5 << 5 | 11, 20 << 5 | 14, 432, 0, 0, 0
.hword  5 << 5 | 20, 19 << 5 |  4, 256, 0, 0, 0
.hword  5 << 5 | 21, 19 << 5 |  4, 256, 1, 0, 0
.hword  5 << 5 |  2, 20 << 5 |  1, 256, 3, 0, 0
.hword  5 << 5 |  3, 20 << 5 |  1, 256, 4, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
