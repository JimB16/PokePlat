.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 12, BIDOOF       @ 20%
.word 12, BUDEW        @ 20%
.word 13, WURMPLE      @ 10%
.word 12, KRICKETOT    @ 10%
.word 14, SILCOON      @ 10%
.word 14, CASCOON      @ 10%
.word 13, BIDOOF       @ 5%
.word 14, BIDOOF       @ 5%
.word 13, BUDEW        @ 4%
.word 14, BUDEW        @ 4%
.word 15, BEAUTIFLY    @ 1%
.word 15, DUSTOX       @ 1%

.word BIDOOF       @ Swarm 20%
.word BUDEW        @ Swarm 20%
.word WURMPLE      @ Day 10%
.word BUDEW        @ Day 10%
.word KRICKETOT    @ Night 10%
.word HOOTHOOT     @ Night 10%
.word SLOWPOKE     @ Poke Radar 10%
.word SLOWPOKE     @ Poke Radar 10%
.word SLOWPOKE     @ Poke Radar 10%
.word SLOWPOKE     @ Poke Radar 10%
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word BUDEW        @ Ruby 4%
.word BUDEW        @ Ruby 4%
.word LOTAD        @ Sapphire 4%
.word LOTAD        @ Sapphire 4%
.word BUDEW        @ Emerald 4%
.word BUDEW        @ Emerald 4%
.word BUDEW        @ FireRed 4%
.word BUDEW        @ FireRed 4%
.word BUDEW        @ LeafGreen 4%
.word BUDEW        @ LeafGreen 4%

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
WaterEncounter 20, 15, BARBOACH     @ 30%
WaterEncounter 25, 10, MAGIKARP     @ 5%
WaterEncounter 25, 10, BARBOACH     @ 4%
WaterEncounter 25, 10, BARBOACH     @ 1%

@ Super Rod:
.word 75 @ Rate
WaterEncounter 40, 30, GYARADOS     @ 60%
WaterEncounter 40, 30, WHISCASH     @ 30%
WaterEncounter 55, 40, GYARADOS     @ 5%
WaterEncounter 55, 40, WHISCASH     @ 4%
WaterEncounter 55, 40, WHISCASH     @ 1%
