.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 144, 120, 60, 50, 40, 60, FIGHTING, FIGHTING, 200, 184, ((2)|(0<<2)|(0<<4)|(0<<6)|(0<<8)|(0<<10)), NO_ITEM, KINGS_ROCK, 63, 20, 70, 2, EGGGROUP_HUMANLIKE, EGGGROUP_HUMANLIKE, THICK_FAT, GUTS, 0, 5, 0, 0xce1346a1, 0x2c81e40, 0xc24ea04a, 10