.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 10 @ Rate
.word 38, BRONZONG     @ 20%
.word 36, GRAVELER     @ 20%
.word 37, MACHOKE      @ 10%
.word 36, CLEFAIRY     @ 10%
.word 37, MEDICHAM     @ 10%
.word 37, GOLBAT       @ 10%
.word 37, CHINGLING    @ 5%
.word 38, CHINGLING    @ 5%
.word 36, BRONZOR      @ 4%
.word 37, CLEFAIRY     @ 4%
.word 36, BRONZOR      @ 1%
.word 38, CLEFAIRY     @ 1%

.word BRONZONG     @ Swarm 20%
.word GRAVELER     @ Swarm 20%
.word MACHOKE      @ Day 10%
.word CLEFAIRY     @ Day 10%
.word MACHOKE      @ Night 10%
.word CLEFAIRY     @ Night 10%
.word MEDICHAM     @ Poke Radar 10%
.word GOLBAT       @ Poke Radar 10%
.word BRONZOR      @ Poke Radar 10%
.word CLEFAIRY     @ Poke Radar 10%
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word SOLROCK      @ Ruby 4%
.word SOLROCK      @ Ruby 4%
.word LUNATONE     @ Sapphire 4%
.word LUNATONE     @ Sapphire 4%
.word BRONZOR      @ Emerald 4%
.word CLEFAIRY     @ Emerald 4%
.word BRONZOR      @ FireRed 4%
.word CLEFAIRY     @ FireRed 4%
.word BRONZOR      @ LeafGreen 4%
.word CLEFAIRY     @ LeafGreen 4%

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
