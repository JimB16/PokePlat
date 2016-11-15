.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 21 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,         SPRITE_ROCKER, 15, 1,    0,  3299,  ORIENT_DOWN, 4, 0, 0, 0, 0,  2 << 5 | 16, 23 << 5 | 17, 0, 0
.hword  1,                    56,  7, 1,    0,  3337, ORIENT_RIGHT, 3, 0, 0, 0, 0,  2 << 5 | 12, 23 << 5 | 10, 0, 0
.hword  2,      SPRITE_FISHERMAN, 17, 1,    0,  3152, ORIENT_RIGHT, 0, 0, 0, 0, 0,  2 << 5 | 29, 23 << 5 | 21, 0, 0
.hword  3,      SPRITE_FISHERMAN, 17, 1,    0,  3153, ORIENT_RIGHT, 0, 0, 0, 0, 0,  2 << 5 | 29, 23 << 5 | 15, 0, 0
.hword  4,      SPRITE_GUIDEPOST,  0, 0,    0,     2,    ORIENT_UP, 1, 0, 0, 0, 0,  3 << 5 | 23, 23 << 5 | 20, 0, 0
.hword  5,      SPRITE_GUIDEPOST,  0, 0,    0,     1,    ORIENT_UP, 2, 0, 0, 0, 0,  2 << 5 |  8, 23 << 5 | 16, 0, 0
.hword  6,       SPRITE_POKEBALL,  0, 0, 1146,  7132,    ORIENT_UP, 0, 0, 0, 0, 0,  3 << 5 | 21, 23 << 5 |  8, 0, 0
.hword  7,       SPRITE_POKEBALL,  0, 0, 1147,  7133,    ORIENT_UP, 0, 0, 0, 0, 0,  2 << 5 | 29, 23 << 5 | 23, 0, 0
.hword  8,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 74, 0, 0, 0, 0,  2 << 5 | 23, 23 << 5 | 16, 0, 0
.hword  9,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 75, 0, 0, 0, 0,  2 << 5 | 24, 23 << 5 | 16, 0, 0
.hword 10,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 76, 0, 0, 0, 0,  2 << 5 | 25, 23 << 5 | 16, 0, 0
.hword 11,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 77, 0, 0, 0, 0,  2 << 5 | 26, 23 << 5 | 16, 0, 0
.hword 12,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0,  2 << 5 | 10, 23 << 5 |  8, 0, 0
.hword 13,        SPRITE_AIRVENT,  0, 0,    0,  2027,    ORIENT_UP, 0, 0, 0, 0, 0,  2 << 5 | 10, 23 << 5 | 13, 0, 0
.hword 14,         SPRITE_ROCKER, 15, 0,  665,     3,  ORIENT_DOWN, 0, 0, 0, 0, 0,  2 << 5 |  9, 23 << 5 | 17, 0, 0
.hword 15,                    72, 15, 0,  665,     5,  ORIENT_DOWN, 0, 0, 0, 0, 0,  2 << 5 |  9, 23 << 5 | 18, 0, 0
.hword 16,                    72, 15, 0,  665,     6,  ORIENT_DOWN, 0, 0, 0, 0, 0,  2 << 5 |  8, 23 << 5 | 19, 0, 0
.hword 17,                    71, 14, 0,  665,     7,    ORIENT_UP, 0, 0, 0, 0, 0,  2 << 5 |  9, 23 << 5 | 20, 0, 0
.hword 18,                    71, 14, 0,  665,     7,    ORIENT_UP, 0, 0, 0, 0, 0,  2 << 5 |  7, 23 << 5 | 20, 0, 0
.hword 19,      SPRITE_FISHERMAN, 14, 0,  665,     4,    ORIENT_UP, 0, 0, 0, 0, 0,  2 << 5 |  9, 23 << 5 | 21, 0, 0
.hword 20,       SPRITE_POKEBALL,  0, 0, 1271,  7256,    ORIENT_UP, 0, 0, 0, 0, 0,  3 << 5 |  8, 23 << 5 | 12, 0, 0

.word 4 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  2 << 5 |  6, 23 << 5 | 18, 390, 1, 0, 0
.hword  2 << 5 |  6, 23 << 5 | 19, 390, 1, 0, 0
.hword  3 << 5 | 25, 23 << 5 | 22, 389, 0, 0, 0
.hword  3 << 5 | 25, 23 << 5 | 23, 389, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
