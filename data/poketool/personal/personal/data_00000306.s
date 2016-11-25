.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 70, 110, 180, 50, 60, 60, STEEL, ROCK, 45, 205, ((0)|(0<<2)|(3<<4)|(0<<6)|(0<<8)|(0<<10)), NO_ITEM, HARD_STONE, 127, 35, 35, 5, EGGGROUP_MONSTER, EGGGROUP_MONSTER, STURDY, ROCK_HEAD, 0, 7, 0, 0xcff37e37, 0x6881ef6, 0xd646e9db, 10