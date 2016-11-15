.include "source/macros_asm.s"

.word 11 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8058, 2, 39, 0, 38, 0, 0, 0, 4, 0
.hword 8059, 2, 33, 0, 18, 0, 0, 0, 4, 0
.hword 8220, 2, 13, 0, 36, 0, 0, 0, 4, 0
.hword 8227, 2, 29, 0, 30, 0, 0, 0, 4, 0
.hword 8226, 2, 39, 0, 23, 0, 0, 0, 4, 0
.hword 8219, 2, 48, 0, 24, 0, 0, 0, 4, 0
.hword 8222, 2, 25, 0, 23, 0, 0, 0, 4, 0
.hword 8223, 2, 52, 0, 31, 0, 0, 0, 4, 0
.hword 8224, 2, 17, 0, 18, 0, 0, 0, 4, 0
.hword 8225, 2, 19, 0, 35, 0, 0, 0, 4, 0
.hword 8221, 2, 21, 0, 14, 0, 0, 0, 4, 0

.word 8 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   124, 14, 0,  415,     3,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 12,  1 << 5 | 15, 0, 0
.hword  1,                   124, 14, 0,  416,     4,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 13,  1 << 5 | 15, 0, 0
.hword  2,                    15, 16, 0,    0,     5,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 12,  1 << 5 | 14, 0, 0
.hword  3,       SPRITE_POKEBALL, 15, 0,  414,     7,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 13,  1 << 5 | 15, 0, 0
.hword  4,       SPRITE_POKEBALL,  0, 0, 1160,  7146,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 14,  0 << 5 | 15, 0, 0
.hword  5,       SPRITE_POKEBALL,  0, 0, 1248,  7234,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 14,  0 << 5 | 28, 0, 0
.hword  6,       SPRITE_POKEBALL,  0, 0, 1299,  7284,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 20,  0 << 5 | 27, 0, 0
.hword  7,       SPRITE_POKEBALL,  0, 0, 1300,  7285,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 11,  1 << 5 |  3, 0, 0

.word 5 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  1 << 5 | 18,  0 << 5 |  9, 426, 5, 0, 0
.hword  1 << 5 | 19,  0 << 5 |  9, 426, 6, 0, 0
.hword  1 << 5 |  7,  1 << 5 | 13, 257, 0, 0, 0
.hword  0 << 5 | 12,  1 << 5 | 22, 426, 7, 0, 0
.hword  0 << 5 | 13,  1 << 5 | 22, 426, 8, 0, 0

.word 1 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 2,  0 << 5 | 12,  1 << 5 | 16, 2, 1, 0, 0, 16617
