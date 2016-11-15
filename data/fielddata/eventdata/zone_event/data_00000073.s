.include "source/macros_asm.s"

.word 1 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 2, 0, 16, 0, 2, 0, 0, 0, 0, 0

.word 4 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   124, 17, 0,  509,     1, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 | 12,  0 << 5 |  5, 0, 0
.hword  1,                   125, 14, 1,  509,  3422,    ORIENT_UP, 3, 0, 0, 0, 0,  0 << 5 |  8,  0 << 5 |  7, 0, 0
.hword  2,  SPRITE_MALESCIENTIST, 17, 1,  509,  3830, ORIENT_RIGHT, 3, 0, 0, 0, 0,  0 << 5 | 18,  0 << 5 |  5, 0, 0
.hword  3,       SPRITE_POKEBALL,  0, 0, 1278,  7263,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 10,  0 << 5 |  8, 0, 0

.word 4 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  8,  0 << 5 |  3, 73, 1, 0, 0
.hword  0 << 5 | 20,  0 << 5 |  3, 75, 0, 0, 0
.hword  0 << 5 |  2,  0 << 5 |  3, 73, 3, 0, 0
.hword  0 << 5 | 14,  0 << 5 |  3, 75, 1, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
