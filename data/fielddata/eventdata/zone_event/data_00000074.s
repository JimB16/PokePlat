.include "source/macros_asm.s"

.word 1 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 6, 0, 16, 0, 10, 0, 0, 0, 0, 0

.word 7 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   123, 15, 0,  509,     2,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 14,  0 << 5 |  6, 0, 0
.hword  1,                    72,  8, 0,  511,     3,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 13,  0 << 5 |  5, 0, 0
.hword  2,                    15, 14, 0,  511,     5,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 14,  0 << 5 |  9, 0, 0
.hword  3,                   206,  9, 0,  511,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 15,  0 << 5 |  5, 0, 0
.hword  4,       SPRITE_POKEBALL,  0, 0, 1292,  7277,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  9,  0 << 5 |  6, 0, 0
.hword  5,       SPRITE_POKEBALL,  0, 0, 1279,  7264,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 |  6, 0, 0
.hword  6,       SPRITE_POKEBALL,  0, 0, 1280,  7265,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 21,  0 << 5 |  5, 0, 0

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  8,  0 << 5 |  3, 74, 1, 0, 0
.hword  0 << 5 |  3,  0 << 5 |  3, 74, 3, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
