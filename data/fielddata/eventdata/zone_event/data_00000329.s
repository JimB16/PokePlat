.include "source/macros_asm.s"

.word 1 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8161, 2, 168, 0, 795, 0, 0, 0, 4, 0

.word 9 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,      SPRITE_YOUNGSTER, 15, 1,    0,  3000,  ORIENT_DOWN, 5, 0, 0, 0, 0,  5 << 5 |  6, 25 << 5 | 13, 0, 1
.hword  1,           SPRITE_LASS, 15, 1,    0,  3002,  ORIENT_DOWN, 4, 0, 0, 0, 0,  5 << 5 | 21, 25 << 5 | 18, 0, 1
.hword  2,      SPRITE_YOUNGSTER, 15, 1,    0,  3001,  ORIENT_DOWN, 5, 0, 0, 0, 0,  5 << 5 | 25, 25 << 5 |  4, 0, 1
.hword  3,                   101, 17, 0,  392,     7, ORIENT_RIGHT, 0, 0, 0, 0, 0,  5 << 5 | 14, 25 << 5 | 27, 0, 1
.hword  4,      SPRITE_GUIDEPOST,  0, 0,    0,     3,    ORIENT_UP, 4, 0, 0, 0, 0,  5 << 5 | 23, 25 << 5 | 25, 0, 0
.hword  5,      SPRITE_GUIDEPOST,  0, 0,    0,     4,    ORIENT_UP, 3, 0, 0, 0, 0,  5 << 5 | 16, 25 << 5 |  4, 0, 0
.hword  6,                    96,  0, 0,    0,     5,    ORIENT_UP, 0, 0, 0, 0, 0,  5 << 5 | 14, 25 << 5 | 16, 0, 0
.hword  7,      SPRITE_YOUNGSTER,  5, 0,    0,     2, ORIENT_RIGHT, 0, 0, 0, 1, 0,  5 << 5 |  9, 25 << 5 |  8, 0, 0
.hword  8,       SPRITE_POKEBALL,  0, 0, 1014,  7000,    ORIENT_UP, 0, 0, 0, 0, 0,  5 << 5 |  2, 25 << 5 |  6, 0, 0

.word 0 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?

.word 1 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 6,  5 << 5 | 20, 25 << 5 | 25, 1, 5, 0, 0, 16519
