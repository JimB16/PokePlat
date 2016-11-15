.include "source/macros_asm.s"

.word 2 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8804, 0, 69, 0, 38, 0, 0, 0, 0, 0
.hword 8211, 2, 90, 0, 39, 0, 0, 0, 4, 0

.word 4 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,       SPRITE_POKEBALL,  0, 0, 1082,  7068,    ORIENT_UP, 0, 0, 0, 0, 0,  2 << 5 | 12,  1 << 5 |  4, 0, 0
.hword  1,                    93,  0, 0,    0,     2,    ORIENT_UP, 0, 0, 0, 0, 0,  2 << 5 |  6,  1 << 5 | 14, 0, 0
.hword  2,                    55,  5, 0,    0,     1,  ORIENT_LEFT, 0, 0, 0, 1, 0,  2 << 5 | 21,  1 << 5 | 11, 0, 0
.hword  2,                    93,  0, 0,  504, 65535,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 29,  1 << 5 | 14, 0, 0

.word 0 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
