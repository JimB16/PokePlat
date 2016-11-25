.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 10 @ Rate
.word 57, GRAVELER     @ 20%
.word 57, MAGCARGO     @ 20%
.word 56, GOLBAT       @ 10%
.word 58, MACHOKE      @ 10%
.word 58, MAGCARGO     @ 10%
.word 58, WEEZING      @ 10%
.word 56, ONIX         @ 5%
.word 58, CAMERUPT     @ 5%
.word 27, GEODUDE      @ 4%
.word 27, SLUGMA       @ 4%
.word 29, GEODUDE      @ 1%
.word 29, SLUGMA       @ 1%

.word GRAVELER     @ Swarm 20%
.word MAGCARGO     @ Swarm 20%
.word GOLBAT       @ Day 10%
.word MACHOKE      @ Day 10%
.word GOLBAT       @ Night 10%
.word MACHOKE      @ Night 10%
.word MAGCARGO     @ Poke Radar 10%
.word WEEZING      @ Poke Radar 10%
.word GEODUDE      @ Poke Radar 10%
.word SLUGMA       @ Poke Radar 10%
.word VOLTORB      @ 
.word VOLTORB      @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word GEODUDE      @ Ruby 4%
.word SLUGMA       @ Ruby 4%
.word GEODUDE      @ Sapphire 4%
.word SLUGMA       @ Sapphire 4%
.word GEODUDE      @ Emerald 4%
.word SLUGMA       @ Emerald 4%
.word GEODUDE      @ FireRed 4%
.word SLUGMA       @ FireRed 4%
.word MAGBY        @ LeafGreen 4%
.word MAGBY        @ LeafGreen 4%

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
