.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 255, 10, 10, 55, 75, 135, NORMAL, NORMAL, 30, 255, ((3)|(0<<2)|(0<<4)|(0<<6)|(0<<8)|(0<<10)), OVAL_STONE, LUCKY_EGG, 254, 40, 140, 4, 6, 6, NATURAL_CURE, SERENE_GRACE, 0, 9, 0, 0xf7fbf66d, 0xb899e76, 0x8276b9ac, 10