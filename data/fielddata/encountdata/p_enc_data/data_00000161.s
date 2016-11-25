.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 18, WOOPER       @ 20%
.word 18, BIBAREL      @ 20%
.word 19, ROSELIA      @ 10%
.word 19, BIBAREL      @ 10%
.word 18, KRICKETUNE   @ 10%
.word 18, ROSELIA      @ 10%
.word 20, ROSELIA      @ 5%
.word 18, WOOPER       @ 5%
.word 20, BIBAREL      @ 4%
.word 18, WOOPER       @ 4%
.word 20, BIBAREL      @ 1%
.word 18, WOOPER       @ 1%

.word WOOPER       @ Swarm 20%
.word BIBAREL      @ Swarm 20%
.word ROSELIA      @ Day 10%
.word BIBAREL      @ Day 10%
.word KRICKETUNE   @ Night 10%
.word KRICKETUNE   @ Night 10%
.word GRIMER       @ Poke Radar 10%
.word GRIMER       @ Poke Radar 10%
.word GRIMER       @ Poke Radar 10%
.word GRIMER       @ Poke Radar 10%
.word VOLTORB      @ 
.word VOLTORB      @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word BIBAREL      @ Ruby 4%
.word WOOPER       @ Ruby 4%
.word LOMBRE       @ Sapphire 4%
.word LOTAD        @ Sapphire 4%
.word BIBAREL      @ Emerald 4%
.word WOOPER       @ Emerald 4%
.word EKANS        @ FireRed 4%
.word EKANS        @ FireRed 4%
.word BIBAREL      @ LeafGreen 4%
.word WOOPER       @ LeafGreen 4%

@ Water:
@ Surfing:
.word 10 @ Rate
WaterEncounter 30, 20, WOOPER       @ 60%
WaterEncounter 40, 20, WOOPER       @ 30%
WaterEncounter 40, 30, QUAGSIRE     @ 5%
WaterEncounter 40, 30, QUAGSIRE     @ 4%
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
