.include "source/macros_asm.s"

.word 2 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8000, 2, 236, 0, 651, 0, 0, 0, 4, 0
.hword 4, 0, 243, 0, 654, 0, 0, 0, 0, 0

.word 8 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                   124, 15, 0,  398,     3,  ORIENT_DOWN, 3, 0, 0, 0, 0,  7 << 5 | 19, 20 << 5 | 15, 0, 0
.hword  1,                    93,  0, 0,    0,     5,    ORIENT_UP, 0, 0, 0, 0, 0,  7 << 5 | 16, 20 << 5 | 19, 0, 0
.hword  6,      SPRITE_GUIDEPOST,  0, 0,  347, 65535,    ORIENT_UP, 2, 0, 0, 0, 0,  6 << 5 | 23, 20 << 5 | 19, 0, 0
.hword  3,       SPRITE_POKEBALL,  0, 0, 1029,  7015,    ORIENT_UP, 0, 0, 0, 0, 0,  7 << 5 | 18, 20 << 5 |  4, 0, 0
.hword  4,                   185,  0, 0,  523,     6,  ORIENT_DOWN, 3, 0, 0, 0, 0,  7 << 5 | 17, 20 << 5 | 20, 0, 0
.hword  5,       SPRITE_POKEBALL,  0, 0, 1266,  7252,    ORIENT_UP, 0, 0, 0, 0, 0,  7 << 5 | 22, 20 << 5 | 20, 0, 0
.hword  6,                   213, 14, 0,  506,     0,    ORIENT_UP, 3, 0, 0, 0, 0,  7 << 5 | 18, 20 << 5 | 19, 0, 0
.hword  7,       SPRITE_POKEBALL,  0, 0, 1333,  7318,    ORIENT_UP, 0, 0, 0, 0, 0,  7 << 5 |  8, 20 << 5 |  9, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  7 << 5 | 19, 20 << 5 | 14, 201, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
