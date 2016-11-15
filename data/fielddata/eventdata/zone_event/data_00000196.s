.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 4 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    40,  0, 0,    0,     2, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  7,  0 << 5 |  4, 0, 0
.hword  1,       SPRITE_POKEBALL,  0, 0, 1249,  7235,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 19,  0 << 5 |  4, 0, 0
.hword  2,     SPRITE_LITTLEGIRL,  2, 0,    0,     3, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 |  6,  0 << 5 |  3, 0, 0
.hword  3,          SPRITE_HIKER, 17, 0,  712,     4, ORIENT_RIGHT, 0, 0, 0, 0, 0,  0 << 5 | 13,  0 << 5 |  4, 0, 0

.word 6 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 | 11,  0 << 5 |  1, 45, 12, 0, 0
.hword  0 << 5 | 12,  0 << 5 |  1, 45, 13, 0, 0
.hword  0 << 5 | 13,  0 << 5 |  1, 45, 14, 0, 0
.hword  0 << 5 | 12,  0 << 5 | 21, 199, 0, 0, 0
.hword  0 << 5 | 11,  0 << 5 | 21, 199, 0, 0, 0
.hword  0 << 5 | 13,  0 << 5 | 21, 199, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
