.include "source/macros_asm.s"

.word 2 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8808, 0, 69, 0, 106, 0, 0, 0, 0, 0
.hword 8215, 2, 91, 0, 113, 0, 0, 0, 4, 0

.word 6 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,       SPRITE_POKEBALL,  0, 0, 1087,  7073,    ORIENT_UP, 0, 0, 0, 0, 0,  2 << 5 | 27,  3 << 5 |  9, 0, 0
.hword  1,                    93,  0, 0,    0,     2,    ORIENT_UP, 0, 0, 0, 0, 0,  2 << 5 |  8,  3 << 5 | 17, 0, 0
.hword  2, SPRITE_ACETRAINERMALE,  3, 0,    0,     1,    ORIENT_UP, 0, 0, 0, 1, 1,  2 << 5 | 10,  3 << 5 | 19, 0, 0
.hword  2,      SPRITE_YOUNGSTER, 10, 0,  508, 65535,  ORIENT_DOWN, 0, 0, 0, 0, 0,  1 << 5 | 30,  3 << 5 | 19, 0, 0
.hword  1,                    93,  0, 0,  508, 65535,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 31,  3 << 5 | 17, 0, 0
.hword  2,                    93,  0, 0,  507, 65535,    ORIENT_UP, 0, 0, 0, 0, 0,  2 << 5 |  8,  2 << 5 | 22, 0, 0

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  2 << 5 |  4,  3 << 5 | 22, 125, 2, 0, 0
.hword  2 << 5 |  5,  3 << 5 | 22, 125, 2, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
