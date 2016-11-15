.include "source/macros_asm.s"

.word 2 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8131, 2, 649, 0, 346, 0, 0, 0, 4, 0
.hword 7, 0, 652, 0, 338, 0, 0, 0, 0, 0

.word 12 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,       SPRITE_SIGNPOST,  0, 0,    0,     5,    ORIENT_UP, 6, 0, 0, 0, 0, 20 << 5 |  6, 10 << 5 | 18, 0, 0
.hword  1,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 20 << 5 | 20, 10 << 5 |  7, 0, 0
.hword  2,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0, 20 << 5 | 12, 10 << 5 |  7, 0, 0
.hword  3,                    50,  3, 0,    0,     3, ORIENT_RIGHT, 0, 0, 0, 1, 1, 20 << 5 | 19, 10 << 5 | 30, 0, 0
.hword  4,     SPRITE_BATTLEGIRL,  3, 0,    0,     2,  ORIENT_LEFT, 0, 0, 0, 1, 0, 20 << 5 | 12, 10 << 5 | 21, 0, 0
.hword  5,      SPRITE_YOUNGSTER,  2, 0,    0,     1,  ORIENT_DOWN, 0, 0, 0, 0, 0, 20 << 5 | 27, 10 << 5 | 18, 0, 0
.hword  0,      SPRITE_GUIDEPOST,  0, 0,  469, 65535,    ORIENT_UP, 2, 0, 0, 0, 0, 21 << 5 |  7, 10 << 5 | 20, 0, 0
.hword  7,      SPRITE_CAMERAMAN,  3, 0,    0,     4,  ORIENT_LEFT, 0, 0, 0, 1, 0, 20 << 5 | 11, 10 << 5 | 28, 0, 0
.hword  8,                   144, 15, 0,  555,     6,  ORIENT_DOWN, 0, 0, 0, 1, 0, 20 << 5 | 12, 10 << 5 | 19, 0, 0
.hword  9,       SPRITE_POKEBALL,  0, 0, 1329,  7314,    ORIENT_UP, 0, 0, 0, 0, 0, 20 << 5 | 22, 10 << 5 | 15, 0, 0
.hword 10,       SPRITE_POKEBALL,  0, 0, 1326,  7311,    ORIENT_UP, 0, 0, 0, 0, 0, 20 << 5 |  9, 10 << 5 |  4, 0, 0
.hword 11,          SPRITE_BARRY,  0, 0,  473,    10,  ORIENT_DOWN, 0, 0, 0, 0, 0, 20 << 5 | 11, 10 << 5 | 19, 0, 0

.word 5 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword 20 << 5 | 12, 10 << 5 | 18, 454, 0, 0, 0
.hword 20 << 5 | 15, 10 << 5 | 28, 455, 0, 0, 0
.hword 20 << 5 | 16, 10 << 5 |  5, 456, 0, 0, 0
.hword 20 << 5 | 19, 10 << 5 | 18, 452, 0, 0, 0
.hword 20 << 5 | 23, 10 << 5 | 18, 451, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
