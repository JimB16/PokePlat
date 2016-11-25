.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 18, BUDEW        @ 20%
.word 18, BIDOOF       @ 20%
.word 19, BUDEW        @ 10%
.word 17, RALTS        @ 10%
.word 19, ROSELIA      @ 10%
.word 18, BIBAREL      @ 10%
.word 18, RALTS        @ 5%
.word 19, BIBAREL      @ 5%
.word 20, ROSELIA      @ 4%
.word 20, BIBAREL      @ 4%
.word 20, ROSELIA      @ 1%
.word 20, BIBAREL      @ 1%

.word DUNSPARCE    @ Swarm 20%
.word DUNSPARCE    @ Swarm 20%
.word BUDEW        @ Day 10%
.word RALTS        @ Day 10%
.word ZUBAT        @ Night 10%
.word RALTS        @ Night 10%
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
.word ZANGOOSE     @ Ruby 4%
.word ZANGOOSE     @ Ruby 4%
.word SEVIPER      @ Sapphire 4%
.word SEVIPER      @ Sapphire 4%
.word ROSELIA      @ Emerald 4%
.word BIBAREL      @ Emerald 4%
.word ROSELIA      @ FireRed 4%
.word BIBAREL      @ FireRed 4%
.word ROSELIA      @ LeafGreen 4%
.word BIBAREL      @ LeafGreen 4%

@ Water:
@ Surfing:
.word 10 @ Rate
WaterEncounter 20, 20, PSYDUCK      @ 60%
WaterEncounter 20, 20, PSYDUCK      @ 30%
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
