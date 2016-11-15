.include "source/macros_asm.s"

.word 2 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8118, 2, 24, 0, 35, 0, 0, 0, 4, 0
.hword 8119, 2, 5, 0, 24, 0, 0, 0, 4, 0

.word 8 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,       SPRITE_POKEBALL,  0, 0, 1204,  7190,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 | 13,  0 << 5 | 18, 0, 0
.hword  1, SPRITE_ACETRAINERMALE, 50, 1,    0,  3235,  ORIENT_DOWN, 1, 0, 0, 0, 0,  1 << 5 |  1,  1 << 5 | 11, 0, 0
.hword  2, SPRITE_ACETRAINERFEMALE, 43, 1,    0,  5235,  ORIENT_LEFT, 1, 0, 0, 6, 1,  1 << 5 |  1,  1 << 5 | 12, 0, 0
.hword  3, SPRITE_ACETRAINERMALE, 14, 1,    0,  3229,    ORIENT_UP, 3, 0, 0, 0, 0,  0 << 5 | 10,  0 << 5 |  6, 0, 0
.hword  4,        SPRITE_PSYCHIC, 16, 1,    0,  3234,  ORIENT_LEFT, 4, 0, 0, 0, 0,  0 << 5 | 22,  0 << 5 | 29, 0, 0
.hword  5, SPRITE_ACETRAINERMALE, 20, 1,    0,  3224,  ORIENT_DOWN, 2, 0, 0, 0, 6,  1 << 5 |  0,  0 << 5 | 14, 0, 0
.hword  6,       SPRITE_POKEBALL,  0, 0, 1327,  7312,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  1,  0 << 5 | 16, 0, 0
.hword  7,       SPRITE_POKEBALL,  0, 0, 1328,  7313,    ORIENT_UP, 0, 0, 0, 0, 0,  1 << 5 |  3,  1 << 5 |  7, 0, 0

.word 3 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  4,  1 << 5 |  7, 244, 2, 0, 0
.hword  0 << 5 |  6,  1 << 5 | 14, 244, 3, 0, 0
.hword  0 << 5 |  3,  0 << 5 | 22, 244, 4, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
