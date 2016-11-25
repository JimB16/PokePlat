.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 17, STARAVIA     @ 20%
.word 16, ROSELIA      @ 20%
.word 16, PICHU        @ 10%
.word 16, PICHU        @ 10%
.word 17, ROSELIA      @ 10%
.word 17, KRICKETUNE   @ 10%
.word 18, PIKACHU      @ 5%
.word 16, PICHU        @ 5%
.word 18, PIKACHU      @ 4%
.word 16, PICHU        @ 4%
.word 18, PIKACHU      @ 1%
.word 16, PICHU        @ 1%

.word STARAVIA     @ Swarm 20%
.word ROSELIA      @ Swarm 20%
.word STARAVIA     @ Day 10%
.word STARAVIA     @ Day 10%
.word KRICKETUNE   @ Night 10%
.word KRICKETUNE   @ Night 10%
.word ROSELIA      @ Poke Radar 10%
.word KRICKETUNE   @ Poke Radar 10%
.word PIKACHU      @ Poke Radar 10%
.word PICHU        @ Poke Radar 10%
.word VOLTORB      @ 
.word VOLTORB      @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word PIKACHU      @ Ruby 4%
.word PICHU        @ Ruby 4%
.word PIKACHU      @ Sapphire 4%
.word PICHU        @ Sapphire 4%
.word PIKACHU      @ Emerald 4%
.word PICHU        @ Emerald 4%
.word PIKACHU      @ FireRed 4%
.word PICHU        @ FireRed 4%
.word PIKACHU      @ LeafGreen 4%
.word PICHU        @ LeafGreen 4%

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
