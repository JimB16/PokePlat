.include "source/macros_asm.s"

.word 35 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 2, 0, 1, 0, 4, 0, 0, 0, 0, 0
.hword 2, 0, 2, 0, 4, 0, 0, 0, 4, 0
.hword 3, 0, 1, 0, 9, 0, 0, 0, 0, 0
.hword 3, 0, 2, 0, 9, 0, 0, 0, 0, 0
.hword 3, 0, 3, 0, 9, 0, 0, 0, 0, 0
.hword 3, 0, 4, 0, 9, 0, 0, 0, 4, 0
.hword 3, 0, 13, 0, 9, 0, 0, 0, 4, 0
.hword 3, 0, 14, 0, 9, 0, 0, 0, 0, 0
.hword 3, 0, 15, 0, 9, 0, 0, 0, 0, 0
.hword 3, 0, 16, 0, 9, 0, 0, 0, 0, 0
.hword 3, 0, 17, 0, 9, 0, 0, 0, 0, 0
.hword 3, 0, 18, 0, 9, 0, 0, 0, 0, 0
.hword 3, 0, 19, 0, 9, 0, 0, 0, 0, 0
.hword 3, 0, 20, 0, 9, 0, 0, 0, 0, 0
.hword 2, 0, 15, 0, 4, 0, 0, 0, 4, 0
.hword 2, 0, 16, 0, 4, 0, 0, 0, 0, 0
.hword 2, 0, 17, 0, 4, 0, 0, 0, 0, 0
.hword 2, 0, 18, 0, 4, 0, 0, 0, 0, 0
.hword 2, 0, 19, 0, 4, 0, 0, 0, 0, 0
.hword 2, 0, 20, 0, 4, 0, 0, 0, 0, 0
.hword 4, 0, 13, 0, 3, 0, 0, 0, 0, 0
.hword 3, 0, 4, 0, 8, 0, 0, 0, 4, 0
.hword 3, 0, 4, 0, 7, 0, 0, 0, 4, 0
.hword 3, 0, 3, 0, 7, 0, 0, 0, 4, 0
.hword 3, 0, 2, 0, 7, 0, 0, 0, 4, 0
.hword 3, 0, 1, 0, 7, 0, 0, 0, 4, 0
.hword 3, 0, 13, 0, 8, 0, 0, 0, 4, 0
.hword 3, 0, 13, 0, 7, 0, 0, 0, 4, 0
.hword 3, 0, 14, 0, 7, 0, 0, 0, 4, 0
.hword 3, 0, 15, 0, 7, 0, 0, 0, 4, 0
.hword 3, 0, 16, 0, 7, 0, 0, 0, 4, 0
.hword 3, 0, 17, 0, 7, 0, 0, 0, 4, 0
.hword 3, 0, 18, 0, 7, 0, 0, 0, 4, 0
.hword 3, 0, 19, 0, 7, 0, 0, 0, 4, 0
.hword 3, 0, 20, 0, 7, 0, 0, 0, 4, 0

.word 2 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,  SPRITE_MALESCHOOLKID,  3, 0,    0,     1,  ORIENT_DOWN, 0, 0, 0, 1, 1,  0 << 5 | 11,  0 << 5 | 10, 0, 0
.hword  1,          SPRITE_HIKER, 14, 0,  713,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  2,  0 << 5 |  5, 0, 0

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  4,  0 << 5 |  4, 38, 1, 0, 0
.hword  0 << 5 | 11,  0 << 5 |  4, 40, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
