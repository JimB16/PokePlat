.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 55, CAMERUPT     @ 20%
.word 55, RHYDON       @ 20%
.word 54, FEAROW       @ 10%
.word 54, GRAVELER     @ 10%
.word 55, FEAROW       @ 10%
.word 55, WEEZING      @ 10%
.word 56, SKARMORY     @ 5%
.word 56, GRAVELER     @ 5%
.word 22, NUMEL        @ 4%
.word 22, RHYHORN      @ 4%
.word 24, NUMEL        @ 1%
.word 24, RHYHORN      @ 1%

.word CAMERUPT     @ Swarm 20%
.word RHYDON       @ Swarm 20%
.word FEAROW       @ Day 10%
.word GRAVELER     @ Day 10%
.word BANETTE      @ Night 10%
.word GOLBAT       @ Night 10%
.word TORKOAL      @ Poke Radar 10%
.word TORKOAL      @ Poke Radar 10%
.word TORKOAL      @ Poke Radar 10%
.word TORKOAL      @ Poke Radar 10%
.word VOLTORB      @ 
.word VOLTORB      @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word NUMEL        @ Ruby 4%
.word RHYHORN      @ Ruby 4%
.word NUMEL        @ Sapphire 4%
.word RHYHORN      @ Sapphire 4%
.word GLIGAR       @ Emerald 4%
.word GLIGAR       @ Emerald 4%
.word NUMEL        @ FireRed 4%
.word RHYHORN      @ FireRed 4%
.word MAGBY        @ LeafGreen 4%
.word MAGBY        @ LeafGreen 4%

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
