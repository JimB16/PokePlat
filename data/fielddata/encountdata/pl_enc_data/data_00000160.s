.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 23, ROSELIA      @ 20%
.word 21, MARILL       @ 20%
.word 23, STARAVIA     @ 10%
.word 22, KIRLIA       @ 10%
.word 22, ROSELIA      @ 10%
.word 21, STARAVIA     @ 10%
.word 24, KIRLIA       @ 5%
.word 24, KIRLIA       @ 5%
.word 24, ROSELIA      @ 4%
.word 23, MARILL       @ 4%
.word 24, ROSELIA      @ 1%
.word 23, MARILL       @ 1%

.word ROSELIA      @ Swarm 20%
.word MARILL       @ Swarm 20%
.word STARAVIA     @ Day 10%
.word RALTS        @ Day 10%
.word MARILL       @ Night 10%
.word MARILL       @ Night 10%
.word SMEARGLE     @ Poke Radar 10%
.word SMEARGLE     @ Poke Radar 10%
.word SMEARGLE     @ Poke Radar 10%
.word SMEARGLE     @ Poke Radar 10%
.word VOLTORB      @ 
.word VOLTORB      @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word ROSELIA      @ Ruby 4%
.word MARILL       @ Ruby 4%
.word ROSELIA      @ Sapphire 4%
.word MARILL       @ Sapphire 4%
.word ROSELIA      @ Emerald 4%
.word MARILL       @ Emerald 4%
.word ROSELIA      @ FireRed 4%
.word MARILL       @ FireRed 4%
.word ROSELIA      @ LeafGreen 4%
.word MARILL       @ LeafGreen 4%

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
