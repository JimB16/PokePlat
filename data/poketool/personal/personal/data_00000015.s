.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 65, 80, 40, 75, 45, 80, BUG, POISON, 45, 159, ((0)|(2<<2)|(0<<4)|(0<<6)|(0<<8)|(1<<10)), NO_ITEM, POISON_BARB, 127, 15, 70, 0, 3, 3, SWARM, CACOPHONY, 0, 2, 0, 0xc4354620, 0x22243e88, 0x134f242a, 3