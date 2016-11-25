.include "source/macros_asm.s"

@ Encounter Data:

@ Grass/Ground:
@ Walking:
.word 30 @ Rate
.word 53, DUGTRIO      @ 20%
.word 53, CACTURNE     @ 20%
.word 52, HIPPOWDON    @ 10%
.word 52, RHYDON       @ 10%
.word 53, RHYDON       @ 10%
.word 54, HIPPOWDON    @ 10%
.word 52, DUGTRIO      @ 5%
.word 54, DUGTRIO      @ 5%
.word 23, DIGLETT      @ 4%
.word 23, CACNEA       @ 4%
.word 25, DIGLETT      @ 1%
.word 25, CACNEA       @ 1%

.word BELDUM       @ Swarm 20%
.word BELDUM       @ Swarm 20%
.word HIPPOWDON    @ Day 10%
.word RHYDON       @ Day 10%
.word CACTURNE     @ Night 10%
.word CACTURNE     @ Night 10%
.word VIBRAVA      @ Poke Radar 10%
.word VIBRAVA      @ Poke Radar 10%
.word TRAPINCH     @ Poke Radar 10%
.word TRAPINCH     @ Poke Radar 10%
.word VOLTORB      @ 
.word VOLTORB      @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word MISSINGNO    @ 
.word DIGLETT      @ Ruby 4%
.word CACNEA       @ Ruby 4%
.word DIGLETT      @ Sapphire 4%
.word CACNEA       @ Sapphire 4%
.word DIGLETT      @ Emerald 4%
.word CACNEA       @ Emerald 4%
.word DIGLETT      @ FireRed 4%
.word CACNEA       @ FireRed 4%
.word SANDSLASH    @ LeafGreen 4%
.word SANDSLASH    @ LeafGreen 4%

@ Water:
@ Surfing:
.word 10 @ Rate
WaterEncounter 50, 40, POLIWHIRL    @ 60%
WaterEncounter 30, 20, POLIWAG      @ 30%
WaterEncounter 55, 45, POLIWHIRL    @ 5%
WaterEncounter 55, 45, POLIWHIRL    @ 4%
WaterEncounter 55, 45, POLIWHIRL    @ 1%

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
