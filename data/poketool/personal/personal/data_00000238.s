.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 45, 30, 15, 65, 85, 65, ICE, PSYCHIC, 45, 87, ((0)|(0<<2)|(0<<4)|(0<<6)|(1<<8)|(0<<10)), ASPEAR_BERRY, ASPEAR_BERRY, 254, 25, 70, 0, 15, 15, OBLIVIOUS, FOREWARN, 0, 9, 0, 0xb413b26c, 0x280be01, 0xa7630a6, 0