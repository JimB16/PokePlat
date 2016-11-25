.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 40, 45, 65, 90, 100, 120, PSYCHIC, PSYCHIC, 45, 136, ((0)|(0<<2)|(0<<4)|(0<<6)|(0<<8)|(2<<10)), NO_ITEM, LEPPA_BERRY, 127, 25, 70, 0, 8, 8, SOUNDPROOF, FILTER, 0, 9, 0, 0xf5bbce29, 0xb99bf83, 0xa76312e, 0