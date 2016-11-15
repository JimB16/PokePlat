.include "source/macros_asm.s"

.word 1 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8052, 2, 11, 0, 9, 0, 0, 0, 4, 0

.word 4 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,       SPRITE_POKEBALL,  0, 0, 1151,  7137,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 21,  0 << 5 | 15, 0, 0
.hword  1,       SPRITE_POKEBALL,  0, 0, 1150,  7136,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  2,  0 << 5 | 17, 0, 0
.hword  2,      SPRITE_PICNICKER,  4, 1,    0,  3456,    ORIENT_UP, 3, 0, 0, 0, 0,  0 << 5 | 17,  0 << 5 | 16, 0, 0
.hword  3,       SPRITE_POKEBALL,  0, 0, 1304,  7289,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  7,  0 << 5 | 21, 0, 0

.word 3 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  6,  0 << 5 | 26, 293, 0, 0, 0
.hword  0 << 5 | 16,  0 << 5 | 26, 292, 0, 0, 0
.hword  0 << 5 |  2,  0 << 5 |  3, 289, 2, 0, 0

.word 1 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
.hword 2,  0 << 5 | 11,  0 << 5 | 23, 1, 1, 0, 0, 16384
