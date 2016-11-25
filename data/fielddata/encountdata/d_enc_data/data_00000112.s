.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 10 @ Rate
.word 14, BRONZOR      @ 20%
.word 14, ZUBAT        @ 20%
.word 15, GEODUDE      @ 10%
.word 15, ZUBAT        @ 10%
.word 15, BRONZOR      @ 10%
.word 15, ZUBAT        @ 10%
.word 16, BRONZOR      @ 5%
.word 14, BRONZOR      @ 5%
.word 16, GEODUDE      @ 4%
.word 16, ZUBAT        @ 4%
.word 16, GEODUDE      @ 1%
.word 16, ZUBAT        @ 1%

.word BRONZOR      @ Swarm 20%
.word ZUBAT        @ Swarm 20%
.word GEODUDE      @ Day 10%
.word ZUBAT        @ Day 10%
.word GEODUDE      @ Night 10%
.word ZUBAT        @ Night 10%
.word BRONZOR      @ Poke Radar 10%
.word ZUBAT        @ Poke Radar 10%
.word GEODUDE      @ Poke Radar 10%
.word ZUBAT        @ Poke Radar 10%
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word GEODUDE      @ Ruby 4%
.word ZUBAT        @ Ruby 4%
.word GEODUDE      @ Sapphire 4%
.word ZUBAT        @ Sapphire 4%
.word GEODUDE      @ Emerald 4%
.word ZUBAT        @ Emerald 4%
.word GEODUDE      @ FireRed 4%
.word ZUBAT        @ FireRed 4%
.word SANDSHREW    @ LeafGreen 4%
.word SANDSHREW    @ LeafGreen 4%

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
