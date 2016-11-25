.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 60, 69, 95, 36, 69, 95, BUG, STEEL, 45, 159, ((0)|(0<<2)|(1<<4)|(0<<6)|(0<<8)|(1<<10)), NO_ITEM, SILVERPOWDER, 254, 15, 70, 0, 3, 3, ANTICIPATION, CACOPHONY, 0, 7, 0, 0xb41b4620, 0x200be00, 0x6563a28, 0