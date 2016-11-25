.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 10, BUIZEL       @ 20%
.word 10, BIDOOF       @ 20%
.word 11, BUIZEL       @ 10%
.word 11, BIDOOF       @ 10%
.word 11, SHELLOS      @ 10%
.word 11, BIDOOF       @ 10%
.word 11, PACHIRISU    @ 5%
.word 11, PACHIRISU    @ 5%
.word 12, BUIZEL       @ 4%
.word 12, BIDOOF       @ 4%
.word 12, BUIZEL       @ 1%
.word 12, BIDOOF       @ 1%

.word BUIZEL       @ Swarm 20%
.word BIDOOF       @ Swarm 20%
.word BUIZEL       @ Day 10%
.word BIDOOF       @ Day 10%
.word BUIZEL       @ Night 10%
.word BIDOOF       @ Night 10%
.word HOPPIP       @ Poke Radar 10%
.word HOPPIP       @ Poke Radar 10%
.word SKIPLOOM     @ Poke Radar 10%
.word SKIPLOOM     @ Poke Radar 10%
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word BUIZEL       @ Ruby 4%
.word BIDOOF       @ Ruby 4%
.word LOTAD        @ Sapphire 4%
.word LOTAD        @ Sapphire 4%
.word BUIZEL       @ Emerald 4%
.word BIDOOF       @ Emerald 4%
.word BUIZEL       @ FireRed 4%
.word BIDOOF       @ FireRed 4%
.word BUIZEL       @ LeafGreen 4%
.word BIDOOF       @ LeafGreen 4%

@ Water:
@ Surfing:
.word 10 @ Rate
WaterEncounter 30, 20, PSYDUCK      @ 60%
WaterEncounter 40, 20, PSYDUCK      @ 30%
WaterEncounter 40, 30, GOLDUCK      @ 5%
WaterEncounter 40, 30, GOLDUCK      @ 4%
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
