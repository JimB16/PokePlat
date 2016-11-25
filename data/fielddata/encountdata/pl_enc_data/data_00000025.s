.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 35 @ Rate
.word 27, WOOPER       @ 20%
.word 27, BIBAREL      @ 20%
.word 28, BIBAREL      @ 10%
.word 27, TANGELA      @ 10%
.word 28, TANGELA      @ 10%
.word 29, QUAGSIRE     @ 10%
.word 28, WOOPER       @ 5%
.word 29, WOOPER       @ 5%
.word 29, YANMA        @ 4%
.word 29, TANGELA      @ 4%
.word 30, YANMA        @ 1%
.word 30, TANGELA      @ 1%

.word WOOPER       @ Swarm 20%
.word BIBAREL      @ Swarm 20%
.word BIBAREL      @ Day 10%
.word TANGELA      @ Day 10%
.word NOCTOWL      @ Night 10%
.word HOOTHOOT     @ Night 10%
.word TANGELA      @ Poke Radar 10%
.word QUAGSIRE     @ Poke Radar 10%
.word YANMA        @ Poke Radar 10%
.word TANGELA      @ Poke Radar 10%
.word VOLTORB      @ 
.word VOLTORB      @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word YANMA        @ Ruby 4%
.word TANGELA      @ Ruby 4%
.word YANMA        @ Sapphire 4%
.word TANGELA      @ Sapphire 4%
.word YANMA        @ Emerald 4%
.word TANGELA      @ Emerald 4%
.word ARBOK        @ FireRed 4%
.word ARBOK        @ FireRed 4%
.word YANMA        @ LeafGreen 4%
.word TANGELA      @ LeafGreen 4%

@ Water:
@ Surfing:
.word 10 @ Rate
WaterEncounter 30, 20, WOOPER       @ 60%
WaterEncounter 30, 20, WOOPER       @ 30%
WaterEncounter 40, 20, QUAGSIRE     @ 5%
WaterEncounter 40, 20, QUAGSIRE     @ 4%
WaterEncounter 40, 20, QUAGSIRE     @ 1%

@ Unknown:
.word 0 @ Rate
WaterEncounter 0,  0,  MISSINGNO    @ 60%
WaterEncounter 0,  0,  MISSINGNO    @ 30%
WaterEncounter 0,  0,  MISSINGNO    @ 5%
WaterEncounter 0,  0,  MISSINGNO    @ 4%
WaterEncounter 0,  0,  MISSINGNO    @ 1%

@ Old Rod:
.word 25 @ Rate
WaterEncounter 6,  3,  MAGIKARP     @ 60%
WaterEncounter 7,  4,  MAGIKARP     @ 30%
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
WaterEncounter 55, 30, GYARADOS     @ 60%
WaterEncounter 40, 30, CARVANHA     @ 30%
WaterEncounter 50, 20, WHISCASH     @ 5%
WaterEncounter 55, 40, CARVANHA     @ 4%
WaterEncounter 55, 40, CARVANHA     @ 1%
