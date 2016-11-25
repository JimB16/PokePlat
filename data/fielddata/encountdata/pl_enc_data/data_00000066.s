.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 15 @ Rate
.word 15, GASTLY       @ 20%
.word 15, BRONZOR      @ 20%
.word 16, GASTLY       @ 10%
.word 17, GOLBAT       @ 10%
.word 17, GASTLY       @ 10%
.word 17, GOLBAT       @ 10%
.word 18, GOLBAT       @ 5%
.word 16, CHINGLING    @ 5%
.word 18, DUSKULL      @ 4%
.word 18, CHINGLING    @ 4%
.word 18, DUSKULL      @ 1%
.word 18, CHINGLING    @ 1%

.word GASTLY       @ Swarm 20%
.word BRONZOR      @ Swarm 20%
.word GASTLY       @ Day 10%
.word GOLBAT       @ Day 10%
.word DUSCLOPS     @ Night 10%
.word GOLBAT       @ Night 10%
.word GASTLY       @ Poke Radar 10%
.word GOLBAT       @ Poke Radar 10%
.word DUSCLOPS     @ Poke Radar 10%
.word CHINGLING    @ Poke Radar 10%
.word VOLTORB      @ 
.word VOLTORB      @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word SOLROCK      @ Ruby 4%
.word SOLROCK      @ Ruby 4%
.word LUNATONE     @ Sapphire 4%
.word LUNATONE     @ Sapphire 4%
.word DUSCLOPS     @ Emerald 4%
.word CHINGLING    @ Emerald 4%
.word DUSCLOPS     @ FireRed 4%
.word CHINGLING    @ FireRed 4%
.word DUSCLOPS     @ LeafGreen 4%
.word CHINGLING    @ LeafGreen 4%

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
