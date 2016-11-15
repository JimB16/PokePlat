.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 15 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,      SPRITE_YOUNGSTER, 16, 1,    0,  3355,  ORIENT_LEFT, 5, 0, 0, 0, 0,  7 << 5 | 10, 23 << 5 | 21, 0, 0
.hword  1,      SPRITE_YOUNGSTER, 16, 1,    0,  3003,  ORIENT_LEFT, 2, 0, 0, 0, 0,  6 << 5 | 12, 23 << 5 | 14, 0, 1
.hword  2,           SPRITE_LASS,  3, 1,    0,  3322,    ORIENT_UP, 1, 0, 0, 1, 1,  7 << 5 | 19, 23 << 5 | 21, 0, 0
.hword  3,      SPRITE_YOUNGSTER, 15, 1,    0,  3354,  ORIENT_DOWN, 4, 0, 0, 0, 0,  6 << 5 | 30, 23 << 5 | 20, 0, 4
.hword  4,           SPRITE_LASS, 15, 1,    0,  3321,  ORIENT_DOWN, 5, 0, 0, 0, 0,  7 << 5 | 16, 23 << 5 | 12, 0, 1
.hword  5,          SPRITE_BARRY, 16, 0,  379,     0,  ORIENT_LEFT, 0, 0, 0, 0, 0,  6 << 5 |  9, 23 << 5 | 21, 0, 1
.hword  6,      SPRITE_GUIDEPOST,  0, 0,    0,     2,    ORIENT_UP, 2, 0, 0, 0, 0,  6 << 5 |  8, 23 << 5 | 20, 0, 0
.hword  7,      SPRITE_GUIDEPOST,  0, 0,    0,     3,    ORIENT_UP, 1, 0, 0, 0, 0,  7 << 5 | 20, 23 << 5 | 11, 0, 0
.hword  8,                    96,  0, 0,    0,     4,    ORIENT_UP, 0, 0, 0, 0, 0,  7 << 5 | 14, 23 << 5 | 16, 0, 0
.hword  9,                    96,  0, 0,    0,     5,    ORIENT_UP, 0, 0, 0, 0, 0,  6 << 5 | 25, 23 << 5 | 14, 0, 0
.hword 10,       SPRITE_POKEBALL,  0, 3, 1015,  7001,    ORIENT_UP, 0, 0, 0, 0, 0,  6 << 5 | 30, 23 << 5 |  9, 0, 0
.hword 11,       SPRITE_POKEBALL,  0, 3, 1016,  7002,    ORIENT_UP, 0, 0, 0, 0, 0,  6 << 5 | 19, 23 << 5 | 14, 0, 0
.hword 12,           SPRITE_LASS,  3, 0,    0,     1,  ORIENT_DOWN, 0, 0, 0, 1, 0,  6 << 5 | 14, 23 << 5 | 21, 0, 0
.hword  9,       SPRITE_SIGNPOST,  0, 0,    3, 65535,    ORIENT_UP, 8, 0, 0, 0, 0,  5 << 5 | 27, 23 << 5 | 20, 0, 0
.hword 14,       SPRITE_POKEBALL,  0, 3, 1270,  7255,    ORIENT_UP, 0, 0, 0, 0, 0,  7 << 5 |  7, 23 << 5 | 18, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  7 << 5 | 22, 23 << 5 | 13, 258, 0, 0, 0

.word 1 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 6,  6 << 5 |  4, 23 << 5 | 21, 1, 4, 0, 0, 16520
