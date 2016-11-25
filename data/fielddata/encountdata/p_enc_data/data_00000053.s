.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 10 @ Rate
.word 4,  ZUBAT        @ 20%
.word 4,  ZUBAT        @ 20%
.word 5,  GEODUDE      @ 10%
.word 5,  GEODUDE      @ 10%
.word 5,  ZUBAT        @ 10%
.word 5,  ZUBAT        @ 10%
.word 6,  ZUBAT        @ 5%
.word 6,  ZUBAT        @ 5%
.word 6,  ZUBAT        @ 4%
.word 6,  ZUBAT        @ 4%
.word 5,  PSYDUCK      @ 1%
.word 5,  PSYDUCK      @ 1%

.word ZUBAT        @ Swarm 20%
.word ZUBAT        @ Swarm 20%
.word GEODUDE      @ Day 10%
.word GEODUDE      @ Day 10%
.word GEODUDE      @ Night 10%
.word GEODUDE      @ Night 10%
.word ZUBAT        @ Poke Radar 10%
.word ZUBAT        @ Poke Radar 10%
.word PSYDUCK      @ Poke Radar 10%
.word PSYDUCK      @ Poke Radar 10%
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word ZUBAT        @ Ruby 4%
.word ZUBAT        @ Ruby 4%
.word ZUBAT        @ Sapphire 4%
.word ZUBAT        @ Sapphire 4%
.word ZUBAT        @ Emerald 4%
.word ZUBAT        @ Emerald 4%
.word ZUBAT        @ FireRed 4%
.word ZUBAT        @ FireRed 4%
.word ZUBAT        @ LeafGreen 4%
.word ZUBAT        @ LeafGreen 4%

@ Water:
@ Surfing:
.word 10 @ Rate
WaterEncounter 30, 20, ZUBAT        @ 60%
WaterEncounter 30, 20, PSYDUCK      @ 30%
WaterEncounter 40, 20, GOLBAT       @ 5%
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
