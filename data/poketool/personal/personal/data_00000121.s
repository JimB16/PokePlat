.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 60, 75, 85, 115, 100, 85, WATER, PSYCHIC, 60, 207, ((0)|(0<<2)|(0<<4)|(2<<6)|(0<<8)|(0<<10)), STARDUST, STAR_PIECE, 255, 20, 70, 5, 9, 9, ILLUMINATE, NATURAL_CURE, 0, 6, 0, 0x9593f264, 0x2408e01, 0x4e7613ac, 4