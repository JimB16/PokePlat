.include "source/macros_asm.s"

.word 2 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8807, 0, 62, 0, 106, 0, 0, 0, 0, 0
.hword 8214, 2, 47, 0, 120, 0, 0, 0, 4, 0

.word 4 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,       SPRITE_POKEBALL,  0, 0, 1086,  7072,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 15,  3 << 5 | 16, 0, 0
.hword  1,                    93,  0, 0,    0,     2,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 31,  3 << 5 | 17, 0, 0
.hword  2,      SPRITE_YOUNGSTER, 10, 0,    0,     1,  ORIENT_DOWN, 0, 0, 0, 0, 0,  1 << 5 | 30,  3 << 5 | 19, 0, 0
.hword  1,                    93,  0, 0,  509, 65535,    ORIENT_UP, 0, 0, 0, 0, 0,  2 << 5 |  8,  3 << 5 | 17, 0, 0

.word 0 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
