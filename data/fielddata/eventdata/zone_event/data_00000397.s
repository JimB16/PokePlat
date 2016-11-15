.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 15 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,      SPRITE_YOUNGSTER,  3, 0,    0,     4,  ORIENT_LEFT, 0, 0, 0, 1, 1,  5 << 5 | 27, 26 << 5 | 23, 0, 1
.hword  1,    SPRITE_GENERICMALE,  2, 0,    0,     5,  ORIENT_DOWN, 0, 0, 0, 2, 0,  5 << 5 | 11, 26 << 5 | 22, 0, 1
.hword  2,  SPRITE_GENERICFEMALE,  8, 0,    0,     6,  ORIENT_DOWN, 0, 0, 0, 0, 0,  5 << 5 | 23, 26 << 5 | 20, 0, 1
.hword  3,          SPRITE_BARRY, 15, 0,  407,     0,  ORIENT_DOWN, 0, 0, 0, 0, 0,  5 << 5 |  8, 26 << 5 | 10, 0, 1
.hword  4,                   101, 16, 0,  375, 10300,  ORIENT_LEFT, 0, 0, 0, 0, 0,  5 << 5 |  8, 26 << 5 | 13, 0, 1
.hword  5,                    93,  0, 0,    0,     9,    ORIENT_UP, 0, 0, 0, 0, 0,  5 << 5 |  5, 26 << 5 | 11, 0, 0
.hword  6,                    93,  0, 0,    0,    10,    ORIENT_UP, 0, 0, 0, 0, 0,  5 << 5 | 14, 26 << 5 | 22, 0, 0
.hword  7,       SPRITE_SIGNPOST,  0, 0,    0,     8,    ORIENT_UP, 2, 0, 0, 0, 0,  5 << 5 | 22, 26 << 5 | 22, 0, 0
.hword  2,      SPRITE_GUIDEPOST,  0, 0,  391, 65535,    ORIENT_UP, 4, 0, 0, 0, 0,  5 << 5 | 19, 27 << 5 |  2, 0, 0
.hword  4,      SPRITE_GUIDEPOST,  0, 0,  343, 65535,    ORIENT_UP, 4, 0, 0, 0, 0,  5 << 5 | 23, 25 << 5 | 25, 0, 0
.hword  4,      SPRITE_GUIDEPOST,  0, 0,  342, 65535,    ORIENT_UP, 1, 0, 0, 0, 0,  4 << 5 | 23, 26 << 5 | 11, 0, 0
.hword  9,  SPRITE_MALESCHOOLKID, 16, 0,  342, 65535,  ORIENT_LEFT, 0, 0, 0, 0, 0,  4 << 5 | 25, 26 << 5 | 15, 0, 0
.hword 12,                    93,  0, 0,    0,    12,    ORIENT_UP, 0, 0, 0, 0, 0,  5 << 5 | 20, 26 << 5 | 10, 0, 0
.hword 13,                    93,  0, 0,    0,    11,    ORIENT_UP, 0, 0, 0, 0, 0,  5 << 5 | 25, 26 << 5 | 10, 0, 0
.hword 14,                    99, 15, 0,  708,     0,  ORIENT_DOWN, 0, 0, 0, 0, 0,  5 << 5 |  8, 26 << 5 | 10, 0, 0

.word 5 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  5 << 5 | 27, 26 << 5 | 10, 419, 0, 0, 0
.hword  5 << 5 | 17, 26 << 5 | 10, 420, 0, 0, 0
.hword  5 << 5 |  8, 26 << 5 | 10, 422, 0, 0, 0
.hword  5 << 5 | 16, 26 << 5 | 22, 423, 0, 0, 0
.hword  5 << 5 |  7, 26 << 5 | 22, 425, 0, 0, 0

.word 1 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 2,  5 << 5 |  4, 26 << 5 | 10, 1, 6, 0, 0, 16497
