.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 90, 120, 120, 50, 60, 60, GROUND, GROUND, 60, 189, ((0)|(1<<2)|(1<<4)|(0<<6)|(0<<8)|(0<<10)), NO_ITEM, PASSHO_BERRY, 127, 20, 70, 0, 5, 5, STURDY, CACOPHONY, 0, 7, 0, 0x86514630, 0x2001e50, 0x824eaa58, 2