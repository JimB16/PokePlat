.include "source/macros_asm.s"

.word 9 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8120, 2, 842, 0, 580, 0, 0, 0, 4, 0
.hword 3, 0, 842, 0, 577, 0, 0, 0, 0, 0
.hword 3, 0, 843, 0, 577, 0, 0, 0, 0, 0
.hword 3, 0, 851, 0, 577, 0, 0, 0, 0, 0
.hword 3, 0, 852, 0, 577, 0, 0, 0, 0, 0
.hword 3, 0, 837, 0, 561, 0, 0, 0, 0, 0
.hword 3, 0, 838, 0, 561, 0, 0, 0, 0, 0
.hword 3, 0, 856, 0, 561, 0, 0, 0, 0, 0
.hword 3, 0, 857, 0, 561, 0, 0, 0, 0, 0

.word 2 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    93,  0, 0,    0,     2,    ORIENT_UP, 0, 0, 0, 0, 0, 26 << 5 | 16, 18 << 5 | 22, 0, 0
.hword  1,      SPRITE_GUIDEPOST,  0, 0,    0,     1,    ORIENT_UP, 3, 0, 0, 0, 0, 26 << 5 | 17, 18 << 5 |  4, 0, 0

.word 8 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword 26 << 5 | 10, 18 << 5 | 22, 173, 0, 0, 0
.hword 26 << 5 | 15, 17 << 5 | 15, 175, 1, 0, 0
.hword 26 << 5 | 19, 18 << 5 | 21, 244, 7, 0, 0
.hword 26 << 5 | 21, 18 << 5 |  6, 244, 8, 0, 0
.hword 26 << 5 | 18, 18 << 5 | 21, 244, 7, 0, 0
.hword 26 << 5 | 20, 18 << 5 | 21, 244, 7, 0, 0
.hword 26 << 5 | 21, 18 << 5 |  5, 244, 8, 0, 0
.hword 26 << 5 | 21, 18 << 5 |  7, 244, 8, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
