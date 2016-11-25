.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 10 @ Rate
.word 55, GOLBAT       @ 20%
.word 56, BRONZONG     @ 20%
.word 55, HAUNTER      @ 10%
.word 56, GOLBAT       @ 10%
.word 56, HAUNTER      @ 10%
.word 55, BRONZONG     @ 10%
.word 54, HAUNTER      @ 5%
.word 54, HAUNTER      @ 5%
.word 54, BRONZOR      @ 4%
.word 56, BRONZONG     @ 4%
.word 54, BRONZOR      @ 1%
.word 56, BRONZONG     @ 1%

.word GOLBAT       @ Swarm 20%
.word BRONZONG     @ Swarm 20%
.word HAUNTER      @ Day 10%
.word GOLBAT       @ Day 10%
.word HAUNTER      @ Night 10%
.word GOLBAT       @ Night 10%
.word HAUNTER      @ Poke Radar 10%
.word BRONZONG     @ Poke Radar 10%
.word BRONZOR      @ Poke Radar 10%
.word BRONZONG     @ Poke Radar 10%
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
.word BRONZOR      @ Emerald 4%
.word BRONZONG     @ Emerald 4%
.word BRONZOR      @ FireRed 4%
.word BRONZONG     @ FireRed 4%
.word BRONZOR      @ LeafGreen 4%
.word BRONZONG     @ LeafGreen 4%

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
