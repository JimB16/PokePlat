.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 160, 110, 65, 30, 65, 110, NORMAL, NORMAL, 25, 154, ((2)|(0<<2)|(0<<4)|(0<<6)|(0<<8)|(0<<10)), LEFTOVERS, LEFTOVERS, 31, 40, 70, 5, 1, 1, IMMUNITY, THICK_FAT, 0, 4, 0, 0xf7b37625, 0x2881e76, 0xc246a00c, 10