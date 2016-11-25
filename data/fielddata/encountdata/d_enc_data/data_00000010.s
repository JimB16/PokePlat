.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 10 @ Rate
.word 15, MACHOP       @ 20%
.word 15, GEODUDE      @ 20%
.word 14, CLEFFA       @ 10%
.word 14, CLEFFA       @ 10%
.word 15, MEDITITE     @ 10%
.word 15, ZUBAT        @ 10%
.word 15, CHINGLING    @ 5%
.word 15, CHINGLING    @ 5%
.word 16, MACHOP       @ 4%
.word 14, CLEFFA       @ 4%
.word 16, MACHOP       @ 1%
.word 14, CLEFFA       @ 1%

.word MACHOP       @ Swarm 20%
.word GEODUDE      @ Swarm 20%
.word GEODUDE      @ Day 10%
.word ZUBAT        @ Day 10%
.word GEODUDE      @ Night 10%
.word ZUBAT        @ Night 10%
.word MEDITITE     @ Poke Radar 10%
.word ZUBAT        @ Poke Radar 10%
.word MACHOP       @ Poke Radar 10%
.word CLEFFA       @ Poke Radar 10%
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MACHOP       @ Ruby 4%
.word CLEFFA       @ Ruby 4%
.word MACHOP       @ Sapphire 4%
.word CLEFFA       @ Sapphire 4%
.word MACHOP       @ Emerald 4%
.word CLEFFA       @ Emerald 4%
.word MACHOP       @ FireRed 4%
.word CLEFFA       @ FireRed 4%
.word MACHOP       @ LeafGreen 4%
.word CLEFFA       @ LeafGreen 4%

@ Water:
@ Surfing:
.word 10 @ Rate
WaterEncounter 30, 20, ZUBAT        @ 60%
WaterEncounter 40, 20, ZUBAT        @ 30%
WaterEncounter 40, 30, GOLBAT       @ 5%
WaterEncounter 40, 30, GOLBAT       @ 4%
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
