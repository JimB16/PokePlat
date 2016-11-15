.include "source/macros_asm.s"

.word 21 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 3, 0, 1, 0, 4, 0, 0, 0, 0, 0
.hword 4, 0, 3, 0, 9, 0, 0, 0, 4, 0
.hword 3, 0, 2, 0, 4, 0, 0, 0, 0, 0
.hword 3, 0, 3, 0, 4, 0, 0, 0, 0, 0
.hword 3, 0, 4, 0, 4, 0, 0, 0, 0, 0
.hword 3, 0, 5, 0, 4, 0, 0, 0, 0, 0
.hword 3, 0, 6, 0, 4, 0, 0, 0, 0, 0
.hword 4, 0, 2, 0, 9, 0, 0, 0, 4, 0
.hword 4, 0, 1, 0, 9, 0, 0, 0, 4, 0
.hword 4, 0, 4, 0, 9, 0, 0, 0, 4, 0
.hword 3, 0, 15, 0, 4, 0, 0, 0, 4, 0
.hword 3, 0, 16, 0, 4, 0, 0, 0, 0, 0
.hword 3, 0, 17, 0, 4, 0, 0, 0, 0, 0
.hword 3, 0, 18, 0, 4, 0, 0, 0, 0, 0
.hword 3, 0, 19, 0, 4, 0, 0, 0, 0, 0
.hword 3, 0, 20, 0, 4, 0, 0, 0, 0, 0
.hword 4, 0, 4, 0, 8, 0, 0, 0, 4, 0
.hword 4, 0, 4, 0, 7, 0, 0, 0, 4, 0
.hword 4, 0, 1, 0, 7, 0, 0, 0, 4, 0
.hword 4, 0, 2, 0, 7, 0, 0, 0, 4, 0
.hword 4, 0, 3, 0, 7, 0, 0, 0, 4, 0

.word 3 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   163,  0, 0,    0,     1,  ORIENT_LEFT, 0, 0, 0, 0, 1,  0 << 5 | 14,  0 << 5 |  9, 0, 0
.hword  1,           SPRITE_LASS,  0, 0,    0,     2,    ORIENT_UP, 0, 0, 0, 1, 1,  0 << 5 |  2,  0 << 5 |  5, 0, 0
.hword  2,                   137, 14, 0,  390,     5,    ORIENT_UP, 0, 0, 0, 0, 1,  0 << 5 | 16,  0 << 5 |  5, 0, 0

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 11,  0 << 5 | 11, 33, 3, 0, 0
.hword  0 << 5 | 11,  0 << 5 |  4, 39, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
