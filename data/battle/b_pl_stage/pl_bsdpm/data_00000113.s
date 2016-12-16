.include "source/macros_asm.s"

@ Pkmn, Move1, Move2, Move3, Move4, EVs, Nature, Item, ?, ?
btpoke TRAPINCH, EARTHQUAKE, QUICK_ATTACK, STRENGTH, DOUBLE_TEAM, 0|EV_ATK|EV_SA|(0<<6), JOLLY, SOFT_SAND, 0, 0
