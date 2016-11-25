.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 21, GIRAFARIG    @ 20%
.word 20, GEODUDE      @ 20%
.word 21, STARAVIA     @ 10%
.word 21, GRAVELER     @ 10%
.word 21, BIBAREL      @ 10%
.word 22, GIRAFARIG    @ 10%
.word 22, KRICKETUNE   @ 5%
.word 22, STARAVIA     @ 5%
.word 22, BIBAREL      @ 4%
.word 22, GRAVELER     @ 4%
.word 22, BIBAREL      @ 1%
.word 22, GRAVELER     @ 1%

.word GIRAFARIG    @ Swarm 20%
.word GEODUDE      @ Swarm 20%
.word STARAVIA     @ Day 10%
.word GRAVELER     @ Day 10%
.word KRICKETUNE   @ Night 10%
.word KRICKETUNE   @ Night 10%
.word NIDORINA     @ Poke Radar 10%
.word NIDORINA     @ Poke Radar 10%
.word NIDORINO     @ Poke Radar 10%
.word NIDORINO     @ Poke Radar 10%
.word VOLTORB      @ 
.word VOLTORB      @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word BIBAREL      @ Ruby 4%
.word GRAVELER     @ Ruby 4%
.word BIBAREL      @ Sapphire 4%
.word GRAVELER     @ Sapphire 4%
.word BIBAREL      @ Emerald 4%
.word GRAVELER     @ Emerald 4%
.word BIBAREL      @ FireRed 4%
.word GRAVELER     @ FireRed 4%
.word BIBAREL      @ LeafGreen 4%
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
