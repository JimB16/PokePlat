.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 60, 60, 60, 60, 60, 60, NORMAL, NORMAL, 255, 85, ((0)|(0<<2)|(0<<4)|(0<<6)|(1<<8)|(0<<10)), NO_ITEM, CHESTO_BERRY, 127, 15, 70, 4, EGGGROUP_FIELD, EGGGROUP_HUMANLIKE, OWN_TEMPO, TANGLED_FEET, 0, 133, 0, 0xfc1b062d, 0xa81be42, 0x8a56b024, 2