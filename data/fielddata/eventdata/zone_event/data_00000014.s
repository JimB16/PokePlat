.include "source/macros_asm.s"

.word 11 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 2, 0, 5, 0, 4, 0, 0, 0, 0, 0
.hword 3, 0, 9, 0, 2, 0, 0, 0, 0, 0
.hword 4, 0, 11, 0, 2, 0, 0, 0, 0, 0
.hword 5, 0, 13, 0, 2, 0, 0, 0, 0, 0
.hword 6, 0, 15, 0, 2, 0, 0, 0, 0, 0
.hword 7, 0, 17, 0, 2, 0, 0, 0, 0, 0
.hword 8, 0, 10, 0, 8, 0, 0, 0, 0, 0
.hword 9, 0, 12, 0, 8, 0, 0, 0, 0, 0
.hword 10, 0, 14, 0, 8, 0, 0, 0, 0, 0
.hword 11, 0, 16, 0, 8, 0, 0, 0, 0, 0
.hword 12, 0, 18, 0, 8, 0, 0, 0, 0, 0

.word 3 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,          SPRITE_HIKER, 15, 0,    0,     1,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  3,  0 << 5 |  5, 0, 0
.hword  1,    SPRITE_GENERICMALE,  3, 0,    0,    13,    ORIENT_UP, 0, 0, 0, 1, 0,  0 << 5 | 15,  0 << 5 | 10, 0, 0
.hword  2,     SPRITE_LITTLEGIRL,  3, 0,    0,    14,    ORIENT_UP, 0, 0, 0, 10, 0,  0 << 5 | 18,  0 << 5 | 10, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  3,  0 << 5 | 13, 12, 2, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
