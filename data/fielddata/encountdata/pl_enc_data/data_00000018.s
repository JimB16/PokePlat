.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 15 @ Rate
.word 37, BRONZONG     @ 20%
.word 38, GRAVELER     @ 20%
.word 37, MEDICHAM     @ 10%
.word 36, CLEFAIRY     @ 10%
.word 39, MACHOKE      @ 10%
.word 39, MEDICHAM     @ 10%
.word 39, CHIMECHO     @ 5%
.word 37, NOSEPASS     @ 5%
.word 38, GOLBAT       @ 4%
.word 40, CHIMECHO     @ 4%
.word 38, GOLBAT       @ 1%
.word 41, CHIMECHO     @ 1%

.word BRONZONG     @ Swarm 20%
.word GRAVELER     @ Swarm 20%
.word MEDICHAM     @ Day 10%
.word GRAVELER     @ Day 10%
.word GOLBAT       @ Night 10%
.word CLEFAIRY     @ Night 10%
.word MACHOKE      @ Poke Radar 10%
.word MEDICHAM     @ Poke Radar 10%
.word GOLBAT       @ Poke Radar 10%
.word CHIMECHO     @ Poke Radar 10%
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
.word GOLBAT       @ Emerald 4%
.word CHIMECHO     @ Emerald 4%
.word GOLBAT       @ FireRed 4%
.word CHIMECHO     @ FireRed 4%
.word GOLBAT       @ LeafGreen 4%
.word CHIMECHO     @ LeafGreen 4%

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
