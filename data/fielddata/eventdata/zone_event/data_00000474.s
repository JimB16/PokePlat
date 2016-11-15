.include "source/macros_asm.s"

.word 10 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 3, 0, 10, 0, 9, 0, 0, 0, 0, 0
.hword 3, 0, 11, 0, 9, 0, 0, 0, 0, 0
.hword 3, 0, 17, 0, 9, 0, 0, 0, 0, 0
.hword 3, 0, 18, 0, 9, 0, 0, 0, 0, 0
.hword 3, 0, 21, 0, 9, 0, 0, 0, 0, 0
.hword 3, 0, 22, 0, 9, 0, 0, 0, 0, 0
.hword 3, 0, 25, 0, 9, 0, 0, 0, 0, 0
.hword 3, 0, 26, 0, 9, 0, 0, 0, 0, 0
.hword 3, 0, 29, 0, 9, 0, 0, 0, 0, 0
.hword 3, 0, 30, 0, 9, 0, 0, 0, 0, 0

.word 3 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,  SPRITE_MALESCIENTIST,  3, 0,  567,     1,  ORIENT_LEFT, 0, 0, 0, 2, 0,  0 << 5 |  8,  0 << 5 | 13, 0, 0
.hword  1, SPRITE_FEMALESCIENTIST,  3, 0,  567,     2,  ORIENT_LEFT, 0, 0, 0, 0, 3,  1 << 5 |  4,  0 << 5 | 10, 0, 0
.hword  2,       SPRITE_POKEBALL,  0, 0, 1311,  7296,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  6,  0 << 5 |  8, 0, 0

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  1,  0 << 5 | 11, 308, 1, 0, 0
.hword  1 << 5 |  4,  0 << 5 |  2, 494, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
