.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 15 @ Rate
.word 47, GRAVELER     @ 20%
.word 47, FLOATZEL     @ 20%
.word 49, GRAVELER     @ 10%
.word 48, ONIX         @ 10%
.word 50, ONIX         @ 10%
.word 48, FLOATZEL     @ 10%
.word 49, GOLBAT       @ 5%
.word 49, FLOATZEL     @ 5%
.word 50, STEELIX      @ 4%
.word 50, GABITE       @ 4%
.word 50, STEELIX      @ 1%
.word 50, GABITE       @ 1%

.word GRAVELER     @ Swarm 20%
.word FLOATZEL     @ Swarm 20%
.word GRAVELER     @ Day 10%
.word ONIX         @ Day 10%
.word GOLBAT       @ Night 10%
.word ONIX         @ Night 10%
.word ONIX         @ Poke Radar 10%
.word FLOATZEL     @ Poke Radar 10%
.word STEELIX      @ Poke Radar 10%
.word GABITE       @ Poke Radar 10%
.word VOLTORB      @ 
.word VOLTORB      @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word STEELIX      @ Ruby 4%
.word GABITE       @ Ruby 4%
.word STEELIX      @ Sapphire 4%
.word GABITE       @ Sapphire 4%
.word STEELIX      @ Emerald 4%
.word GABITE       @ Emerald 4%
.word STEELIX      @ FireRed 4%
.word GABITE       @ FireRed 4%
.word STEELIX      @ LeafGreen 4%
.word GABITE       @ LeafGreen 4%

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
