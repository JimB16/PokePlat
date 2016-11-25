.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 15 @ Rate
.word 41, MAGNETON     @ 20%
.word 42, STEELIX      @ 20%
.word 41, GRAVELER     @ 10%
.word 42, STEELIX      @ 10%
.word 44, STEELIX      @ 10%
.word 43, MAGNETON     @ 10%
.word 44, GOLBAT       @ 5%
.word 43, GRAVELER     @ 5%
.word 42, ONIX         @ 4%
.word 43, GABITE       @ 4%
.word 42, ONIX         @ 1%
.word 43, GABITE       @ 1%

.word MAGNETON     @ Swarm 20%
.word STEELIX      @ Swarm 20%
.word GRAVELER     @ Day 10%
.word STEELIX      @ Day 10%
.word GOLBAT       @ Night 10%
.word STEELIX      @ Night 10%
.word STEELIX      @ Poke Radar 10%
.word MAGNETON     @ Poke Radar 10%
.word ONIX         @ Poke Radar 10%
.word GABITE       @ Poke Radar 10%
.word VOLTORB      @ 
.word VOLTORB      @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word ONIX         @ Ruby 4%
.word GABITE       @ Ruby 4%
.word ONIX         @ Sapphire 4%
.word GABITE       @ Sapphire 4%
.word ONIX         @ Emerald 4%
.word GABITE       @ Emerald 4%
.word ONIX         @ FireRed 4%
.word GABITE       @ FireRed 4%
.word ONIX         @ LeafGreen 4%
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
