.include "source/macros_asm.s"

@ Pkmn, Move1, Move2, Move3, Move4, EVs, Nature, Item, ?, ?
btpoke DITTO, TRANSFORM, NO_MOVE, NO_MOVE, NO_MOVE, 0|EV_HP|EV_SA|(0<<6), NAIVE, ANTIDOTE, 1, 0
