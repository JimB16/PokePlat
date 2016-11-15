.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 2 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,       SPRITE_POKEBALL,  0, 0, 1257,  7243,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 11,  0 << 5 | 18, 0, 0
.hword  1,                    84,  0, 0,   32, 10002,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  5,  0 << 5 | 17, 0, 0

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  6,  0 << 5 |  3, 281, 1, 0, 0
.hword  0 << 5 | 14,  0 << 5 |  3, 283, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
