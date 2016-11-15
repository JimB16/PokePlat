.include "source/macros_asm.s"

.word 22 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 5, 0, 9, 0, 3, 0, 0, 0, 0, 0
.hword 5, 0, 10, 0, 3, 0, 0, 0, 0, 0
.hword 6, 0, 11, 0, 3, 0, 0, 0, 0, 0
.hword 6, 0, 12, 0, 3, 0, 0, 0, 4, 0
.hword 7, 0, 17, 0, 3, 0, 0, 0, 4, 0
.hword 7, 0, 18, 0, 3, 0, 0, 0, 0, 0
.hword 8, 0, 19, 0, 3, 0, 0, 0, 0, 0
.hword 8, 0, 20, 0, 3, 0, 0, 0, 0, 0
.hword 9, 0, 15, 0, 9, 0, 0, 0, 4, 0
.hword 9, 0, 16, 0, 9, 0, 0, 0, 0, 0
.hword 10, 0, 17, 0, 9, 0, 0, 0, 0, 0
.hword 10, 0, 18, 0, 9, 0, 0, 0, 0, 0
.hword 11, 0, 19, 0, 9, 0, 0, 0, 0, 0
.hword 11, 0, 20, 0, 9, 0, 0, 0, 0, 0
.hword 12, 0, 14, 0, 2, 0, 0, 0, 0, 0
.hword 9, 0, 15, 0, 8, 0, 0, 0, 4, 0
.hword 9, 0, 15, 0, 7, 0, 0, 0, 4, 0
.hword 9, 0, 16, 0, 7, 0, 0, 0, 4, 0
.hword 10, 0, 17, 0, 7, 0, 0, 0, 4, 0
.hword 10, 0, 18, 0, 7, 0, 0, 0, 4, 0
.hword 11, 0, 19, 0, 7, 0, 0, 0, 4, 0
.hword 11, 0, 20, 0, 7, 0, 0, 0, 4, 0

.word 5 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0, SPRITE_FEMALESCIENTIST,  3, 0,    0,     3,  ORIENT_DOWN, 0, 0, 0, 1, 1,  0 << 5 | 15,  0 << 5 |  5, 0, 0
.hword  1,      SPRITE_YOUNGSTER, 15, 0,    0,     4,  ORIENT_DOWN, 0, 0, 0, 1, 1,  0 << 5 |  3,  0 << 5 |  7, 0, 0
.hword  2,                    99, 14, 0,  439,     0,    ORIENT_UP, 0, 0, 0, 1, 1,  0 << 5 |  8,  0 << 5 | 10, 0, 0
.hword  3,                   101, 14, 0,  438,     0,    ORIENT_UP, 0, 0, 0, 1, 1,  0 << 5 |  7,  0 << 5 | 10, 0, 0
.hword  4,          SPRITE_BARRY, 17, 0,  440,     0, ORIENT_RIGHT, 0, 0, 0, 1, 1,  0 << 5 |  2,  0 << 5 |  3, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  4,  0 << 5 |  3, 39, 1, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
