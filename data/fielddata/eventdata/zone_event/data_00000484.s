.include "source/macros_asm.s"

.word 2 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8806, 0, 69, 0, 80, 0, 0, 0, 0, 0
.hword 8213, 2, 74, 0, 76, 0, 0, 0, 4, 0

.word 5 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,       SPRITE_POKEBALL,  0, 0, 1085,  7071,    ORIENT_UP, 0, 0, 0, 0, 0,  2 << 5 | 16,  2 << 5 | 14, 0, 0
.hword  1,       SPRITE_POKEBALL,  0, 0, 1083,  7069,    ORIENT_UP, 0, 0, 0, 0, 0,  2 << 5 | 19,  2 << 5 | 22, 0, 0
.hword  2,                    93,  0, 0,    0,     2,    ORIENT_UP, 0, 0, 0, 0, 0,  2 << 5 |  7,  2 << 5 | 22, 0, 0
.hword  3,     SPRITE_BUGCATCHER, 11, 0,    0,     1,  ORIENT_DOWN, 0, 0, 0, 0, 0,  2 << 5 | 19,  2 << 5 | 18, 0, 0
.hword  1,                    93,  0, 0,  506, 65535,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 27,  2 << 5 | 22, 0, 0

.word 0 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
