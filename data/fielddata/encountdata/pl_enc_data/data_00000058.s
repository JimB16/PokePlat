.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 10 @ Rate
.word 53, MAGCARGO     @ 20%
.word 55, MAGCARGO     @ 20%
.word 53, GOLBAT       @ 10%
.word 52, GRAVELER     @ 10%
.word 55, RHYDON       @ 10%
.word 54, WEEZING      @ 10%
.word 52, WEEZING      @ 5%
.word 54, GRAVELER     @ 5%
.word 53, SLUGMA       @ 4%
.word 53, KOFFING      @ 4%
.word 53, SLUGMA       @ 1%
.word 53, KOFFING      @ 1%

.word MAGCARGO     @ Swarm 20%
.word MAGCARGO     @ Swarm 20%
.word GOLBAT       @ Day 10%
.word GRAVELER     @ Day 10%
.word GOLBAT       @ Night 10%
.word GRAVELER     @ Night 10%
.word RHYDON       @ Poke Radar 10%
.word WEEZING      @ Poke Radar 10%
.word SLUGMA       @ Poke Radar 10%
.word KOFFING      @ Poke Radar 10%
.word VOLTORB      @ 
.word VOLTORB      @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word SLUGMA       @ Ruby 4%
.word KOFFING      @ Ruby 4%
.word SLUGMA       @ Sapphire 4%
.word KOFFING      @ Sapphire 4%
.word SLUGMA       @ Emerald 4%
.word KOFFING      @ Emerald 4%
.word SLUGMA       @ FireRed 4%
.word KOFFING      @ FireRed 4%
.word SLUGMA       @ LeafGreen 4%
.word KOFFING      @ LeafGreen 4%

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
