.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 10 @ Rate
.word 6,  ZUBAT        @ 20%
.word 8,  PSYDUCK      @ 20%
.word 7,  ZUBAT        @ 10%
.word 9,  PSYDUCK      @ 10%
.word 6,  GEODUDE      @ 10%
.word 8,  ZUBAT        @ 10%
.word 10, PSYDUCK      @ 5%
.word 8,  GEODUDE      @ 5%
.word 9,  ZUBAT        @ 4%
.word 10, GOLBAT       @ 4%
.word 9,  ZUBAT        @ 1%
.word 10, GOLBAT       @ 1%

.word ZUBAT        @ Swarm 20%
.word PSYDUCK      @ Swarm 20%
.word ZUBAT        @ Day 10%
.word PSYDUCK      @ Day 10%
.word ZUBAT        @ Night 10%
.word PSYDUCK      @ Night 10%
.word GEODUDE      @ Poke Radar 10%
.word ZUBAT        @ Poke Radar 10%
.word ZUBAT        @ Poke Radar 10%
.word GOLBAT       @ Poke Radar 10%
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word ZUBAT        @ Ruby 4%
.word GOLBAT       @ Ruby 4%
.word ZUBAT        @ Sapphire 4%
.word GOLBAT       @ Sapphire 4%
.word ZUBAT        @ Emerald 4%
.word GOLBAT       @ Emerald 4%
.word ZUBAT        @ FireRed 4%
.word GOLBAT       @ FireRed 4%
.word ZUBAT        @ LeafGreen 4%
.word GOLBAT       @ LeafGreen 4%

@ Water:
@ Surfing:
.word 10 @ Rate
WaterEncounter 30, 20, PSYDUCK      @ 60%
WaterEncounter 30, 20, ZUBAT        @ 30%
WaterEncounter 40, 20, GOLDUCK      @ 5%
WaterEncounter 40, 20, GOLBAT       @ 4%
WaterEncounter 40, 20, GOLBAT       @ 1%

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
WaterEncounter 25, 10, BARBOACH     @ 4%
WaterEncounter 25, 10, BARBOACH     @ 1%

@ Super Rod:
.word 75 @ Rate
WaterEncounter 55, 30, GYARADOS     @ 60%
WaterEncounter 40, 30, WHISCASH     @ 30%
WaterEncounter 55, 40, GYARADOS     @ 5%
WaterEncounter 55, 40, WHISCASH     @ 4%
WaterEncounter 55, 40, WHISCASH     @ 1%
