.include "source/macros_asm.s"

.word 3 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 6, 0, 5, 0, 3, 0, 0, 0, 0, 0
.hword 6, 0, 6, 0, 3, 0, 0, 0, 0, 0
.hword 5, 0, 13, 0, 2, 0, 0, 0, 0, 0

.word 4 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,     SPRITE_BUGCATCHER,  0, 0,    0,     1,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  3,  0 << 5 |  6, 0, 0
.hword  1,                    83,  3, 0,    0,     2,    ORIENT_UP, 0, 0, 0, 1, 2,  0 << 5 | 14,  0 << 5 |  8, 0, 0
.hword  2,         SPRITE_FATGUY,  0, 0,    0,     3, ORIENT_RIGHT, 0, 0, 0, 2, 0,  0 << 5 | 10,  0 << 5 | 11, 0, 0
.hword  3,         SPRITE_FATGUY,  0, 0,    0,     4, ORIENT_RIGHT, 0, 0, 0, 2, 0,  0 << 5 |  9,  0 << 5 | 11, 0, 0

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  7,  0 << 5 |  8, 140, 1, 0, 0
.hword  0 << 5 | 15,  0 << 5 |  2, 142, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
