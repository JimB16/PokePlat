.include "source/macros_asm.s"

.word 0 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?

.word 21 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,          SPRITE_HIKER,  0, 0,    0,     3,  ORIENT_DOWN, 0, 0, 0, 0, 0,  9 << 5 | 23, 11 << 5 |  6, 0, 0
.hword  1,          SPRITE_HIKER,  0, 0,    0,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0, 12 << 5 |  8,  3 << 5 | 25, 0, 0
.hword  2,          SPRITE_HIKER,  0, 0,    0,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  2 << 5 |  9,  4 << 5 |  5, 0, 0
.hword  3,          SPRITE_HIKER,  0, 0,    0,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0, 10 << 5 | 23,  4 << 5 | 23, 0, 0
.hword  4,          SPRITE_HIKER,  0, 0,    0,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  6 << 5 |  8,  5 << 5 | 25, 0, 0
.hword  5,          SPRITE_HIKER,  0, 0,    0,     3,  ORIENT_DOWN, 0, 0, 0, 0, 0,  5 << 5 |  7, 12 << 5 |  8, 0, 0
.hword  6,          SPRITE_HIKER,  0, 0,    0,     3,  ORIENT_DOWN, 0, 0, 0, 0, 0, 13 << 5 | 21, 12 << 5 | 16, 0, 0
.hword  7,          SPRITE_HIKER,  0, 0,    0,     3,  ORIENT_DOWN, 0, 0, 0, 0, 0,  3 << 5 | 23, 13 << 5 |  6, 0, 0
.hword  8,          SPRITE_HIKER,  0, 0,    0,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  7 << 5 | 23,  7 << 5 | 25, 0, 0
.hword  9,          SPRITE_HIKER,  0, 0,    0,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  4 << 5 | 23,  8 << 5 |  8, 0, 0
.hword 10,          SPRITE_HIKER,  0, 0,    0,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0, 11 << 5 |  8,  8 << 5 | 23, 0, 0
.hword 11,          SPRITE_HIKER,  0, 0,    0,     4,  ORIENT_DOWN, 0, 0, 0, 0, 0,  8 << 5 |  8,  9 << 5 |  6, 0, 0
.hword 12,          SPRITE_HIKER,  0, 0,    0,     3,  ORIENT_DOWN, 0, 0, 0, 0, 0,  7 << 5 | 23,  8 << 5 |  8, 0, 0
.hword 13,          SPRITE_HIKER,  0, 0,    0,     3,  ORIENT_DOWN, 0, 0, 0, 0, 0,  8 << 5 | 23, 14 << 5 |  8, 0, 0
.hword 14,          SPRITE_HIKER,  0, 0,    0,     3,  ORIENT_DOWN, 0, 0, 0, 0, 0,  7 << 5 |  8,  2 << 5 | 23, 0, 0
.hword 15,          SPRITE_HIKER,  0, 0,    0,     3,  ORIENT_DOWN, 0, 0, 0, 0, 0,  8 << 5 |  8,  8 << 5 | 23, 0, 0
.hword 16,          SPRITE_ROARK, 15, 0,  423,     6,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  1,  0 << 5 |  1, 0, 0
.hword 17,          SPRITE_HIKER,  0, 0,    0,     5,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  4,  0 << 5 |  1, 0, 0
.hword 18,          SPRITE_HIKER,  0, 0,    0,     5,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  4,  0 << 5 |  2, 0, 0
.hword 19,          SPRITE_HIKER,  0, 0,    0,     5,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  4,  0 << 5 |  3, 0, 0
.hword 20,          SPRITE_HIKER,  0, 0,    0,     5,  ORIENT_DOWN, 0, 0, 0, 0, 0,  0 << 5 |  4,  0 << 5 |  4, 0, 0

.word 0 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
