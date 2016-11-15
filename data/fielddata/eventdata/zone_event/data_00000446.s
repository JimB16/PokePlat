.include "source/macros_asm.s"

.word 2 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8048, 2, 181, 0, 922, 0, 0, 0, 4, 0
.hword 8169, 2, 175, 0, 889, 0, 0, 0, 4, 0

.word 10 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    46, 14, 4,    0,  3159,    ORIENT_UP, 5, 0, 0, 0, 0,  6 << 5 | 19, 28 << 5 | 21, 0, 0
.hword  1,                    46, 20, 4,    0,  3160,  ORIENT_LEFT, 1, 2, 0, 7, 0,  6 << 5 |  6, 28 << 5 | 15, 0, 0
.hword  2,                    47, 20, 1,    0,  3161,  ORIENT_LEFT, 3, 0, 0, 7, 0,  5 << 5 | 15, 28 << 5 |  9, 0, 0
.hword  3,                    47, 20, 1,    0,  3162, ORIENT_RIGHT, 3, 0, 0, 5, 0,  5 << 5 |  9, 28 << 5 | 11, 0, 0
.hword  4,                    46,  8, 1,    0,  3158,  ORIENT_LEFT, 3, 0, 0, 0, 0,  5 << 5 | 25, 28 << 5 | 22, 0, 0
.hword  5,                    47, 42, 1,    0,  3163,  ORIENT_DOWN, 2, 0, 0, 6, 1,  6 << 5 | 12, 28 << 5 |  7, 0, 0
.hword  6,                    47,  8, 1,    0,  3493,  ORIENT_DOWN, 5, 0, 0, 0, 0,  6 << 5 | 19, 28 << 5 | 15, 0, 0
.hword  7,       SPRITE_POKEBALL,  0, 0, 1141,  7127,    ORIENT_UP, 0, 0, 0, 0, 0,  6 << 5 |  7, 28 << 5 | 21, 0, 0
.hword  8,       SPRITE_POKEBALL,  0, 0, 1139,  7125,    ORIENT_UP, 0, 0, 0, 0, 0,  5 << 5 | 11, 28 << 5 | 22, 0, 0
.hword  9,       SPRITE_POKEBALL,  0, 0, 1142,  7128,    ORIENT_UP, 0, 0, 0, 0, 0,  5 << 5 | 20, 28 << 5 | 14, 0, 0

.word 0 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
