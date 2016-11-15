.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 4 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,       SPRITE_POKEBALL,  0, 0, 1177,  7163,    ORIENT_UP, 0, 0, 0, 0, 0, 10 << 5 | 20,  7 << 5 |  6, 0, 0
.hword  1,      SPRITE_GUIDEPOST,  0, 0,    0,     3,    ORIENT_UP, 3, 0, 0, 0, 0,  9 << 5 | 21,  7 << 5 | 18, 0, 0
.hword  2,          SPRITE_BARRY, 15, 0,  426,     0,  ORIENT_DOWN, 0, 0, 0, 0, 0,  9 << 5 | 22,  7 << 5 | 13, 0, 0
.hword  3,       SPRITE_POKEBALL,  0, 0, 1324,  7309,    ORIENT_UP, 0, 0, 0, 0, 0, 10 << 5 |  3,  7 << 5 | 11, 0, 0

.word 4 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  9 << 5 | 20,  7 << 5 |  5, 317, 0, 0, 0
.hword  9 << 5 | 21,  7 << 5 |  5, 317, 1, 0, 0
.hword  9 << 5 | 20,  7 << 5 |  5, 318, 3, 0, 0
.hword  9 << 5 | 21,  7 << 5 |  5, 318, 4, 0, 0

.word 1 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 4,  9 << 5 | 22,  7 << 5 | 20, 2, 1, 0, 0, 16516
