.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 10 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,           SPRITE_LASS,  7, 1,    0,  3011, ORIENT_RIGHT, 3, 0, 0, 0, 0,  5 << 5 | 12, 22 << 5 | 21, 0, 1
.hword  1,           SPRITE_LASS, 15, 1,    0,  3010,  ORIENT_DOWN, 5, 0, 0, 0, 0,  5 << 5 | 11, 22 << 5 |  8, 0, 1
.hword  2,      SPRITE_YOUNGSTER, 46, 1,    0,  3009,  ORIENT_LEFT, 3, 0, 0, 0, 0,  5 << 5 |  7, 22 << 5 | 18, 0, 1
.hword  3,      SPRITE_YOUNGSTER,  5, 0,    0,     1,  ORIENT_LEFT, 0, 0, 0, 1, 0,  5 << 5 | 13, 22 << 5 |  2, 0, 0
.hword  4,      SPRITE_GUIDEPOST,  0, 0,    0,     2,    ORIENT_UP, 4, 0, 0, 0, 0,  5 << 5 | 14, 22 << 5 | 17, 0, 0
.hword  5,                    93,  0, 0,    0,     3,    ORIENT_UP, 0, 0, 0, 0, 0,  5 << 5 | 10, 22 << 5 |  2, 0, 0
.hword  6,      SPRITE_YOUNGSTER,  5, 0,    0,     0, ORIENT_RIGHT, 0, 0, 0, 1, 0,  5 << 5 | 15, 21 << 5 | 28, 0, 0
.hword  7,       SPRITE_POKEBALL,  0, 0, 1023,  7009,    ORIENT_UP, 0, 0, 0, 0, 0,  5 << 5 |  2, 22 << 5 | 28, 0, 0
.hword  8,       SPRITE_POKEBALL,  0, 0, 1024,  7010,    ORIENT_UP, 0, 0, 0, 0, 0,  5 << 5 | 29, 22 << 5 | 12, 0, 0
.hword  9,       SPRITE_POKEBALL,  0, 0, 1096,  7082,    ORIENT_UP, 0, 0, 0, 0, 0,  5 << 5 | 17, 22 << 5 | 18, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  5 << 5 | 11, 22 << 5 |  1, 254, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
