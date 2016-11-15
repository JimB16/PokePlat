.include "source/macros_asm.s"

.word 1 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8150, 2, 285, 0, 520, 0, 0, 0, 4, 0

.word 12 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,      SPRITE_FISHERMAN, 17, 1,    0,  3021, ORIENT_RIGHT, 0, 0, 0, 0, 0,  8 << 5 | 18, 16 << 5 | 19, 0, 7
.hword  1,      SPRITE_FISHERMAN, 15, 1,    0,  3022,  ORIENT_DOWN, 0, 0, 0, 0, 0,  8 << 5 | 14, 16 << 5 | 20, 0, 7
.hword  2,      SPRITE_FISHERMAN, 15, 1,    0,  3023,  ORIENT_DOWN, 0, 0, 0, 0, 0,  8 << 5 | 21, 16 << 5 | 23, 0, 7
.hword  3,      SPRITE_GUIDEPOST,  0, 0,    0,     2,    ORIENT_UP, 2, 0, 0, 0, 0,  8 << 5 |  6, 16 << 5 | 11, 0, 0
.hword  4,      SPRITE_GUIDEPOST,  0, 0,    0,     3,    ORIENT_UP, 1, 0, 0, 0, 0,  8 << 5 | 25, 16 << 5 | 20, 0, 0
.hword  5,      SPRITE_FISHERMAN, 15, 0,    0,     1,  ORIENT_DOWN, 0, 0, 0, 0, 0,  8 << 5 | 11, 16 << 5 | 20, 0, 7
.hword  6,       SPRITE_POKEBALL,  0, 0, 1037,  7023,    ORIENT_UP, 0, 0, 0, 0, 0,  8 << 5 | 18, 16 << 5 | 29, 0, 0
.hword  7,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 14, 0, 0, 0, 0,  8 << 5 | 21, 16 << 5 |  7, 0, 0
.hword  8,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 15, 0, 0, 0, 0,  8 << 5 | 22, 16 << 5 |  7, 0, 0
.hword  9,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 16, 0, 0, 0, 0,  8 << 5 | 23, 16 << 5 |  7, 0, 0
.hword 10,      SPRITE_BERRYTREE, 47, 0,    0,  2800,    ORIENT_UP, 17, 0, 0, 0, 0,  8 << 5 | 24, 16 << 5 |  7, 0, 0
.hword  7,       SPRITE_SIGNPOST,  0, 0,   65, 65535,    ORIENT_UP, 11, 0, 0, 0, 0,  9 << 5 |  5, 16 << 5 | 18, 0, 0

.word 2 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  8 << 5 |  3, 16 << 5 | 13, 203, 3, 0, 0
.hword  8 << 5 |  3, 16 << 5 | 12, 203, 2, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
