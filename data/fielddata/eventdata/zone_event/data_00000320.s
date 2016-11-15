.include "source/macros_asm.s"

.word 1 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8160, 2, 86, 0, 849, 0, 0, 0, 4, 0

.word 1 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    96,  0, 0,    0,     4,    ORIENT_UP, 3, 0, 0, 0, 0,  2 << 5 | 15, 26 << 5 | 14, 0, 0

.word 4 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  2 << 5 | 17, 26 << 5 | 11, 311, 1, 0, 0
.hword  2 << 5 | 16, 26 << 5 | 11, 311, 0, 0, 0
.hword  2 << 5 | 16, 26 << 5 | 11, 312, 1, 0, 0
.hword  2 << 5 | 17, 26 << 5 | 11, 312, 2, 0, 0

.word 1 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 3,  2 << 5 | 16, 26 << 5 | 12, 2, 1, 0, 0, 16514
