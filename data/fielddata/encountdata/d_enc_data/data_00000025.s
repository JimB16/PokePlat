.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 35 @ Rate
.word 22, WOOPER       @ 20%
.word 23, BIBAREL      @ 20%
.word 22, BUDEW        @ 10%
.word 24, STARLY       @ 10%
.word 23, MARILL       @ 10%
.word 23, QUAGSIRE     @ 10%
.word 24, MARILL       @ 5%
.word 24, QUAGSIRE     @ 5%
.word 24, PSYDUCK      @ 4%
.word 22, PSYDUCK      @ 4%
.word 24, BIDOOF       @ 1%
.word 22, AZURILL      @ 1%

.word WOOPER       @ Swarm 20%
.word BIBAREL      @ Swarm 20%
.word BUDEW        @ Day 10%
.word STARLY       @ Day 10%
.word HOOTHOOT     @ Night 10%
.word HOOTHOOT     @ Night 10%
.word MARILL       @ Poke Radar 10%
.word QUAGSIRE     @ Poke Radar 10%
.word BIDOOF       @ Poke Radar 10%
.word AZURILL      @ Poke Radar 10%
.word VOLTORB      @ 
.word VOLTORB      @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word PSYDUCK      @ Ruby 4%
.word PSYDUCK      @ Ruby 4%
.word PSYDUCK      @ Sapphire 4%
.word PSYDUCK      @ Sapphire 4%
.word PSYDUCK      @ Emerald 4%
.word PSYDUCK      @ Emerald 4%
.word ARBOK        @ FireRed 4%
.word ARBOK        @ FireRed 4%
.word PSYDUCK      @ LeafGreen 4%
.word PSYDUCK      @ LeafGreen 4%

@ Water:
@ Surfing:
.word 15 @ Rate
WaterEncounter 30, 20, WOOPER       @ 60%
WaterEncounter 30, 20, MARILL       @ 30%
WaterEncounter 40, 20, QUAGSIRE     @ 5%
WaterEncounter 40, 20, PSYDUCK      @ 4%
WaterEncounter 40, 20, PSYDUCK      @ 1%

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
WaterEncounter 30, 15, GYARADOS     @ 4%
WaterEncounter 30, 15, GYARADOS     @ 1%

@ Super Rod:
.word 75 @ Rate
WaterEncounter 55, 30, WHISCASH     @ 60%
WaterEncounter 20, 15, CARVANHA     @ 30%
WaterEncounter 55, 40, GYARADOS     @ 5%
WaterEncounter 30, 15, CARVANHA     @ 4%
WaterEncounter 30, 15, CARVANHA     @ 1%
