.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 10 @ Rate
.word 14, BRONZOR      @ 20%
.word 15, GEODUDE      @ 20%
.word 14, MEDITITE     @ 10%
.word 13, CLEFFA       @ 10%
.word 16, MACHOP       @ 10%
.word 16, MEDITITE     @ 10%
.word 13, CHINGLING    @ 5%
.word 14, NOSEPASS     @ 5%
.word 15, ZUBAT        @ 4%
.word 15, CHINGLING    @ 4%
.word 15, ZUBAT        @ 1%
.word 15, CHINGLING    @ 1%

.word BRONZOR      @ Swarm 20%
.word GEODUDE      @ Swarm 20%
.word MEDITITE     @ Day 10%
.word GEODUDE      @ Day 10%
.word ZUBAT        @ Night 10%
.word CLEFFA       @ Night 10%
.word MACHOP       @ Poke Radar 10%
.word MEDITITE     @ Poke Radar 10%
.word ZUBAT        @ Poke Radar 10%
.word CHINGLING    @ Poke Radar 10%
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word ZUBAT        @ Ruby 4%
.word CHINGLING    @ Ruby 4%
.word ZUBAT        @ Sapphire 4%
.word CHINGLING    @ Sapphire 4%
.word ZUBAT        @ Emerald 4%
.word CHINGLING    @ Emerald 4%
.word ZUBAT        @ FireRed 4%
.word CHINGLING    @ FireRed 4%
.word ZUBAT        @ LeafGreen 4%
.word CHINGLING    @ LeafGreen 4%

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
