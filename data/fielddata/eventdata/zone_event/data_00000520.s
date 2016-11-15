.include "source/macros_asm.s"

.word 10 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 11, 0, 15, 0, 3, 0, 0, 0, 0, 0
.hword 12, 0, 15, 0, 13, 0, 0, 0, 0, 0
.hword 13, 0, 6, 0, 7, 0, 0, 0, 4, 0
.hword 13, 0, 6, 0, 8, 0, 0, 0, 4, 0
.hword 14, 0, 9, 0, 14, 0, 0, 0, 4, 0
.hword 14, 0, 9, 0, 13, 0, 0, 0, 4, 0
.hword 14, 0, 6, 0, 13, 0, 0, 0, 4, 0
.hword 14, 0, 6, 0, 14, 0, 0, 0, 4, 0
.hword 13, 0, 9, 0, 8, 0, 0, 0, 4, 0
.hword 13, 0, 9, 0, 7, 0, 0, 0, 4, 0

.word 9 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,     SPRITE_BATTLEGIRL,  0, 0,    0,     4,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 10,  0 << 5 |  6, 0, 0
.hword  1,     SPRITE_LITTLEGIRL,  0, 0,    0,    10,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 11,  0 << 5 | 17, 0, 0
.hword  2,      SPRITE_BARRYSMOM,  2, 0,    0,     7,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 13,  0 << 5 | 10, 0, 0
.hword  3,         SPRITE_BEAUTY,  2, 0,    0,     8, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  4,  0 << 5 | 15, 0, 0
.hword  4,           SPRITE_LASS,  0, 0,    0,     9,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 13,  0 << 5 | 15, 0, 0
.hword  5,       SPRITE_OLDWOMAN,  0, 0,    0,     6,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 10,  0 << 5 | 14, 0, 0
.hword  6,          SPRITE_HIKER,  0, 0,    0,     3, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  5,  0 << 5 |  8, 0, 0
.hword  7,                    35,  3, 0,    0,     5, ORIENT_RIGHT, 0, 0, 0, 2, 0,  0 << 5 | 20,  0 << 5 | 11, 0, 0
.hword  8,                    44,  2, 0,    0,     2,  ORIENT_DOWN, 0, 0, 0, 2, 0,  0 << 5 |  7,  0 << 5 |  4, 0, 0

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 16,  0 << 5 |  5, 28, 1, 0, 0
.hword  0 << 5 | 16,  0 << 5 | 15, 568, 1, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
