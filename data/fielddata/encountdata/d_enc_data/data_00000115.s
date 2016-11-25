.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 10 @ Rate
.word 23, GEODUDE      @ 20%
.word 23, GEODUDE      @ 20%
.word 23, GEODUDE      @ 10%
.word 23, GEODUDE      @ 10%
.word 23, GEODUDE      @ 10%
.word 23, GEODUDE      @ 10%
.word 23, GEODUDE      @ 5%
.word 22, HIPPOPOTAS   @ 5%
.word 23, GEODUDE      @ 4%
.word 23, HIPPOPOTAS   @ 4%
.word 23, GEODUDE      @ 1%
.word 24, HIPPOPOTAS   @ 1%

.word GEODUDE      @ Swarm 20%
.word GEODUDE      @ Swarm 20%
.word GEODUDE      @ Day 10%
.word GEODUDE      @ Day 10%
.word GEODUDE      @ Night 10%
.word GEODUDE      @ Night 10%
.word GEODUDE      @ Poke Radar 10%
.word GEODUDE      @ Poke Radar 10%
.word GEODUDE      @ Poke Radar 10%
.word HIPPOPOTAS   @ Poke Radar 10%
.word VOLTORB      @ 
.word VOLTORB      @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word GEODUDE      @ Ruby 4%
.word HIPPOPOTAS   @ Ruby 4%
.word GEODUDE      @ Sapphire 4%
.word HIPPOPOTAS   @ Sapphire 4%
.word GEODUDE      @ Emerald 4%
.word HIPPOPOTAS   @ Emerald 4%
.word GEODUDE      @ FireRed 4%
.word HIPPOPOTAS   @ FireRed 4%
.word GEODUDE      @ LeafGreen 4%
.word HIPPOPOTAS   @ LeafGreen 4%

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
