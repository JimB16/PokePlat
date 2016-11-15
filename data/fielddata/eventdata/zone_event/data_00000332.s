.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 12 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,     SPRITE_BUGCATCHER, 20, 1,    0,  3012,  ORIENT_LEFT, 1, 0, 0, 4, 0,  5 << 5 | 22, 21 << 5 | 13, 0, 5
.hword  1,  SPRITE_GENERICFEMALE,  9, 1,    0,  3013,  ORIENT_DOWN, 4, 0, 0, 0, 0,  5 << 5 | 17, 21 << 5 | 20, 0, 5
.hword  2,     SPRITE_LITTLEGIRL, 15, 1,    0,  3014,  ORIENT_DOWN, 3, 0, 0, 0, 0,  5 << 5 | 15, 21 << 5 |  7, 0, 5
.hword  3,     SPRITE_LITTLEGIRL, 15, 1,    0,  5014,  ORIENT_DOWN, 4, 0, 0, 0, 0,  5 << 5 | 16, 21 << 5 |  7, 0, 5
.hword  4,      SPRITE_YOUNGSTER,  5, 0,    0,     1, ORIENT_RIGHT, 0, 0, 0, 1, 0,  5 << 5 | 15, 21 << 5 | 28, 0, 5
.hword  5,      SPRITE_GUIDEPOST,  0, 0,    0,     3,    ORIENT_UP, 13, 0, 0, 0, 0,  5 << 5 | 17, 21 << 5 |  9, 0, 0
.hword  6,                    93,  0, 0,    0,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  5 << 5 | 10, 22 << 5 |  2, 0, 0
.hword  7,      SPRITE_YOUNGSTER,  5, 0,    0,     0,  ORIENT_LEFT, 0, 0, 0, 1, 0,  5 << 5 | 13, 22 << 5 |  2, 0, 0
.hword  8,                    86,  0, 0,   32, 10000,    ORIENT_UP, 0, 0, 0, 0, 0,  5 << 5 | 21, 21 << 5 |  6, 0, 0
.hword  9,       SPRITE_POKEBALL,  0, 0, 1028,  7014,    ORIENT_UP, 0, 0, 0, 0, 0,  5 << 5 |  2, 21 << 5 | 10, 0, 0
.hword 10, SPRITE_ACETRAINERFEMALE, 16, 0,    0,     2,  ORIENT_LEFT, 0, 0, 0, 0, 0,  5 << 5 | 31, 21 << 5 |  4, 0, 0
.hword 11,       SPRITE_POKEBALL,  0, 0, 1268,  7254,    ORIENT_UP, 0, 0, 0, 0, 0,  5 << 5 | 20, 21 << 5 | 23, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  5 << 5 | 20, 21 << 5 | 26, 254, 1, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
