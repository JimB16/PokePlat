.include "source/macros_asm.s"

.word 2 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8805, 0, 62, 0, 80, 0, 0, 0, 0, 0
.hword 8212, 2, 49, 0, 75, 0, 0, 0, 4, 0

.word 5 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,       SPRITE_POKEBALL,  0, 0, 1084,  7070,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  6,  2 << 5 | 15, 0, 0
.hword  1,                    93,  0, 0,    0,     2,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 27,  2 << 5 | 22, 0, 0
.hword  2,         SPRITE_FATGUY,  4, 0,    0,     1,  ORIENT_DOWN, 0, 0, 0, 0, 1,  1 << 5 |  6,  2 << 5 | 11, 0, 0
.hword  3,                    50,  2, 0,  504, 65535, ORIENT_RIGHT, 0, 0, 0, 0, 0,  1 << 5 | 23,  1 << 5 | 26, 0, 0
.hword  2,                    93,  0, 0,  507, 65535,    ORIENT_UP, 0, 0, 0, 0, 0,  2 << 5 |  7,  2 << 5 | 22, 0, 0

.word 0 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
