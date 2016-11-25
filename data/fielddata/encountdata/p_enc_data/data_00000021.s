.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 10 @ Rate
.word 13, MEDITITE     @ 20%
.word 13, GEODUDE      @ 20%
.word 12, CLEFFA       @ 10%
.word 12, CLEFFA       @ 10%
.word 13, MACHOP       @ 10%
.word 13, ZUBAT        @ 10%
.word 13, CHINGLING    @ 5%
.word 13, CHINGLING    @ 5%
.word 14, MEDITITE     @ 4%
.word 12, CLEFFA       @ 4%
.word 14, MEDITITE     @ 1%
.word 12, CLEFFA       @ 1%

.word MEDITITE     @ Swarm 20%
.word GEODUDE      @ Swarm 20%
.word GEODUDE      @ Day 10%
.word ZUBAT        @ Day 10%
.word GEODUDE      @ Night 10%
.word ZUBAT        @ Night 10%
.word MACHOP       @ Poke Radar 10%
.word ZUBAT        @ Poke Radar 10%
.word MEDITITE     @ Poke Radar 10%
.word CLEFFA       @ Poke Radar 10%
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MEDITITE     @ Ruby 4%
.word CLEFFA       @ Ruby 4%
.word CLEFFA       @ Sapphire 4%
.word CLEFFA       @ Sapphire 4%
.word MEDITITE     @ Emerald 4%
.word CLEFFA       @ Emerald 4%
.word MEDITITE     @ FireRed 4%
.word CLEFFA       @ FireRed 4%
.word MEDITITE     @ LeafGreen 4%
.word CLEFFA       @ LeafGreen 4%

@ Water:
@ Surfing:
.word 0 @ Rate
WaterEncounter 0,  0,  MISSINGNO    @ 60%
WaterEncounter 0,  0,  MISSINGNO    @ 30%
WaterEncounter 0,  0,  MISSINGNO    @ 5%
WaterEncounter 0,  0,  MISSINGNO    @ 4%
WaterEncounter 0,  0,  MISSINGNO    @ 1%

@ Unknown:
.word 0 @ Rate
WaterEncounter 0,  0,  MISSINGNO    @ 60%
WaterEncounter 0,  0,  MISSINGNO    @ 30%
WaterEncounter 0,  0,  MISSINGNO    @ 5%
WaterEncounter 0,  0,  MISSINGNO    @ 4%
WaterEncounter 0,  0,  MISSINGNO    @ 1%

@ Old Rod:
.word 0 @ Rate
WaterEncounter 0,  0,  MISSINGNO    @ 60%
WaterEncounter 0,  0,  MISSINGNO    @ 30%
WaterEncounter 0,  0,  MISSINGNO    @ 5%
WaterEncounter 0,  0,  MISSINGNO    @ 4%
WaterEncounter 0,  0,  MISSINGNO    @ 1%

@ Good Rod:
.word 0 @ Rate
WaterEncounter 0,  0,  MISSINGNO    @ 60%
WaterEncounter 0,  0,  MISSINGNO    @ 30%
WaterEncounter 0,  0,  MISSINGNO    @ 5%
WaterEncounter 0,  0,  MISSINGNO    @ 4%
WaterEncounter 0,  0,  MISSINGNO    @ 1%

@ Super Rod:
.word 0 @ Rate
WaterEncounter 0,  0,  MISSINGNO    @ 60%
WaterEncounter 0,  0,  MISSINGNO    @ 30%
WaterEncounter 0,  0,  MISSINGNO    @ 5%
WaterEncounter 0,  0,  MISSINGNO    @ 4%
WaterEncounter 0,  0,  MISSINGNO    @ 1%
