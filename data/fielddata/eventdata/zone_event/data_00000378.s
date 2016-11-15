.include "source/macros_asm.s"

.word 5 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8050, 2, 267, 0, 923, 0, 0, 0, 4, 0
.hword 8049, 2, 264, 0, 897, 0, 0, 0, 4, 0
.hword 8190, 2, 280, 0, 921, 0, 0, 0, 4, 0
.hword 8191, 2, 308, 0, 919, 0, 0, 0, 4, 0
.hword 8192, 2, 272, 0, 917, 0, 0, 0, 4, 0

.word 17 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    46,  4, 1,    0,  3165,  ORIENT_DOWN, 2, 0, 0, 0, 0,  7 << 5 | 11, 28 << 5 | 16, 0, 0
.hword  1,                    47,  2, 1,    0,  3166,    ORIENT_UP, 3, 0, 0, 0, 0,  7 << 5 | 13, 28 << 5 | 26, 0, 0
.hword  2,      SPRITE_FISHERMAN, 16, 1,    0,  3167,  ORIENT_LEFT, 0, 0, 0, 0, 0,  7 << 5 | 26, 28 << 5 | 23, 0, 1
.hword  3,         SPRITE_FATGUY, 14, 1,    0,  3273,    ORIENT_UP, 3, 0, 0, 0, 0,  9 << 5 |  0, 28 << 5 | 19, 0, 1
.hword  4, SPRITE_ACETRAINERMALE, 16, 1,    0,  3169,  ORIENT_LEFT, 3, 0, 0, 0, 0,  9 << 5 | 17, 28 << 5 | 21, 0, 1
.hword  5, SPRITE_ACETRAINERFEMALE,  2, 1,    0,  3170,  ORIENT_LEFT, 3, 0, 0, 0, 0,  8 << 5 | 21, 28 << 5 | 27, 0, 1
.hword  6,                    93,  0, 0,    0,     3,    ORIENT_UP, 0, 0, 0, 0, 0,  9 << 5 | 20, 28 << 5 | 17, 0, 0
.hword  7,       SPRITE_POKEBALL,  0, 0, 1144,  7130,    ORIENT_UP, 0, 0, 0, 0, 0,  7 << 5 | 15, 28 << 5 | 12, 0, 0
.hword  8,       SPRITE_POKEBALL,  0, 0, 1145,  7131,    ORIENT_UP, 0, 0, 0, 0, 0,  9 << 5 |  7, 28 << 5 | 26, 0, 0
.hword  9,       SPRITE_POKEBALL,  0, 0, 1143,  7129,    ORIENT_UP, 0, 0, 0, 0, 0,  8 << 5 |  0, 28 << 5 | 20, 0, 0
.hword 10,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 78, 0, 0, 0, 0,  8 << 5 | 22, 28 << 5 | 22, 0, 0
.hword 11,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 79, 0, 0, 0, 0,  8 << 5 | 23, 28 << 5 | 22, 0, 0
.hword 12,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 80, 0, 0, 0, 0,  8 << 5 | 24, 28 << 5 | 22, 0, 0
.hword 13,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 81, 0, 0, 0, 0,  8 << 5 | 25, 28 << 5 | 22, 0, 0
.hword 14,       SPRITE_POKEBALL,  0, 0, 1115,  7101,    ORIENT_UP, 0, 0, 0, 0, 0,  7 << 5 | 26, 28 << 5 |  6, 0, 0
.hword 15,                    40,  0, 0,  639,     1,  ORIENT_DOWN, 0, 0, 0, 0, 0,  9 << 5 | 18, 28 << 5 | 16, 0, 0
.hword 16,                    40,  0, 0,  640,     2,  ORIENT_DOWN, 0, 0, 0, 0, 0,  9 << 5 | 19, 28 << 5 | 16, 0, 0

.word 3 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  8 << 5 |  5, 28 << 5 |  4, 394, 0, 0, 0
.hword  9 << 5 | 18, 28 << 5 | 13, 393, 0, 0, 0
.hword  9 << 5 | 19, 28 << 5 | 13, 393, 0, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
