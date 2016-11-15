.include "source/macros_asm.s"

.word 1 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8071, 2, 357, 0, 409, 0, 0, 0, 4, 0

.word 17 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    68, 15, 1,    0,  3131,  ORIENT_DOWN, 3, 0, 0, 0, 0, 11 << 5 |  3, 12 << 5 | 18, 0, 0
.hword  1,                    69, 14, 1,    0,  3133,    ORIENT_UP, 4, 0, 0, 0, 0, 10 << 5 |  8, 12 << 5 | 21, 0, 0
.hword  2,                    51,  7, 1,    0,  3257,    ORIENT_UP, 3, 0, 0, 0, 0, 10 << 5 | 17, 12 << 5 |  8, 0, 0
.hword  3,                    32, 20, 7,    0,  3135,  ORIENT_LEFT, 2, 0, 0, 7, 0, 10 << 5 | 30, 12 << 5 |  8, 0, 0
.hword  4,                    68, 45, 1,    0,  3132,  ORIENT_DOWN, 2, 0, 0, 0, 0,  9 << 5 | 11, 12 << 5 | 10, 0, 0
.hword  5,                    69,  6, 1,    0,  3134,    ORIENT_UP, 2, 0, 0, 0, 0, 10 << 5 | 24, 12 << 5 | 27, 0, 0
.hword  6,                    33, 38, 1,    0,  3137, ORIENT_RIGHT, 2, 0, 0, 12, 4, 10 << 5 | 22, 12 << 5 |  1, 0, 0
.hword  7,                    32, 38, 1,    0,  3136,  ORIENT_DOWN, 1, 0, 0, 4, 2,  9 << 5 | 23, 12 << 5 | 18, 0, 0
.hword  8,                    33, 44, 1,    0,  3138, ORIENT_RIGHT, 2, 0, 0, 7, 4, 11 << 5 | 14, 12 << 5 |  7, 0, 0
.hword  9,      SPRITE_GUIDEPOST,  0, 0,    0,     2,    ORIENT_UP, 1, 0, 0, 0, 0, 11 << 5 | 23, 12 << 5 | 18, 0, 0
.hword 10,                    93,  0, 0,    0,     3,    ORIENT_UP, 0, 0, 0, 0, 0,  9 << 5 | 17, 12 << 5 | 15, 0, 0
.hword 11,       SPRITE_POKEBALL,  0, 0, 1171,  7157,    ORIENT_UP, 0, 0, 0, 0, 0, 11 << 5 | 25, 12 << 5 |  8, 0, 0
.hword 12,       SPRITE_POKEBALL,  0, 0, 1173,  7159,    ORIENT_UP, 0, 0, 0, 0, 0, 10 << 5 | 22, 12 << 5 | 12, 0, 0
.hword 13,       SPRITE_POKEBALL,  0, 0, 1172,  7158,    ORIENT_UP, 0, 0, 0, 0, 0, 11 << 5 |  6, 12 << 5 |  5, 0, 0
.hword 14,       SPRITE_POKEBALL,  0, 0, 1260,  7246,    ORIENT_UP, 0, 0, 0, 0, 0, 11 << 5 | 15, 12 << 5 |  2, 0, 0
.hword 15,       SPRITE_POKEBALL,  0, 0, 1305,  7290,    ORIENT_UP, 0, 0, 0, 0, 0, 11 << 5 | 17, 12 << 5 | 13, 0, 0
.hword 16,       SPRITE_POKEBALL,  0, 0, 1306,  7291,    ORIENT_UP, 0, 0, 0, 0, 0, 10 << 5 | 11, 12 << 5 | 27, 0, 0

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword 11 << 5 | 23, 12 << 5 | 19, 217, 1, 0, 0
.hword  9 << 5 | 15, 12 << 5 | 14, 384, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
