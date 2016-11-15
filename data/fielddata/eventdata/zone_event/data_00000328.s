.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 13 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,    SPRITE_GENERICMALE,  3, 0,    0,     9,  ORIENT_LEFT, 0, 0, 0, 1, 1,  3 << 5 | 27, 26 << 5 | 22, 0, 1
.hword  1,                    24,  9, 0,    0,    10,  ORIENT_DOWN, 0, 0, 0, 0, 0,  4 << 5 | 12, 26 << 5 | 10, 0, 1
.hword  2,          SPRITE_BARRY,  8, 0,  370,  9700,  ORIENT_LEFT, 0, 0, 0, 0, 0,  3 << 5 | 16, 26 << 5 | 23, 0, 1
.hword  3,      SPRITE_GUIDEPOST,  0, 0,    0,     6,    ORIENT_UP, 4, 0, 0, 0, 0,  3 << 5 | 13, 26 << 5 | 24, 0, 0
.hword  4,      SPRITE_GUIDEPOST,  2, 0,    0,     7,    ORIENT_UP, 1, 0, 0, 0, 0,  4 << 5 | 23, 26 << 5 | 11, 0, 0
.hword  5,                    99, 17, 0,  376,    15,  ORIENT_DOWN, 0, 0, 0, 0, 0,  3 << 5 |  9, 26 << 5 | 21, 0, 0
.hword  6,                   101, 17, 0,  377,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  3 << 5 |  9, 26 << 5 | 21, 0, 0
.hword  5,                    93,  0, 0,  418, 65535,    ORIENT_UP, 0, 0, 0, 0, 0,  5 << 5 |  5, 26 << 5 | 11, 0, 0
.hword  3,         SPRITE_ROCKER, 12, 0,  411, 65535,  ORIENT_LEFT, 0, 0, 0, 0, 0,  3 << 5 | 12, 27 << 5 |  5, 0, 0
.hword  9,  SPRITE_MALESCHOOLKID, 16, 0,    0,    11,  ORIENT_LEFT, 0, 0, 0, 0, 0,  4 << 5 | 25, 26 << 5 | 15, 0, 1
.hword 10,                    96,  0, 0,    0,     8,    ORIENT_UP, 0, 0, 0, 0, 0,  4 << 5 |  8, 26 << 5 | 19, 0, 0
.hword 11,           SPRITE_LASS,  5, 0,    0,    12,  ORIENT_LEFT, 0, 0, 0, 2, 0,  4 << 5 | 14, 26 << 5 | 23, 0, 0
.hword 12,                   174, 14, 0,  381,    13,  ORIENT_DOWN, 0, 0, 0, 0, 0,  3 << 5 | 16, 26 << 5 | 22, 0, 0

.word 0 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?

.word 6 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 2,  3 << 5 | 14, 26 << 5 | 25, 4, 1, 0, 0, 16518
.hword 4,  3 << 5 | 17, 26 << 5 | 23, 2, 1, 0, 1, 16518
.hword 3,  3 << 5 | 14, 26 << 5 | 26, 4, 1, 0, 3, 16518
.hword 4,  3 << 5 | 19, 26 << 5 | 22, 1, 1, 0, 1, 16518
.hword 14,  3 << 5 | 19, 26 << 5 | 20, 1, 4, 0, 3, 16518
.hword 16,  3 << 5 | 13, 26 << 5 | 25, 5, 1, 0, 2, 16518
