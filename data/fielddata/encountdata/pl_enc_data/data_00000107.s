.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 5 @ Rate
.word 47, GOLBAT       @ 20%
.word 48, GOLBAT       @ 20%
.word 49, GOLBAT       @ 10%
.word 50, GOLBAT       @ 10%
.word 48, GOLBAT       @ 10%
.word 49, SNEASEL      @ 10%
.word 47, JYNX         @ 5%
.word 49, GOLBAT       @ 5%
.word 49, JYNX         @ 4%
.word 47, GOLBAT       @ 4%
.word 49, JYNX         @ 1%
.word 47, GOLBAT       @ 1%

.word GOLBAT       @ Swarm 20%
.word GOLBAT       @ Swarm 20%
.word GOLBAT       @ Day 10%
.word GOLBAT       @ Day 10%
.word GOLBAT       @ Night 10%
.word GOLBAT       @ Night 10%
.word GOLBAT       @ Poke Radar 10%
.word SNEASEL      @ Poke Radar 10%
.word JYNX         @ Poke Radar 10%
.word GOLBAT       @ Poke Radar 10%
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word JYNX         @ Ruby 4%
.word GOLBAT       @ Ruby 4%
.word JYNX         @ Sapphire 4%
.word GOLBAT       @ Sapphire 4%
.word JYNX         @ Emerald 4%
.word GOLBAT       @ Emerald 4%
.word JYNX         @ FireRed 4%
.word GOLBAT       @ FireRed 4%
.word JYNX         @ LeafGreen 4%
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
