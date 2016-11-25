.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 27, SWABLU       @ 20%
.word 28, BIBAREL      @ 20%
.word 27, SCYTHER      @ 10%
.word 27, MEDITITE     @ 10%
.word 29, MEDITITE     @ 10%
.word 28, MACHOP       @ 10%
.word 29, SCYTHER      @ 5%
.word 29, MACHOKE      @ 5%
.word 29, MACHOP       @ 4%
.word 30, MACHOKE      @ 4%
.word 29, MACHOP       @ 1%
.word 30, MACHOKE      @ 1%

.word SWABLU       @ Swarm 20%
.word BIBAREL      @ Swarm 20%
.word SWABLU       @ Day 10%
.word MEDITITE     @ Day 10%
.word NOCTOWL      @ Night 10%
.word HOOTHOOT     @ Night 10%
.word BAGON        @ Poke Radar 10%
.word BAGON        @ Poke Radar 10%
.word BAGON        @ Poke Radar 10%
.word BAGON        @ Poke Radar 10%
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
.word MACHOP       @ Emerald 4%
.word MACHOKE      @ Emerald 4%
.word MACHOP       @ FireRed 4%
.word MACHOKE      @ FireRed 4%
.word MACHOP       @ LeafGreen 4%
.word MACHOKE      @ LeafGreen 4%

@ Water:
@ Surfing:
.word 10 @ Rate
WaterEncounter 30, 20, PSYDUCK      @ 60%
WaterEncounter 30, 20, PSYDUCK      @ 30%
WaterEncounter 40, 20, GOLDUCK      @ 5%
WaterEncounter 40, 20, GOLDUCK      @ 4%
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
WaterEncounter 15, 5,  MAGIKARP     @ 1%

@ Good Rod:
.word 50 @ Rate
WaterEncounter 20, 15, MAGIKARP     @ 60%
WaterEncounter 20, 15, BARBOACH     @ 30%
WaterEncounter 25, 10, MAGIKARP     @ 5%
WaterEncounter 35, 25, WHISCASH     @ 4%
WaterEncounter 35, 25, WHISCASH     @ 1%

@ Super Rod:
.word 75 @ Rate
WaterEncounter 40, 30, GYARADOS     @ 60%
WaterEncounter 40, 30, WHISCASH     @ 30%
WaterEncounter 55, 40, GYARADOS     @ 5%
WaterEncounter 55, 40, WHISCASH     @ 4%
WaterEncounter 55, 40, WHISCASH     @ 1%
