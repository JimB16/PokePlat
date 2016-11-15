.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 5 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,       SPRITE_POKEBALL,  0, 0, 1125,  7111,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  7,  0 << 5 |  4, 0, 0
.hword  1,       SPRITE_POKEBALL,  0, 0, 1250,  7236,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 13,  0 << 5 |  8, 0, 0
.hword  2,                   202,  0, 0,  552,     1,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 |  7, 0, 0
.hword  3,                   202,  0, 0,  552,     1,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  9,  0 << 5 |  7, 0, 0
.hword  4,                   213, 15, 0,  525,     3,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 12,  0 << 5 |  8, 0, 0

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  8,  0 << 5 | 11, 132, 4, 0, 0
.hword  0 << 5 | 13,  0 << 5 |  3, 310, 2, 0, 0

.word 1 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 5,  0 << 5 |  8,  0 << 5 |  8, 2, 1, 0, 3, 16671
