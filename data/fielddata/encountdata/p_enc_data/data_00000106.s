.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 15 @ Rate
.word 51, GOLBAT       @ 20%
.word 51, SNEASEL      @ 20%
.word 52, GRAVELER     @ 10%
.word 52, GOLBAT       @ 10%
.word 52, SNEASEL      @ 10%
.word 51, ONIX         @ 10%
.word 50, SNEASEL      @ 5%
.word 52, STEELIX      @ 5%
.word 52, ONIX         @ 4%
.word 50, GOLBAT       @ 4%
.word 50, ONIX         @ 1%
.word 50, GOLBAT       @ 1%

.word GOLBAT       @ Swarm 20%
.word SNEASEL      @ Swarm 20%
.word GRAVELER     @ Day 10%
.word GOLBAT       @ Day 10%
.word GRAVELER     @ Night 10%
.word GOLBAT       @ Night 10%
.word SNEASEL      @ Poke Radar 10%
.word ONIX         @ Poke Radar 10%
.word ONIX         @ Poke Radar 10%
.word GOLBAT       @ Poke Radar 10%
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word ONIX         @ Ruby 4%
.word GOLBAT       @ Ruby 4%
.word ONIX         @ Sapphire 4%
.word GOLBAT       @ Sapphire 4%
.word ONIX         @ Emerald 4%
.word GOLBAT       @ Emerald 4%
.word ONIX         @ FireRed 4%
.word GOLBAT       @ FireRed 4%
.word ONIX         @ LeafGreen 4%
.word GOLBAT       @ LeafGreen 4%

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
