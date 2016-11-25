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

.word SPINDA       @ Swarm 20%
.word SPINDA       @ Swarm 20%
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
.word 10 @ Rate
WaterEncounter 50, 40, POLIWHIRL    @ 60%
WaterEncounter 30, 20, POLIWAG      @ 30%
WaterEncounter 55, 45, POLIWHIRL    @ 5%
WaterEncounter 55, 45, POLIWHIRL    @ 4%
WaterEncounter 55, 45, POLIWHIRL    @ 1%

@ Unknown:
.word 0 @ Rate
WaterEncounter 0,  0,  MISSINGNO    @ 60%
WaterEncounter 0,  0,  MISSINGNO    @ 30%
WaterEncounter 0,  0,  MISSINGNO    @ 5%
WaterEncounter 0,  0,  MISSINGNO    @ 4%
WaterEncounter 0,  0,  MISSINGNO    @ 1%

@ Old Rod:
.word 25 @ Rate
WaterEncounter 6,  4,  MAGIKARP     @ 60%
WaterEncounter 7,  3,  MAGIKARP     @ 30%
WaterEncounter 10, 5,  MAGIKARP     @ 5%
WaterEncounter 10, 5,  MAGIKARP     @ 4%
WaterEncounter 10, 5,  MAGIKARP     @ 1%

@ Good Rod:
.word 50 @ Rate
WaterEncounter 20, 15, MAGIKARP     @ 60%
WaterEncounter 20, 15, BARBOACH     @ 30%
WaterEncounter 25, 10, MAGIKARP     @ 5%
WaterEncounter 25, 10, BARBOACH     @ 4%
WaterEncounter 25, 10, BARBOACH     @ 1%

@ Super Rod:
.word 75 @ Rate
WaterEncounter 40, 30, GYARADOS     @ 60%
WaterEncounter 40, 30, WHISCASH     @ 30%
WaterEncounter 55, 40, GYARADOS     @ 5%
WaterEncounter 50, 20, WHISCASH     @ 4%
WaterEncounter 50, 20, WHISCASH     @ 1%
