.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 15 @ Rate
.word 65, GOLBAT       @ 20%
.word 66, BRONZONG     @ 20%
.word 65, HAUNTER      @ 10%
.word 66, GOLBAT       @ 10%
.word 66, HAUNTER      @ 10%
.word 65, BRONZONG     @ 10%
.word 64, HAUNTER      @ 5%
.word 64, HAUNTER      @ 5%
.word 64, BRONZOR      @ 4%
.word 66, BRONZONG     @ 4%
.word 64, BRONZOR      @ 1%
.word 66, BRONZONG     @ 1%

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
