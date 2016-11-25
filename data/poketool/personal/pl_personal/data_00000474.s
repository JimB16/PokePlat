.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 85, 80, 70, 90, 135, 75, NORMAL, NORMAL, 30, 185, ((0)|(0<<2)|(0<<4)|(0<<6)|(3<<8)|(0<<10)), NO_ITEM, NO_ITEM, 255, 20, 70, 0, EGGGROUP_MINERAL, EGGGROUP_MINERAL, ADAPTABILITY, DOWNLOAD, 0, 0, 0, 0xb5f37620, 0x43002e82, 0xa56512c, 0