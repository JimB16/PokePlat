.include "source/macros_asm.s"

.word 4 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 4, 0, 11, 0, 12, 0, 0, 0, 0, 0
.hword 4, 0, 10, 0, 12, 0, 0, 0, 0, 0
.hword 4, 0, 12, 0, 12, 0, 0, 0, 0, 0
.hword 6, 0, 11, 0, 14, 0, 0, 0, 4, 0

.word 2 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   160,  0, 0,  592,     2,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 | 11,  0 << 5 | 14, 0, 0
.hword  1,       SPRITE_POKEBALL,  0, 0,  632,     3,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 11,  0 << 5 | 13, 0, 0

.word 4 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 11,  0 << 5 |  1, 268, 2, 0, 0
.hword  0 << 5 | 20,  0 << 5 | 11, 268, 3, 0, 0
.hword  0 << 5 | 11,  0 << 5 | 20, 268, 0, 0, 0
.hword  0 << 5 |  2,  0 << 5 | 11, 268, 1, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
