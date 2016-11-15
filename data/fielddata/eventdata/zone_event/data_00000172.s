.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 3 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    26,  0, 0,    0,     1,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 |  4, 0, 0
.hword  1,                    15,  8, 0,    0,     5,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  3,  0 << 5 |  6, 0, 0
.hword  2, SPRITE_ACETRAINERFEMALE,  8, 0,    0,     6,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  9,  0 << 5 |  8, 0, 0

.word 3 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  8,  0 << 5 | 12, 172, 0, 0, 0
.hword  0 << 5 |  2,  0 << 5 | 10, 174, 0, 0, 0
.hword  0 << 5 | 14,  0 << 5 | 10, 483, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
