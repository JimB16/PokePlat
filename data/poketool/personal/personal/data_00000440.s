.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 100, 5, 5, 30, 15, 65, NORMAL, NORMAL, 130, 255, ((1)|(0<<2)|(0<<4)|(0<<6)|(0<<8)|(0<<10)), OVAL_STONE, LUCKY_PUNCH, 254, 40, 140, 4, 15, 15, NATURAL_CURE, SERENE_GRACE, 0, 9, 0, 0xb43b8664, 0xa801e26, 0x2763124, 0