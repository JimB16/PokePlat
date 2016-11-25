.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 10 @ Rate
.word 31, GEODUDE      @ 20%
.word 32, GRAVELER     @ 20%
.word 30, ZUBAT        @ 10%
.word 32, GOLBAT       @ 10%
.word 32, GEODUDE      @ 10%
.word 33, GRAVELER     @ 10%
.word 31, ONIX         @ 5%
.word 33, ONIX         @ 5%
.word 30, GEODUDE      @ 4%
.word 31, GRAVELER     @ 4%
.word 30, GEODUDE      @ 1%
.word 31, GRAVELER     @ 1%

.word GEODUDE      @ Swarm 20%
.word GRAVELER     @ Swarm 20%
.word ZUBAT        @ Day 10%
.word GOLBAT       @ Day 10%
.word ZUBAT        @ Night 10%
.word GOLBAT       @ Night 10%
.word GEODUDE      @ Poke Radar 10%
.word GRAVELER     @ Poke Radar 10%
.word GEODUDE      @ Poke Radar 10%
.word GRAVELER     @ Poke Radar 10%
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word GEODUDE      @ Ruby 4%
.word GRAVELER     @ Ruby 4%
.word GEODUDE      @ Sapphire 4%
.word GRAVELER     @ Sapphire 4%
.word GEODUDE      @ Emerald 4%
.word GRAVELER     @ Emerald 4%
.word GEODUDE      @ FireRed 4%
.word GRAVELER     @ FireRed 4%
.word GEODUDE      @ LeafGreen 4%
.word GRAVELER     @ LeafGreen 4%

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
