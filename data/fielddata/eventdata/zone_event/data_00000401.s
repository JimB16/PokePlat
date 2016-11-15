.include "source/macros_asm.s"

.word 6 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8, 0, 3, 0, 2, 0, 0, 0, 0, 0
.hword 9, 0, 4, 0, 2, 0, 0, 0, 0, 0
.hword 10, 0, 5, 0, 2, 0, 0, 0, 0, 0
.hword 11, 0, 6, 0, 2, 0, 0, 0, 0, 0
.hword 12, 0, 11, 0, 2, 0, 0, 0, 0, 0
.hword 14, 0, 20, 0, 2, 0, 0, 0, 0, 0

.word 5 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    99, 15, 0,  408,     3,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  7,  0 << 5 |  5, 0, 0
.hword  1,  SPRITE_MALESCIENTIST,  3, 0,    0,     5,  ORIENT_DOWN, 0, 0, 0, 2, 0,  0 << 5 |  3,  0 << 5 | 12, 0, 0
.hword  2, SPRITE_FEMALESCIENTIST, 10, 0,    0,     6,  ORIENT_DOWN, 0, 0, 0, 2, 0,  0 << 5 | 10,  0 << 5 | 12, 0, 0
.hword  3,                   101, 15, 0,  409, 10300,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  7,  0 << 5 | 14, 0, 0
.hword  4,                   166, 14, 0,  554,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  7,  0 << 5 | 14, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  7,  0 << 5 | 15, 418, 2, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
