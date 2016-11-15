.include "source/macros_asm.s"

.word 2 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8803, 0, 62, 0, 38, 0, 0, 0, 0, 0
.hword 8210, 2, 33, 0, 37, 0, 0, 0, 4, 0

.word 5 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,       SPRITE_POKEBALL,  0, 0, 1080,  7066,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 16,  1 << 5 |  6, 0, 0
.hword  1,       SPRITE_POKEBALL,  0, 0, 1081,  7067,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 17,  1 << 5 | 22, 0, 0
.hword  2,                    93,  0, 0,    0,     1,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 29,  1 << 5 | 14, 0, 0
.hword  3,                    50,  2, 0,    0,     2, ORIENT_RIGHT, 0, 0, 0, 0, 0,  1 << 5 | 23,  1 << 5 | 26, 0, 0
.hword  1,                    93,  0, 0,  505, 65535,    ORIENT_UP, 0, 0, 0, 0, 0,  2 << 5 |  6,  1 << 5 | 14, 0, 0

.word 0 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
