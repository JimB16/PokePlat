.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 23, GRAVELER     @ 20%
.word 21, GEODUDE      @ 20%
.word 22, GRAVELER     @ 10%
.word 22, RHYHORN      @ 10%
.word 23, HOUNDOUR     @ 10%
.word 23, RHYHORN      @ 10%
.word 24, GRAVELER     @ 5%
.word 21, RHYHORN      @ 5%
.word 24, HOUNDOUR     @ 4%
.word 24, RHYHORN      @ 4%
.word 24, HOUNDOUR     @ 1%
.word 24, RHYHORN      @ 1%

.word SPOINK       @ Swarm 20%
.word SPOINK       @ Swarm 20%
.word GRAVELER     @ Day 10%
.word RHYHORN      @ Day 10%
.word HOUNDOUR     @ Night 10%
.word ZUBAT        @ Night 10%
.word POOCHYENA    @ Poke Radar 10%
.word POOCHYENA    @ Poke Radar 10%
.word POOCHYENA    @ Poke Radar 10%
.word POOCHYENA    @ Poke Radar 10%
.word VOLTORB      @ 
.word VOLTORB      @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word HOUNDOUR     @ Ruby 4%
.word RHYHORN      @ Ruby 4%
.word HOUNDOUR     @ Sapphire 4%
.word RHYHORN      @ Sapphire 4%
.word HOUNDOUR     @ Emerald 4%
.word RHYHORN      @ Emerald 4%
.word HOUNDOUR     @ FireRed 4%
.word RHYHORN      @ FireRed 4%
.word VULPIX       @ LeafGreen 4%
.word VULPIX       @ LeafGreen 4%

@ Water:
@ Surfing:
.word 10 @ Rate
WaterEncounter 30, 20, PSYDUCK      @ 60%
WaterEncounter 30, 20, PSYDUCK      @ 30%
WaterEncounter 40, 20, GOLDUCK      @ 5%
WaterEncounter 40, 20, GOLDUCK      @ 4%
WaterEncounter 40, 20, GOLDUCK      @ 1%

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
WaterEncounter 15, 5,  MAGIKARP     @ 1%

@ Good Rod:
.word 50 @ Rate
WaterEncounter 20, 15, MAGIKARP     @ 60%
WaterEncounter 20, 15, GOLDEEN      @ 30%
WaterEncounter 25, 10, MAGIKARP     @ 5%
WaterEncounter 25, 10, GOLDEEN      @ 4%
WaterEncounter 25, 10, GOLDEEN      @ 1%

@ Super Rod:
.word 75 @ Rate
WaterEncounter 40, 30, GYARADOS     @ 60%
WaterEncounter 40, 30, SEAKING      @ 30%
WaterEncounter 55, 40, GYARADOS     @ 5%
WaterEncounter 55, 40, SEAKING      @ 4%
WaterEncounter 55, 40, SEAKING      @ 1%
