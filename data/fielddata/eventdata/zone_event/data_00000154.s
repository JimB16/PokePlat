.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 3 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,  SPRITE_MALESCHOOLKID, 14, 1,    0,  3340,    ORIENT_UP, 3, 0, 0, 0, 0,  0 << 5 |  4,  0 << 5 |  5, 0, 0
.hword  1,         SPRITE_ROCKER, 15, 1,    0,  3300,  ORIENT_DOWN, 2, 0, 0, 0, 0,  0 << 5 | 14,  0 << 5 | 11, 0, 0
.hword  2,                    71, 45, 1,    0,  3330,  ORIENT_DOWN, 1, 0, 0, 0, 0,  0 << 5 | 12,  0 << 5 |  4, 0, 0

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  9,  0 << 5 | 21, 154, 1, 0, 0
.hword  0 << 5 |  9,  0 << 5 |  2, 156, 0, 0, 0

.word 3 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 2,  0 << 5 |  6,  0 << 5 | 13, 1, 1, 0, 0, 16384
.hword 3,  0 << 5 |  6,  0 << 5 |  8, 1, 1, 0, 0, 16384
.hword 3,  0 << 5 | 11,  0 << 5 |  8, 1, 1, 0, 0, 16384
