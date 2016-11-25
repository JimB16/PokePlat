.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 10 @ Rate
.word 32, ONIX         @ 20%
.word 33, GRAVELER     @ 20%
.word 31, GOLBAT       @ 10%
.word 33, GOLBAT       @ 10%
.word 33, GRAVELER     @ 10%
.word 34, GRAVELER     @ 10%
.word 33, STEELIX      @ 5%
.word 35, STEELIX      @ 5%
.word 31, GRAVELER     @ 4%
.word 32, GRAVELER     @ 4%
.word 31, GRAVELER     @ 1%
.word 32, GRAVELER     @ 1%

.word ONIX         @ Swarm 20%
.word GRAVELER     @ Swarm 20%
.word GOLBAT       @ Day 10%
.word GOLBAT       @ Day 10%
.word GOLBAT       @ Night 10%
.word GOLBAT       @ Night 10%
.word GRAVELER     @ Poke Radar 10%
.word GRAVELER     @ Poke Radar 10%
.word GRAVELER     @ Poke Radar 10%
.word GRAVELER     @ Poke Radar 10%
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MAWILE       @ Ruby 4%
.word MAWILE       @ Ruby 4%
.word SABLEYE      @ Sapphire 4%
.word SABLEYE      @ Sapphire 4%
.word GRAVELER     @ Emerald 4%
.word GRAVELER     @ Emerald 4%
.word GRAVELER     @ FireRed 4%
.word GRAVELER     @ FireRed 4%
.word GRAVELER     @ LeafGreen 4%
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
