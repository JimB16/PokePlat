.include "source/macros_asm.s"

.word 1 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8053, 2, 12, 0, 17, 0, 0, 0, 4, 0

.word 4 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,       SPRITE_POKEBALL,  0, 0, 1152,  7138,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 16,  0 << 5 |  2, 0, 0
.hword  1,       SPRITE_POKEBALL,  0, 0, 1153,  7139,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  7,  0 << 5 | 17, 0, 0
.hword  2,                    40, 40, 1,    0,  3502, ORIENT_RIGHT, 2, 0, 0, 6, 1,  0 << 5 |  4,  0 << 5 |  5, 0, 0
.hword  3,                    40, 21, 1,    0,  3503,    ORIENT_UP, 3, 0, 0, 4, 6,  0 << 5 |  1,  0 << 5 | 19, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  2,  0 << 5 |  3, 291, 1, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
