.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 70, 115, 60, 55, 115, 60, GRASS, DARK, 60, 177, ((0)|(1<<2)|(0<<4)|(0<<6)|(1<<8)|(0<<10)), NO_ITEM, STICKY_BARB, 127, 20, 35, 3, EGGGROUP_GRASS, EGGGROUP_HUMANLIKE, SAND_VEIL, CACOPHONY, 0, 3, 0, 0xc4354721, 0x4a981e10, 0x926e642a, 0