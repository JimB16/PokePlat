.include "source/macros_asm.s"

.word 2 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8112, 2, 849, 0, 727, 0, 0, 0, 4, 0
.hword 8267, 2, 842, 0, 656, 0, 0, 0, 4, 0

.word 18 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,                    46,  2, 1,    0,  3182,  ORIENT_DOWN, 5, 0, 0, 0, 0, 26 << 5 |  5, 20 << 5 | 24, 0, 0
.hword  1,                    46,  7, 1,    0,  3183, ORIENT_RIGHT, 3, 0, 0, 0, 0, 26 << 5 | 12, 21 << 5 | 10, 0, 0
.hword  2,                    46, 14, 1,    0,  3184,    ORIENT_UP, 2, 0, 0, 0, 0, 26 << 5 | 29, 20 << 5 | 15, 0, 0
.hword  3,                    46, 16, 1,    0,  3185,  ORIENT_LEFT, 6, 0, 0, 0, 0, 26 << 5 | 22, 21 << 5 | 17, 0, 0
.hword  4,                    46, 20, 1,    0,  3186,  ORIENT_LEFT, 3, 0, 0, 6, 0, 26 << 5 | 18, 19 << 5 | 14, 0, 0
.hword  5,                    46, 17, 5,    0,  3187, ORIENT_RIGHT, 5, 0, 0, 0, 0, 26 << 5 | 12, 21 << 5 | 26, 0, 0
.hword  6,                    47, 20, 1,    0,  3188, ORIENT_RIGHT, 3, 0, 0, 8, 0, 26 << 5 | 15, 22 << 5 | 19, 0, 0
.hword  7,                    47,  2, 1,    0,  3189,  ORIENT_DOWN, 2, 0, 0, 0, 0, 26 << 5 | 19, 22 << 5 | 11, 0, 0
.hword  8,                    47, 17, 1,    0,  3190, ORIENT_RIGHT, 6, 0, 0, 0, 0, 26 << 5 | 15, 21 << 5 | 17, 0, 0
.hword  9,                    47, 20, 6,    0,  3191, ORIENT_RIGHT, 4, 5, 0, 5, 0, 26 << 5 | 16, 20 << 5 | 28, 0, 0
.hword 10,                    47, 24, 1,    0,  3192,  ORIENT_LEFT, 3, 0, 0, 7, 5, 26 << 5 | 23, 19 << 5 | 28, 0, 0
.hword 11,                    47,  6, 1,    0,  3193,  ORIENT_LEFT, 4, 0, 0, 0, 0, 26 << 5 | 11, 20 << 5 |  2, 0, 0
.hword 12,       SPRITE_POKEBALL,  0, 0, 1194,  7180,    ORIENT_UP, 0, 0, 0, 0, 0, 26 << 5 |  8, 21 << 5 | 12, 0, 0
.hword 13,       SPRITE_POKEBALL,  0, 0, 1192,  7178,    ORIENT_UP, 0, 0, 0, 0, 0, 26 << 5 | 18, 20 << 5 |  9, 0, 0
.hword 14,                    56, 15, 1,    0,  3481,  ORIENT_DOWN, 2, 0, 0, 0, 0, 26 << 5 | 15, 20 << 5 | 15, 0, 0
.hword  9,                   167,  7, 0,  150, 65535,    ORIENT_UP, 0, 0, 0, 0, 0, 26 << 5 | 21, 23 << 5 |  4, 0, 0
.hword 16,       SPRITE_POKEBALL,  0, 0, 1193,  7179,    ORIENT_UP, 0, 0, 0, 0, 0, 26 << 5 | 10, 19 << 5 | 28, 0, 0
.hword 17,       SPRITE_POKEBALL,  0, 0, 1316,  7301,    ORIENT_UP, 0, 0, 0, 0, 0, 26 << 5 | 26, 19 << 5 | 22, 0, 0

.word 0 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
