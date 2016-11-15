.include "source/macros_asm.s"

.word 2 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 6, 0, 16, 0, 3, 0, 0, 0, 0, 0
.hword 7, 0, 16, 0, 6, 0, 0, 0, 4, 0

.word 4 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,       SPRITE_POKEBALL,  0, 0, 1071,  7057,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 21,  0 << 5 |  3, 0, 0
.hword  1,                    82,  0, 0,    0,     2,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 16,  0 << 5 |  8, 0, 0
.hword  2,                   164,  0, 0,    0,     3,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 15,  0 << 5 |  8, 0, 0
.hword  3,                    34,  0, 0,  651,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 17,  0 << 5 |  4, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 16,  0 << 5 | 10, 368, 4, 0, 0

.word 1 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 5,  0 << 5 | 16,  0 << 5 |  4, 1, 1, 0, 0, 16662
