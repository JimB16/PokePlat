.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 7 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    99, 14, 0,  373,     4,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 16,  1 << 5 | 11, 0, 0
.hword  1,                   101, 14, 0,  404,     5,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 17,  1 << 5 | 11, 0, 0
.hword  2,                   173, 16, 0,  399,     0,  ORIENT_LEFT, 0, 0, 0, 0, 0,  1 << 5 | 25,  1 << 5 | 11, 0, 0
.hword  3,                   173, 14, 0,  399,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 16,  1 << 5 | 19, 0, 0
.hword  4,                   120, 14, 0,  374,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 16,  1 << 5 | 11, 0, 0
.hword  5,          SPRITE_BARRY, 14, 0,  406,     0,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 | 15,  1 << 5 | 22, 0, 0
.hword  6,       SPRITE_POKEBALL,  0, 0, 1253,  7239,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 25,  1 << 5 | 22, 0, 0

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  1 << 5 | 14,  1 << 5 | 22, 334, 1, 0, 0
.hword  1 << 5 | 15,  1 << 5 | 22, 334, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
