.include "source/macros_asm.s"

.word 2 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 4, 0, 6, 0, 12, 0, 0, 0, 0, 0
.hword 4, 0, 10, 0, 12, 0, 0, 0, 0, 0

.word 2 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   168, 15, 0,    0,     3,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 11,  0 << 5 | 13, 0, 0
.hword  1,     SPRITE_SCHOOLGIRL, 17, 1,    0,  3343, ORIENT_RIGHT, 4, 0, 0, 0, 0,  0 << 5 |  6,  0 << 5 |  4, 0, 0

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  8,  0 << 5 | 14, 150, 12, 0, 0
.hword  0 << 5 |  8,  0 << 5 |  2, 155, 0, 0, 0

.word 2 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 2,  0 << 5 |  3,  0 << 5 |  8, 1, 1, 0, 0, 16384
.hword 2,  0 << 5 | 13,  0 << 5 |  8, 1, 1, 0, 0, 16384
