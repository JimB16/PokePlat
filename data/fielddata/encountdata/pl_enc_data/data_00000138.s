.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 26, GIRAFARIG    @ 20%
.word 25, BIBAREL      @ 20%
.word 26, STARAVIA     @ 10%
.word 27, KRICKETUNE   @ 10%
.word 27, STARAVIA     @ 10%
.word 28, HOUNDOUR     @ 10%
.word 28, STARAVIA     @ 5%
.word 26, BIBAREL      @ 5%
.word 28, GIRAFARIG    @ 4%
.word 27, BIBAREL      @ 4%
.word 28, GIRAFARIG    @ 1%
.word 27, BIBAREL      @ 1%

.word GIRAFARIG    @ Swarm 20%
.word BIBAREL      @ Swarm 20%
.word STARAVIA     @ Day 10%
.word STARAVIA     @ Day 10%
.word KRICKETUNE   @ Night 10%
.word HOUNDOUR     @ Night 10%
.word NIDORINO     @ Poke Radar 10%
.word NIDORINA     @ Poke Radar 10%
.word NIDORINO     @ Poke Radar 10%
.word NIDORINA     @ Poke Radar 10%
.word VOLTORB      @ 
.word VOLTORB      @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word GIRAFARIG    @ Ruby 4%
.word BIBAREL      @ Ruby 4%
.word GIRAFARIG    @ Sapphire 4%
.word BIBAREL      @ Sapphire 4%
.word GIRAFARIG    @ Emerald 4%
.word BIBAREL      @ Emerald 4%
.word GIRAFARIG    @ FireRed 4%
.word BIBAREL      @ FireRed 4%
.word GIRAFARIG    @ LeafGreen 4%
.word BIBAREL      @ LeafGreen 4%

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
