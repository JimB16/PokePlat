.include "source/macros_asm.s"

.word 2 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8047, 2, 44, 0, 15, 0, 0, 0, 4, 0
.hword 8046, 2, 22, 0, 3, 0, 0, 0, 4, 0

.word 12 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,       SPRITE_POKEBALL,  0, 0, 1134,  7120,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 21,  0 << 5 | 21, 0, 0
.hword  1,       SPRITE_POKEBALL,  0, 0, 1136,  7122,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 11,  0 << 5 |  7, 0, 0
.hword  2,       SPRITE_POKEBALL,  0, 0, 1135,  7121,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 14,  0 << 5 | 20, 0, 0
.hword  3,       SPRITE_POKEBALL,  0, 0, 1137,  7123,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 19,  0 << 5 |  6, 0, 0
.hword  4,                    82, 13, 0,    0,     2, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 | 25,  0 << 5 | 19, 0, 0
.hword  5,                    40,  9, 1,    0,  3843,  ORIENT_DOWN, 4, 0, 0, 0, 0,  0 << 5 |  3,  0 << 5 |  7, 0, 0
.hword  6,                    40, 45, 1,    0,  3844,  ORIENT_DOWN, 4, 0, 0, 0, 0,  0 << 5 | 26,  0 << 5 |  6, 0, 0
.hword  7,                    40, 17, 1,    0,  3845, ORIENT_RIGHT, 3, 0, 0, 0, 0,  1 << 5 |  3,  0 << 5 | 25, 0, 0
.hword  8,       SPRITE_POKEBALL,  0, 0, 1295,  7280,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  8,  0 << 5 | 18, 0, 0
.hword  9,       SPRITE_POKEBALL,  0, 0, 1296,  7281,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 27,  0 << 5 | 16, 0, 0
.hword 10,       SPRITE_POKEBALL,  0, 0, 1297,  7282,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 12,  0 << 5 |  6, 0, 0
.hword 11,       SPRITE_POKEBALL,  0, 0, 1298,  7283,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 11,  0 << 5 | 18, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 26,  0 << 5 | 26, 204, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
