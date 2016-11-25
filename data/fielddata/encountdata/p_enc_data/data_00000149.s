.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 16, PSYDUCK      @ 20%
.word 16, BIDOOF       @ 20%
.word 16, MEDITITE     @ 10%
.word 16, MACHOP       @ 10%
.word 17, MEDITITE     @ 10%
.word 17, MACHOP       @ 10%
.word 17, PSYDUCK      @ 5%
.word 17, BIBAREL      @ 5%
.word 18, PSYDUCK      @ 4%
.word 18, BIBAREL      @ 4%
.word 18, PSYDUCK      @ 1%
.word 18, BIBAREL      @ 1%

.word DUNSPARCE    @ Swarm 20%
.word DUNSPARCE    @ Swarm 20%
.word MEDITITE     @ Day 10%
.word MACHOP       @ Day 10%
.word ZUBAT        @ Night 10%
.word ZUBAT        @ Night 10%
.word TYROGUE      @ Poke Radar 10%
.word TYROGUE      @ Poke Radar 10%
.word TYROGUE      @ Poke Radar 10%
.word TYROGUE      @ Poke Radar 10%
.word VOLTORB      @ 
.word VOLTORB      @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word ZANGOOSE     @ Ruby 4%
.word ZANGOOSE     @ Ruby 4%
.word SEVIPER      @ Sapphire 4%
.word SEVIPER      @ Sapphire 4%
.word PSYDUCK      @ Emerald 4%
.word BIBAREL      @ Emerald 4%
.word PSYDUCK      @ FireRed 4%
.word BIBAREL      @ FireRed 4%
.word PSYDUCK      @ LeafGreen 4%
.word BIBAREL      @ LeafGreen 4%

@ Water:
@ Surfing:
.word 10 @ Rate
WaterEncounter 30, 20, PSYDUCK      @ 60%
WaterEncounter 40, 20, PSYDUCK      @ 30%
WaterEncounter 40, 30, GOLDUCK      @ 5%
WaterEncounter 40, 30, GOLDUCK      @ 4%
WaterEncounter 40, 20, GOLDUCK      @ 1%

@ Unknown:
.word 0 @ Rate
WaterEncounter 0,  0,  MISSINGNO    @ 60%
WaterEncounter 0,  0,  MISSINGNO    @ 30%
WaterEncounter 0,  0,  MISSINGNO    @ 5%
WaterEncounter 0,  0,  MISSINGNO    @ 4%
WaterEncounter 0,  0,  MISSINGNO    @ 1%

@ Old Rod:
.word 25 @ Rate
WaterEncounter 6,  4,  MAGIKARP     @ 60%
WaterEncounter 7,  3,  MAGIKARP     @ 30%
WaterEncounter 10, 5,  MAGIKARP     @ 5%
WaterEncounter 10, 5,  MAGIKARP     @ 4%
WaterEncounter 10, 5,  MAGIKARP     @ 1%

@ Good Rod:
.word 50 @ Rate
WaterEncounter 20, 15, MAGIKARP     @ 60%
WaterEncounter 20, 15, BARBOACH     @ 30%
WaterEncounter 25, 10, MAGIKARP     @ 5%
WaterEncounter 25, 10, BARBOACH     @ 4%
WaterEncounter 25, 10, BARBOACH     @ 1%

@ Super Rod:
.word 75 @ Rate
WaterEncounter 40, 30, GYARADOS     @ 60%
WaterEncounter 40, 30, WHISCASH     @ 30%
WaterEncounter 55, 40, GYARADOS     @ 5%
WaterEncounter 50, 20, WHISCASH     @ 4%
WaterEncounter 50, 20, WHISCASH     @ 1%
