.include "source/macros_asm.s"

@ Pkmn, Move1, Move2, Move3, Move4, EVs, Nature, Item, ?, ?
btpoke MACHAMP, ROCK_SLIDE, ROCK_SMASH, ROCK_CLIMB, ROCK_TOMB, 0|EV_HP|EV_ATK|EV_DEF|(0<<6), LAX, REPEAT_BALL, 1, 0
