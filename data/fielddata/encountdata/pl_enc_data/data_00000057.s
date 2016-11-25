.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 10 @ Rate
.word 54, MAGCARGO     @ 20%
.word 54, RHYDON       @ 20%
.word 52, GOLBAT       @ 10%
.word 51, GRAVELER     @ 10%
.word 52, GOLBAT       @ 10%
.word 53, WEEZING      @ 10%
.word 51, WEEZING      @ 5%
.word 53, GRAVELER     @ 5%
.word 52, SLUGMA       @ 4%
.word 52, RHYHORN      @ 4%
.word 52, SLUGMA       @ 1%
.word 52, RHYHORN      @ 1%

.word MAGCARGO     @ Swarm 20%
.word RHYDON       @ Swarm 20%
.word GOLBAT       @ Day 10%
.word GRAVELER     @ Day 10%
.word GOLBAT       @ Night 10%
.word GRAVELER     @ Night 10%
.word GOLBAT       @ Poke Radar 10%
.word WEEZING      @ Poke Radar 10%
.word SLUGMA       @ Poke Radar 10%
.word RHYHORN      @ Poke Radar 10%
.word VOLTORB      @ 
.word VOLTORB      @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word SLUGMA       @ Ruby 4%
.word RHYHORN      @ Ruby 4%
.word SLUGMA       @ Sapphire 4%
.word RHYHORN      @ Sapphire 4%
.word SLUGMA       @ Emerald 4%
.word RHYHORN      @ Emerald 4%
.word SLUGMA       @ FireRed 4%
.word RHYHORN      @ FireRed 4%
.word SLUGMA       @ LeafGreen 4%
.word RHYHORN      @ LeafGreen 4%

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
