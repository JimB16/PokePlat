.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 44, 75, 35, 45, 63, 33, GHOST, GHOST, 225, 97, ((0)|(1<<2)|(0<<4)|(0<<6)|(0<<8)|(0<<10)), NO_ITEM, SPELL_TAG, 127, 25, 35, 4, EGGGROUP_AMORPHOUS, EGGGROUP_AMORPHOUS, INSOMNIA, FRISK, 0, 4, 0, 0xb5930e28, 0x5301bf02, 0xa567122, 0