.include "source/macros_asm.s"

.word 2 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8156, 2, 179, 0, 594, 0, 0, 0, 4, 0
.hword 8155, 2, 177, 0, 578, 0, 0, 0, 4, 0

.word 5 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 10, 0, 0, 0, 0,  5 << 5 |  8, 18 << 5 | 18, 0, 0
.hword  1,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 11, 0, 0, 0, 0,  5 << 5 |  9, 18 << 5 | 18, 0, 0
.hword  2,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 12, 0, 0, 0, 0,  5 << 5 | 10, 18 << 5 | 18, 0, 0
.hword  3,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 13, 0, 0, 0, 0,  5 << 5 | 11, 18 << 5 | 18, 0, 0
.hword  4,                    93,  0, 0,    0,     1,    ORIENT_UP, 0, 0, 0, 0, 0,  5 << 5 | 12, 18 << 5 | 12, 0, 0

.word 3 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  5 << 5 |  9, 18 << 5 | 11, 205, 0, 0, 0
.hword  5 << 5 |  8, 18 << 5 | 11, 205, 0, 0, 0
.hword  5 << 5 | 10, 18 << 5 | 11, 205, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
