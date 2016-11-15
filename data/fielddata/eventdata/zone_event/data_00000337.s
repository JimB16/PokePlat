.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 3 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    24, 17, 0,    0,     2, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  3,  0 << 5 |  7, 0, 0
.hword  1,                    24, 16, 0,    0,     2,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 11,  0 << 5 |  7, 0, 0
.hword  2,     SPRITE_BATTLEGIRL, 10, 0,    0,     5,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 |  9,  0 << 5 |  9, 0, 0

.word 6 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  6,  0 << 5 |  2, 350, 7, 0, 0
.hword  0 << 5 |  6,  0 << 5 | 12, 350, 0, 0, 0
.hword  0 << 5 |  7,  0 << 5 |  2, 350, 2, 0, 0
.hword  0 << 5 |  8,  0 << 5 |  2, 350, 8, 0, 0
.hword  0 << 5 |  7,  0 << 5 | 12, 350, 0, 0, 0
.hword  0 << 5 |  8,  0 << 5 | 12, 350, 1, 0, 0

.word 2 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 3,  0 << 5 |  5,  0 << 5 |  6, 5, 1, 0, 0, 16386
.hword 4,  0 << 5 |  5,  0 << 5 |  8, 5, 1, 0, 1, 16386
