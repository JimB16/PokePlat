.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 3 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,       SPRITE_POKEBALL,  0, 0, 1255,  7241,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  6,  0 << 5 |  8, 0, 0
.hword  1,                   123, 15, 0,  442,     0,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 17,  1 << 5 | 12, 0, 0
.hword  2,          SPRITE_BARRY, 14, 0,  441,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 17,  1 << 5 | 13, 0, 0

.word 5 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 11,  1 << 5 | 18, 340, 0, 0, 0
.hword  1 << 5 |  0,  1 << 5 |  0, 319, 0, 0, 0
.hword  0 << 5 | 12,  1 << 5 | 18, 340, 1, 0, 0
.hword  0 << 5 | 14,  1 << 5 | 18, 340, 2, 0, 0
.hword  0 << 5 | 15,  1 << 5 | 18, 340, 3, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
