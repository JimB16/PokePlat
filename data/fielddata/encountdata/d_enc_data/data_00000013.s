.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 38, SNOVER       @ 20%
.word 40, ABOMASNOW    @ 20%
.word 39, MEDICHAM     @ 10%
.word 39, MACHOKE      @ 10%
.word 40, MEDICHAM     @ 10%
.word 40, MACHOKE      @ 10%
.word 39, CHINGLING    @ 5%
.word 40, CHINGLING    @ 5%
.word 39, BRONZONG     @ 4%
.word 38, CLEFAIRY     @ 4%
.word 40, BRONZONG     @ 1%
.word 39, CLEFAIRY     @ 1%

.word SNOVER       @ Swarm 20%
.word ABOMASNOW    @ Swarm 20%
.word MEDICHAM     @ Day 10%
.word MACHOKE      @ Day 10%
.word GOLBAT       @ Night 10%
.word NOCTOWL      @ Night 10%
.word LOUDRED      @ Poke Radar 10%
.word LOUDRED      @ Poke Radar 10%
.word LOUDRED      @ Poke Radar 10%
.word LOUDRED      @ Poke Radar 10%
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
.word BRONZONG     @ Emerald 4%
.word CLEFAIRY     @ Emerald 4%
.word BRONZONG     @ FireRed 4%
.word CLEFAIRY     @ FireRed 4%
.word BRONZONG     @ LeafGreen 4%
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
