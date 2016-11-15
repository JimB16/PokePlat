.include "source/macros_asm.s"

.word 5 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 1, 0, 5, 0, 4, 0, 0, 0, 4, 0
.hword 2, 0, 1, 0, 4, 0, 0, 0, 0, 0
.hword 4, 1, 7, 0, 3, 0, 0, 0, 0, 0
.hword 6, 0, 4, 0, 4, 0, 0, 0, 0, 0
.hword 6, 0, 3, 0, 4, 0, 0, 0, 0, 0

.word 1 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,          SPRITE_BARRY, 16, 0,  371,     0,  ORIENT_LEFT, 0, 0, 0, 0, 0,  0 << 5 | 10,  0 << 5 |  4, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  8,  0 << 5 |  4, 414, 1, 0, 0

.word 4 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 7,  0 << 5 |  4,  0 << 5 |  5, 1, 1, 0, 0, 16549
.hword 8,  0 << 5 |  3,  0 << 5 |  6, 1, 1, 0, 0, 16549
.hword 9,  0 << 5 |  5,  0 << 5 |  6, 1, 1, 0, 0, 16549
.hword 10,  0 << 5 |  4,  0 << 5 |  7, 1, 1, 0, 0, 16549
