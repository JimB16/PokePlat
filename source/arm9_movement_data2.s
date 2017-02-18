
JumpTable_SeeDown: @ 0x20eec48
.word Movement_SeeDown+1 @ 0x20eec48
.word Movement_EndMovement+1 @ 0x20eec4c

JumpTable_20eec50: @ 0x20eec50
.word Function_2066448+1 @ 0x20eec50
.word Movement_EndMovement+1 @ 0x20eec54

JumpTable_20eec58: @ 0x20eec58
.word Function_2066470+1 @ 0x20eec58
.word Movement_EndMovement+1 @ 0x20eec5c

JumpTable_20eec60: @ 0x20eec60
.word Function_2066488+1 @ 0x20eec60
.word Movement_EndMovement+1 @ 0x20eec64

JumpTable_20eec68: @ 0x20eec68
.word Function_2066430+1 @ 0x20eec68
.word Movement_EndMovement+1 @ 0x20eec6c

JumpTable_WaitDisappear: @ 0x20eec70
.word Movement_WaitDisappear+1 @ 0x20eec70
.word Movement_EndMovement+1 @ 0x20eec74

JumpTable_SeeUp: @ 0x20eec78
.word Movement_SeeUp+1 @ 0x20eec78
.word Movement_EndMovement+1 @ 0x20eec7c

JumpTable_SeeRight: @ 0x20eec80
.word Movement_SeeRight+1 @ 0x20eec80
.word Movement_EndMovement+1 @ 0x20eec84

JumpTable_SeeLeft: @ 0x20eec88
.word Movement_SeeLeft+1 @ 0x20eec88
.word Movement_EndMovement+1 @ 0x20eec8c

JumpTable_20eec90: @ 0x20eec90
.word Function_206645c+1 @ 0x20eec90
.word Movement_EndMovement+1 @ 0x20eec94

JumpTable_PauseJumpLeftOne: @ 0x20eec98
.word Movement_PauseJumpLeftOne+1 @ 0x20eec98
.word Movement_ContinueJumping+1 @ 0x20eec9c
.word Movement_EndMovement+1 @ 0x20eeca0

JumpTable_20eeca4: @ 0x20eeca4
.word Function_20672fc+1 @ 0x20eeca4
.word Function_2067068+1 @ 0x20eeca8
.word Movement_EndMovement+1 @ 0x20eecac

JumpTable_20eecb0: @ 0x20eecb0
.word Function_20672d4+1 @ 0x20eecb0
.word Function_2067068+1 @ 0x20eecb4
.word Movement_EndMovement+1 @ 0x20eecb8

JumpTable_20eecbc: @ 0x20eecbc
.word Function_20672ac+1 @ 0x20eecbc
.word Function_2067068+1 @ 0x20eecc0
.word Movement_EndMovement+1 @ 0x20eecc4


Unknown_20eecc8:
.word 0x0, 0x2000, 0x0

Unknown_20eecd4:
.word 0x0, 0xffffe000, 0x0

Unknown_20eece0:
.word 0x0, 0x0, 0xffffe000

Unknown_20eecec:
.word 0x5000, 0x6000, 0x5000

Unknown_20eecf8:
.word 0x4000, 0x0, 0x0

Unknown_20eed04:
.word 0x0, 0x0, 0xffffc000

Unknown_20eed10:
.word 0x0, 0x0, 0x4000

Unknown_20eed1c:
.word 0x0, 0xffffc000, 0x0

Unknown_20eed28:
.word 0xffffc000, 0x0, 0x0

Unknown_20eed34:
.word 0x0, 0x0, 0x4000

Unknown_20eed40:
.word 0x0, 0x0, 0xffffc000

Unknown_20eed4c:
.word 0x0, 0x0, 0x2000

Unknown_20eed58:
.word 0x0, 0x4000, 0x0

Unknown_20eed64:
.word 0x0, 0x0, 0xffffc000

Unknown_20eed70:
.word 0x0, 0x0, 0x4000

Unknown_20eed7c:
.word 0x0, 0xffffc000, 0x0

Unknown_20eed88:
.word 0x0, 0x4000, 0x0

Unknown_20eed94:
.word 0x8000, 0x0, 0x0

Unknown_20eeda0:
.word 0xffff8000, 0x0, 0x0

Unknown_20eedac:
.word 0x0, 0x0, 0xffff8000

Unknown_20eedb8:
.word 0x0, 0x0, 0x8000

Unknown_20eedc4:
.word 0x4000, 0x0, 0x0

Unknown_20eedd0:
.word 0xffffc000, 0x0, 0x0

Unknown_20eeddc:
.word 0x0, 0x0, 0xffffc000

Unknown_20eede8:
.word 0x0, 0x0, 0x4000

Unknown_20eedf4:
.word 0x2000, 0x0, 0x0

Unknown_20eee00:
.word 0xffffe000, 0x0, 0x0

Unknown_20eee0c:
.word 0x0, 0x0, 0xffffe000

Unknown_20eee18:
.word 0x0, 0x0, 0x2000

Unknown_20eee24:
.word 0x0, 0x0, 0x2000

Unknown_20eee30:
.word 0x0, 0x0, 0xffffe000

Unknown_20eee3c:
.word 0x0, 0xffffe000, 0x0

Unknown_20eee48: @ 0x20eee48
.word 0x0, 0x2000, 0x0


JumpTable_MovementScriptStateFunctions: @ 0x20eee54
.word Function_20657a4+1 @ 0x20eee54
.word SetSpriteMovementWhenPossible+1 @ 0x20eee58
.word LoadMovementScriptCmdIntoSpriteStruct+1 @ 0x20eee5c
.word Function_20657e4+1 @ 0x20eee60
.word ExecuteSpriteMovementCmdAsOftenAsSet+1 @ 0x20eee64
.word Function_2065834+1 @ 0x20eee68


Unknown_20eee6c: @ 0x20eee6c
.word 0x2000, 0x3000, 0x3000, 0x2000, 0x3000, 0x3000


Unknown_20eee84: @ 0x20eee84
.word 0x2500, 0x2480, 0x2480, 0x2480, 0x2480, 0x2480, 0x2480

Unknown_20eeea0: @ 0x20eeea0
.word 0x4000, 0x6000, 0x8000, 0xa000, 0xb000, 0xc000, 0xc000, 0xc000, 0xb000, 0xa000, 0x9000, 0x8000, 0x6000, 0x4000, 0x0, 0x0

Unknown_20eeee0: @ 0x20eeee0
.word 0x0, 0x2000, 0x3000, 0x4000, 0x5000, 0x6000, 0x6000, 0x6000, 0x5000, 0x5000, 0x4000, 0x3000, 0x2000, 0x0, 0x0, 0x0

Unknown_20eef20: @ 0x20eef20
.word 0x2000, 0x4000, 0x6000, 0x8000, 0x9000, 0xa000, 0xa000, 0xa000, 0x9000, 0x8000, 0x6000, 0x5000, 0x3000, 0x2000, 0x0, 0x0


JumpTable_20eef60: @ 0x20eef60
.word Function_2067344+1 @ 0x20eef60
.word Function_2067068+1 @ 0x20eef64
.word Movement_EndMovement+1 @ 0x20eef68

JumpTable_20eef6c: @ 0x20eef6c
.word Function_2066f54+1 @ 0x20eef6c
.word Function_20668ec+1 @ 0x20eef70
.word Movement_EndMovement+1 @ 0x20eef74

JumpTable_20eef78: @ 0x20eef78
.word Function_20671f0+1 @ 0x20eef78
.word Function_2067068+1 @ 0x20eef7c
.word Movement_EndMovement+1 @ 0x20eef80

JumpTable_20eef84: @ 0x20eef84
.word Function_2066f20+1 @ 0x20eef84
.word Function_20668ec+1 @ 0x20eef88
.word Movement_EndMovement+1 @ 0x20eef8c

JumpTable_20eef90: @ 0x20eef90
.word Function_2066eec+1 @ 0x20eef90
.word Function_20668ec+1 @ 0x20eef94
.word Movement_EndMovement+1 @ 0x20eef98

JumpTable_20eef9c: @ 0x20eef9c
.word Function_2067320+1 @ 0x20eef9c
.word Function_2067068+1 @ 0x20eefa0
.word Movement_EndMovement+1 @ 0x20eefa4

JumpTable_20eefa8: @ 0x20eefa8
.word Function_2066e84+1 @ 0x20eefa8
.word Function_20668ec+1 @ 0x20eefac
.word Movement_EndMovement+1 @ 0x20eefb0

JumpTable_20eefb4: @ 0x20eefb4
.word Function_2066e50+1 @ 0x20eefb4
.word Function_20668ec+1 @ 0x20eefb8
.word Movement_EndMovement+1 @ 0x20eefbc

JumpTable_20eefc0: @ 0x20eefc0
.word Function_2066e1c+1 @ 0x20eefc0
.word Function_20668ec+1 @ 0x20eefc4
.word Movement_EndMovement+1 @ 0x20eefc8

JumpTable_20eefcc: @ 0x20eefcc
.word Function_2066de8+1 @ 0x20eefcc
.word Function_20668ec+1 @ 0x20eefd0
.word Movement_EndMovement+1 @ 0x20eefd4

JumpTable_20eefd8: @ 0x20eefd8
.word Function_2066db4+1 @ 0x20eefd8
.word Function_20668ec+1 @ 0x20eefdc
.word Movement_EndMovement+1 @ 0x20eefe0

JumpTable_20eefe4: @ 0x20eefe4
.word Function_2066d80+1 @ 0x20eefe4
.word Function_20668ec+1 @ 0x20eefe8
.word Movement_EndMovement+1 @ 0x20eefec

JumpTable_20eeff0: @ 0x20eeff0
.word Function_2066d4c+1 @ 0x20eeff0
.word Function_20668ec+1 @ 0x20eeff4
.word Movement_EndMovement+1 @ 0x20eeff8

JumpTable_20eeffc: @ 0x20eeffc
.word Function_206736c+1 @ 0x20eeffc
.word Function_2067068+1 @ 0x20ef000
.word Movement_EndMovement+1 @ 0x20ef004

JumpTable_20ef008: @ 0x20ef008
.word Function_2067214+1 @ 0x20ef008
.word Function_2067068+1 @ 0x20ef00c
.word Movement_EndMovement+1 @ 0x20ef010

JumpTable_20ef014: @ 0x20ef014
.word Function_2066ce8+1 @ 0x20ef014
.word Function_20668ec+1 @ 0x20ef018
.word Movement_EndMovement+1 @ 0x20ef01c

JumpTable_20ef020: @ 0x20ef020
.word Function_206621c+1 @ 0x20ef020
.word Movement_ContinueJumping+1 @ 0x20ef024
.word Movement_EndMovement+1 @ 0x20ef028

JumpTable_20ef02c: @ 0x20ef02c
.word Function_206723c+1 @ 0x20ef02c
.word Function_2067068+1 @ 0x20ef030
.word Movement_EndMovement+1 @ 0x20ef034

JumpTable_20ef038: @ 0x20ef038
.word Function_2066cb8+1 @ 0x20ef038
.word Function_20668ec+1 @ 0x20ef03c
.word Movement_EndMovement+1 @ 0x20ef040

JumpTable_20ef044: @ 0x20ef044
.word Function_2066c84+1 @ 0x20ef044
.word Function_20668ec+1 @ 0x20ef048
.word Movement_EndMovement+1 @ 0x20ef04c

JumpTable_20ef050: @ 0x20ef050
.word Function_2066c50+1 @ 0x20ef050
.word Function_20668ec+1 @ 0x20ef054
.word Movement_EndMovement+1 @ 0x20ef058

JumpTable_20ef05c: @ 0x20ef05c
.word Function_2066c20+1 @ 0x20ef05c
.word Function_20668ec+1 @ 0x20ef060
.word Movement_EndMovement+1 @ 0x20ef064

JumpTable_20ef068: @ 0x20ef068
.word Function_2066bf0+1 @ 0x20ef068
.word Function_20668ec+1 @ 0x20ef06c
.word Movement_EndMovement+1 @ 0x20ef070

JumpTable_20ef074: @ 0x20ef074
.word Function_2066bc0+1 @ 0x20ef074
.word Function_20668ec+1 @ 0x20ef078
.word Movement_EndMovement+1 @ 0x20ef07c

JumpTable_20ef080: @ 0x20ef080
.word Function_2066b90+1 @ 0x20ef080
.word Function_20668ec+1 @ 0x20ef084
.word Movement_EndMovement+1 @ 0x20ef088

JumpTable_20ef08c: @ 0x20ef08c
.word Function_2066b60+1 @ 0x20ef08c
.word Function_20668ec+1 @ 0x20ef090
.word Movement_EndMovement+1 @ 0x20ef094

JumpTable_20ef098: @ 0x20ef098
.word Function_2066b30+1 @ 0x20ef098
.word Function_20668ec+1 @ 0x20ef09c
.word Movement_EndMovement+1 @ 0x20ef0a0

JumpTable_20ef0a4: @ 0x20ef0a4
.word Function_2066afc+1 @ 0x20ef0a4
.word Function_20668ec+1 @ 0x20ef0a8
.word Movement_EndMovement+1 @ 0x20ef0ac

JumpTable_20ef0b0: @ 0x20ef0b0
.word Function_2066eb8+1 @ 0x20ef0b0
.word Function_20668ec+1 @ 0x20ef0b4
.word Movement_EndMovement+1 @ 0x20ef0b8

JumpTable_20ef0bc: @ 0x20ef0bc
.word Function_2066a94+1 @ 0x20ef0bc
.word Function_20668ec+1 @ 0x20ef0c0
.word Movement_EndMovement+1 @ 0x20ef0c4

JumpTable_20ef0c8: @ 0x20ef0c8
.word Function_2066a60+1 @ 0x20ef0c8
.word Function_20668ec+1 @ 0x20ef0cc
.word Movement_EndMovement+1 @ 0x20ef0d0

JumpTable_20ef0d4: @ 0x20ef0d4
.word Function_2066a2c+1 @ 0x20ef0d4
.word Function_20668ec+1 @ 0x20ef0d8
.word Movement_EndMovement+1 @ 0x20ef0dc

JumpTable_20ef0e0: @ 0x20ef0e0
.word Function_20669fc+1 @ 0x20ef0e0
.word Function_20668ec+1 @ 0x20ef0e4
.word Movement_EndMovement+1 @ 0x20ef0e8

JumpTable_20ef0ec: @ 0x20ef0ec
.word Function_20669cc+1 @ 0x20ef0ec
.word Function_20668ec+1 @ 0x20ef0f0
.word Movement_EndMovement+1 @ 0x20ef0f4

JumpTable_20ef0f8: @ 0x20ef0f8
.word Function_2066998+1 @ 0x20ef0f8
.word Function_20668ec+1 @ 0x20ef0fc
.word Movement_EndMovement+1 @ 0x20ef100

JumpTable_20ef104: @ 0x20ef104
.word Function_2066968+1 @ 0x20ef104
.word Function_20668ec+1 @ 0x20ef108
.word Movement_EndMovement+1 @ 0x20ef10c

JumpTable_20ef110: @ 0x20ef110
.word Function_2066934+1 @ 0x20ef110
.word Function_20668ec+1 @ 0x20ef114
.word Movement_EndMovement+1 @ 0x20ef118

JumpTable_WaitMoveForever: @ 0x20ef11c
.word Function_20667e8+1 @ 0x20ef11c
.word Function_2066804+1 @ 0x20ef120
.word Movement_EndMovement+1 @ 0x20ef124

JumpTable_20ef128: @ 0x20ef128
.word Function_20667cc+1 @ 0x20ef128
.word Function_2066804+1 @ 0x20ef12c
.word Movement_EndMovement+1 @ 0x20ef130

JumpTable_WaitJumpSite: @ 0x20ef134
.word Function_2066710+1 @ 0x20ef134
.word Function_2066764+1 @ 0x20ef138
.word Movement_EndMovement+1 @ 0x20ef13c

JumpTable_WaitMoveSite: @ 0x20ef140
.word Function_20666c8+1 @ 0x20ef140
.word Function_20666e4+1 @ 0x20ef144
.word Movement_EndMovement+1 @ 0x20ef148

JumpTable_20ef14c: @ 0x20ef14c
.word Function_20666a0+1 @ 0x20ef14c
.word Function_20666b0+1 @ 0x20ef150
.word Movement_EndMovement+1 @ 0x20ef154

JumpTable_20ef158: @ 0x20ef158
.word Function_2066690+1 @ 0x20ef158
.word Function_20666b0+1 @ 0x20ef15c
.word Movement_EndMovement+1 @ 0x20ef160

JumpTable_20ef164: @ 0x20ef164
.word Function_2066680+1 @ 0x20ef164
.word Function_20666b0+1 @ 0x20ef168
.word Movement_EndMovement+1 @ 0x20ef16c

JumpTable_20ef170: @ 0x20ef170
.word Function_2067394+1 @ 0x20ef170
.word Function_2067068+1 @ 0x20ef174
.word Movement_EndMovement+1 @ 0x20ef178

JumpTable_20ef17c: @ 0x20ef17c
.word Function_2066240+1 @ 0x20ef17c
.word Movement_ContinueJumping+1 @ 0x20ef180
.word Movement_EndMovement+1 @ 0x20ef184

JumpTable_PauseWalkRight: @ 0x20ef188
.word Movement_PauseWalkRight+1 @ 0x20ef188
.word Movement_ContinuePauseWalking+1 @ 0x20ef18c
.word Movement_EndMovement+1 @ 0x20ef190

JumpTable_PauseReverseUp: @ 0x20ef194
.word Movement_PauseReverseUp+1 @ 0x20ef194
.word Movement_ContinueWalking+1 @ 0x20ef198
.word Movement_EndMovement+1 @ 0x20ef19c

JumpTable_20ef1a0: @ 0x20ef1a0
.word Function_2066264+1 @ 0x20ef1a0
.word Movement_ContinueJumping+1 @ 0x20ef1a4
.word Movement_EndMovement+1 @ 0x20ef1a8

JumpTable_20ef1ac: @ 0x20ef1ac
.word Function_2067260+1 @ 0x20ef1ac
.word Function_2067068+1 @ 0x20ef1b0
.word Movement_EndMovement+1 @ 0x20ef1b4

JumpTable_PauseWalkLeft: @ 0x20ef1b8
.word Movement_PauseWalkLeft+1 @ 0x20ef1b8
.word Movement_ContinuePauseWalking+1 @ 0x20ef1bc
.word Movement_EndMovement+1 @ 0x20ef1c0

JumpTable_PauseWalkDown: @ 0x20ef1c4
.word Movement_PauseWalkDown+1 @ 0x20ef1c4
.word Movement_ContinuePauseWalking+1 @ 0x20ef1c8
.word Movement_EndMovement+1 @ 0x20ef1cc

JumpTable_PauseWalkUp: @ 0x20ef1d0
.word Movement_PauseWalkUp+1 @ 0x20ef1d0
.word Movement_ContinuePauseWalking+1 @ 0x20ef1d4
.word Movement_EndMovement+1 @ 0x20ef1d8

JumpTable_PauseWalkRightSlow: @ 0x20ef1dc
.word Movement_PauseWalkRightSlow+1 @ 0x20ef1dc
.word Movement_ContinuePauseWalkingSlow+1 @ 0x20ef1e0
.word Movement_EndMovement+1 @ 0x20ef1e4

JumpTable_PauseWalkLeftSlow: @ 0x20ef1e8
.word Movement_PauseWalkLeftSlow+1 @ 0x20ef1e8
.word Movement_ContinuePauseWalkingSlow+1 @ 0x20ef1ec
.word Movement_EndMovement+1 @ 0x20ef1f0

JumpTable_PauseWalkDownSlow: @ 0x20ef1f4
.word Movement_PauseWalkDownSlow+1 @ 0x20ef1f4
.word Movement_ContinuePauseWalkingSlow+1 @ 0x20ef1f8
.word Movement_EndMovement+1 @ 0x20ef1fc

JumpTable_PauseWalkUpSlow: @ 0x20ef200
.word Movement_PauseWalkUpSlow+1 @ 0x20ef200
.word Movement_ContinuePauseWalkingSlow+1 @ 0x20ef204
.word Movement_EndMovement+1 @ 0x20ef208

JumpTable_WaitDoubleExclamation: @ 0x20ef20c
.word Function_2066500+1 @ 0x20ef20c
.word Movement_ContinueSpeechBubble+1 @ 0x20ef210
.word Movement_EndMovement+1 @ 0x20ef214

JumpTable_Exclamation: @ 0x20ef218
.word Movement_Exclamation+1 @ 0x20ef218
.word Movement_ContinueSpeechBubble+1 @ 0x20ef21c
.word Movement_EndMovement+1 @ 0x20ef220

JumpTable_PauseReverseDown: @ 0x20ef224
.word Movement_PauseReverseDown+1 @ 0x20ef224
.word Movement_ContinueWalking+1 @ 0x20ef228
.word Movement_EndMovement+1 @ 0x20ef22c

JumpTable_MoveDownSlow: @ 0x20ef230
.word Movement_MoveDownSlow+1 @ 0x20ef230
.word Movement_ContinueMoving+1 @ 0x20ef234
.word Movement_EndMovement+1 @ 0x20ef238

JumpTable_20ef23c: @ 0x20ef23c
.word Function_20663a4+1 @ 0x20ef23c
.word Function_20663d0+1 @ 0x20ef240
.word Movement_EndMovement+1 @ 0x20ef244

JumpTable_20ef248: @ 0x20ef248
.word Function_2066338+1 @ 0x20ef248
.word Function_206635c+1 @ 0x20ef24c
.word Movement_EndMovement+1 @ 0x20ef250

JumpTable_20ef254: @ 0x20ef254
.word Function_206632c+1 @ 0x20ef254
.word Function_20662c4+1 @ 0x20ef258
.word Movement_EndMovement+1 @ 0x20ef25c

JumpTable_20ef260: @ 0x20ef260
.word Function_2066320+1 @ 0x20ef260
.word Function_20662c4+1 @ 0x20ef264
.word Movement_EndMovement+1 @ 0x20ef268

JumpTable_20ef26c: @ 0x20ef26c
.word Function_2066314+1 @ 0x20ef26c
.word Function_20662c4+1 @ 0x20ef270
.word Movement_EndMovement+1 @ 0x20ef274

JumpTable_20ef278: @ 0x20ef278
.word Function_2066308+1 @ 0x20ef278
.word Function_20662c4+1 @ 0x20ef27c
.word Movement_EndMovement+1 @ 0x20ef280

JumpTable_20ef284: @ 0x20ef284
.word Function_20662fc+1 @ 0x20ef284
.word Function_20662c4+1 @ 0x20ef288
.word Movement_EndMovement+1 @ 0x20ef28c

JumpTable_20ef290: @ 0x20ef290
.word Function_20662f0+1 @ 0x20ef290
.word Function_20662c4+1 @ 0x20ef294
.word Movement_EndMovement+1 @ 0x20ef298

JumpTable_20ef29c: @ 0x20ef29c
.word Function_20662e4+1 @ 0x20ef29c
.word Function_20662c4+1 @ 0x20ef2a0
.word Movement_EndMovement+1 @ 0x20ef2a4

JumpTable_PauseJumpRightTwo: @ 0x20ef2a8
.word Movement_PauseJumpRightTwo+1 @ 0x20ef2a8
.word Movement_ContinueJumping+1 @ 0x20ef2ac
.word Movement_EndMovement+1 @ 0x20ef2b0

JumpTable_PauseJumpLeftTwo: @ 0x20ef2b4
.word Movement_PauseJumpLeftTwo+1 @ 0x20ef2b4
.word Movement_ContinueJumping+1 @ 0x20ef2b8
.word Movement_EndMovement+1 @ 0x20ef2bc

JumpTable_PauseJumpRightOne: @ 0x20ef2c0
.word Movement_PauseJumpRightOne+1 @ 0x20ef2c0
.word Movement_ContinueJumping+1 @ 0x20ef2c4
.word Movement_EndMovement+1 @ 0x20ef2c8

JumpTable_20ef2cc: @ 0x20ef2cc
.word Function_2066ac8+1 @ 0x20ef2cc
.word Function_20668ec+1 @ 0x20ef2d0
.word Movement_EndMovement+1 @ 0x20ef2d4

JumpTable_JumpRightTwo: @ 0x20ef2d8
.word Movement_JumpRightTwo+1 @ 0x20ef2d8
.word Movement_ContinueJumping+1 @ 0x20ef2dc
.word Movement_EndMovement+1 @ 0x20ef2e0

JumpTable_JumpLeftTwo: @ 0x20ef2e4
.word Movement_JumpLeftTwo+1 @ 0x20ef2e4
.word Movement_ContinueJumping+1 @ 0x20ef2e8
.word Movement_EndMovement+1 @ 0x20ef2ec

JumpTable_JumpDownTwo: @ 0x20ef2f0
.word Movement_JumpDownTwo+1 @ 0x20ef2f0
.word Movement_ContinueJumping+1 @ 0x20ef2f4
.word Movement_EndMovement+1 @ 0x20ef2f8

JumpTable_JumpUpTwo: @ 0x20ef2fc
.word Movement_JumpUpTwo+1 @ 0x20ef2fc
.word Movement_ContinueJumping+1 @ 0x20ef300
.word Movement_EndMovement+1 @ 0x20ef304

JumpTable_JumpRightOne: @ 0x20ef308
.word Movement_JumpRightOne+1 @ 0x20ef308
.word Movement_ContinueJumping+1 @ 0x20ef30c
.word Movement_EndMovement+1 @ 0x20ef310

JumpTable_JumpLeftOne: @ 0x20ef314
.word Movement_JumpLeftOne+1 @ 0x20ef314
.word Movement_ContinueJumping+1 @ 0x20ef318
.word Movement_EndMovement+1 @ 0x20ef31c

JumpTable_JumpDownOne: @ 0x20ef320
.word Movement_JumpDownOne+1 @ 0x20ef320
.word Movement_ContinueJumping+1 @ 0x20ef324
.word Movement_EndMovement+1 @ 0x20ef328

JumpTable_JumpUpOne: @ 0x20ef32c
.word Movement_JumpUpOne+1 @ 0x20ef32c
.word Movement_ContinueJumping+1 @ 0x20ef330
.word Movement_EndMovement+1 @ 0x20ef334

JumpTable_JumpFacingRight: @ 0x20ef338
.word Movement_JumpFacingRight+1 @ 0x20ef338
.word Movement_ContinueJumping+1 @ 0x20ef33c
.word Movement_EndMovement+1 @ 0x20ef340

JumpTable_JumpFacingLeft: @ 0x20ef344
.word Movement_JumpFacingLeft+1 @ 0x20ef344
.word Movement_ContinueJumping+1 @ 0x20ef348
.word Movement_EndMovement+1 @ 0x20ef34c

JumpTable_JumpFacingDown: @ 0x20ef350
.word Movement_JumpFacingDown+1 @ 0x20ef350
.word Movement_ContinueJumping+1 @ 0x20ef354
.word Movement_EndMovement+1 @ 0x20ef358

JumpTable_JumpFacingUp: @ 0x20ef35c
.word Movement_JumpFacingUp+1 @ 0x20ef35c
.word Movement_ContinueJumping+1 @ 0x20ef360
.word Movement_EndMovement+1 @ 0x20ef364

JumpTable_JumpFacingRightSlow: @ 0x20ef368
.word Movement_JumpFacingRightSlow+1 @ 0x20ef368
.word Movement_ContinueJumping+1 @ 0x20ef36c
.word Movement_EndMovement+1 @ 0x20ef370

JumpTable_JumpFacingLeftSlow: @ 0x20ef374
.word Movement_JumpFacingLeftSlow+1 @ 0x20ef374
.word Movement_ContinueJumping+1 @ 0x20ef378
.word Movement_EndMovement+1 @ 0x20ef37c

JumpTable_JumpFacingDownSlow: @ 0x20ef380
.word Movement_JumpFacingDownSlow+1 @ 0x20ef380
.word Movement_ContinueJumping+1 @ 0x20ef384
.word Movement_EndMovement+1 @ 0x20ef388

JumpTable_JumpFacingUpSlow: @ 0x20ef38c
.word Movement_JumpFacingUpSlow+1 @ 0x20ef38c
.word Movement_ContinueJumping+1 @ 0x20ef390
.word Movement_EndMovement+1 @ 0x20ef394

JumpTable_RunRightSite: @ 0x20ef398
.word Function_2065dfc+1 @ 0x20ef398
.word Movement_ContinueMoving+1 @ 0x20ef39c
.word Movement_EndMovement+1 @ 0x20ef3a0

JumpTable_RunLeftSite: @ 0x20ef3a4
.word Function_2065dec+1 @ 0x20ef3a4
.word Movement_ContinueMoving+1 @ 0x20ef3a8
.word Movement_EndMovement+1 @ 0x20ef3ac

JumpTable_RunDownSite: @ 0x20ef3b0
.word Function_2065ddc+1 @ 0x20ef3b0
.word Movement_ContinueMoving+1 @ 0x20ef3b4
.word Movement_EndMovement+1 @ 0x20ef3b8

JumpTable_RunUpSite: @ 0x20ef3bc
.word Function_2065dcc+1 @ 0x20ef3bc
.word Movement_ContinueMoving+1 @ 0x20ef3c0
.word Movement_EndMovement+1 @ 0x20ef3c4

JumpTable_MoveRightVeryFast: @ 0x20ef3c8
.word Movement_MoveRightVeryFast+1 @ 0x20ef3c8
.word Movement_ContinueMoving+1 @ 0x20ef3cc
.word Movement_EndMovement+1 @ 0x20ef3d0

JumpTable_MoveLeftVeryFast: @ 0x20ef3d4
.word Movement_MoveLeftVeryFast+1 @ 0x20ef3d4
.word Movement_ContinueMoving+1 @ 0x20ef3d8
.word Movement_EndMovement+1 @ 0x20ef3dc

JumpTable_MoveDownVeryFast: @ 0x20ef3e0
.word Movement_MoveDownVeryFast+1 @ 0x20ef3e0
.word Movement_ContinueMoving+1 @ 0x20ef3e4
.word Movement_EndMovement+1 @ 0x20ef3e8

JumpTable_MoveUpVeryFast: @ 0x20ef3ec
.word Movement_MoveUpVeryFast+1 @ 0x20ef3ec
.word Movement_ContinueMoving+1 @ 0x20ef3f0
.word Movement_EndMovement+1 @ 0x20ef3f4

JumpTable_MoveRightFast: @ 0x20ef3f8
.word Movement_MoveRightFast+1 @ 0x20ef3f8
.word Movement_ContinueMoving+1 @ 0x20ef3fc
.word Movement_EndMovement+1 @ 0x20ef400

JumpTable_MoveLeftFast: @ 0x20ef404
.word Movement_MoveLeftFast+1 @ 0x20ef404
.word Movement_ContinueMoving+1 @ 0x20ef408
.word Movement_EndMovement+1 @ 0x20ef40c

JumpTable_MoveDownFast: @ 0x20ef410
.word Movement_MoveDownFast+1 @ 0x20ef410
.word Movement_ContinueMoving+1 @ 0x20ef414
.word Movement_EndMovement+1 @ 0x20ef418

JumpTable_MoveUpFast: @ 0x20ef41c
.word Movement_MoveUpFast+1 @ 0x20ef41c
.word Movement_ContinueMoving+1 @ 0x20ef420
.word Movement_EndMovement+1 @ 0x20ef424

JumpTable_MoveRight: @ 0x20ef428
.word Movement_MoveRight+1 @ 0x20ef428
.word Movement_ContinueMoving+1 @ 0x20ef42c
.word Movement_EndMovement+1 @ 0x20ef430

JumpTable_MoveLeft: @ 0x20ef434
.word Movement_MoveLeft+1 @ 0x20ef434
.word Movement_ContinueMoving+1 @ 0x20ef438
.word Movement_EndMovement+1 @ 0x20ef43c

JumpTable_PauseReverseLeft: @ 0x20ef440
.word Movement_PauseReverseLeft+1 @ 0x20ef440
.word Movement_ContinueWalking+1 @ 0x20ef444
.word Movement_EndMovement+1 @ 0x20ef448

JumpTable_20ef44c: @ 0x20ef44c
.word Function_2066288+1 @ 0x20ef44c
.word Movement_ContinueJumping+1 @ 0x20ef450
.word Movement_EndMovement+1 @ 0x20ef454

JumpTable_MoveLeftSlow: @ 0x20ef458
.word Movement_MoveLeftSlow+1 @ 0x20ef458
.word Movement_ContinueMoving+1 @ 0x20ef45c
.word Movement_EndMovement+1 @ 0x20ef460

JumpTable_MoveRightSlow: @ 0x20ef464
.word Movement_MoveRightSlow+1 @ 0x20ef464
.word Movement_ContinueMoving+1 @ 0x20ef468
.word Movement_EndMovement+1 @ 0x20ef46c

JumpTable_PauseReverseRight: @ 0x20ef470
.word Movement_PauseReverseRight+1 @ 0x20ef470
.word Movement_ContinueWalking+1 @ 0x20ef474
.word Movement_EndMovement+1 @ 0x20ef478

JumpTable_MoveUpSlow: @ 0x20ef47c
.word Movement_MoveUpSlow+1 @ 0x20ef47c
.word Movement_ContinueMoving+1 @ 0x20ef480
.word Movement_EndMovement+1 @ 0x20ef484

JumpTable_PauseHoverRight: @ 0x20ef488
.word Movement_PauseHoverRight+1 @ 0x20ef488
.word Movement_ContinueWalking+1 @ 0x20ef48c
.word Movement_EndMovement+1 @ 0x20ef490

JumpTable_PauseHoverLeft: @ 0x20ef494
.word Movement_PauseHoverLeft+1 @ 0x20ef494
.word Movement_ContinueWalking+1 @ 0x20ef498
.word Movement_EndMovement+1 @ 0x20ef49c

JumpTable_PauseHoverDown: @ 0x20ef4a0
.word Movement_PauseHoverDown+1 @ 0x20ef4a0
.word Movement_ContinueWalking+1 @ 0x20ef4a4
.word Movement_EndMovement+1 @ 0x20ef4a8

JumpTable_PauseHoverUp: @ 0x20ef4ac
.word Movement_PauseHoverUp+1 @ 0x20ef4ac
.word Movement_ContinueWalking+1 @ 0x20ef4b0
.word Movement_EndMovement+1 @ 0x20ef4b4

JumpTable_RunRight: @ 0x20ef4b8
.word Movement_RunRight+1 @ 0x20ef4b8
.word Movement_ContinueWalking+1 @ 0x20ef4bc
.word Movement_EndMovement+1 @ 0x20ef4c0

JumpTable_RunLeft: @ 0x20ef4c4
.word Movement_RunLeft+1 @ 0x20ef4c4
.word Movement_ContinueWalking+1 @ 0x20ef4c8
.word Movement_EndMovement+1 @ 0x20ef4cc

JumpTable_RunDown: @ 0x20ef4d0
.word Movement_RunDown+1 @ 0x20ef4d0
.word Movement_ContinueWalking+1 @ 0x20ef4d4
.word Movement_EndMovement+1 @ 0x20ef4d8

JumpTable_RunUp: @ 0x20ef4dc
.word Movement_RunUp+1 @ 0x20ef4dc
.word Movement_ContinueWalking+1 @ 0x20ef4e0
.word Movement_EndMovement+1 @ 0x20ef4e4

JumpTable_WalkRightVeryFast: @ 0x20ef4e8
.word Movement_WalkRightVeryFast+1 @ 0x20ef4e8
.word Movement_ContinueWalking+1 @ 0x20ef4ec
.word Movement_EndMovement+1 @ 0x20ef4f0

JumpTable_WalkLeftVeryFast: @ 0x20ef4f4
.word Movement_WalkLeftVeryFast+1 @ 0x20ef4f4
.word Movement_ContinueWalking+1 @ 0x20ef4f8
.word Movement_EndMovement+1 @ 0x20ef4fc

JumpTable_WalkDownVeryFast: @ 0x20ef500
.word Movement_WalkDownVeryFast+1 @ 0x20ef500
.word Movement_ContinueWalking+1 @ 0x20ef504
.word Movement_EndMovement+1 @ 0x20ef508

JumpTable_WalkUpVeryFast: @ 0x20ef50c
.word Movement_WalkUpVeryFast+1 @ 0x20ef50c
.word Movement_ContinueWalking+1 @ 0x20ef510
.word Movement_EndMovement+1 @ 0x20ef514

JumpTable_WalkRightFast: @ 0x20ef518
.word Movement_WalkRightFast+1 @ 0x20ef518
.word Movement_ContinueWalking+1 @ 0x20ef51c
.word Movement_EndMovement+1 @ 0x20ef520

JumpTable_WalkLeftFast: @ 0x20ef524
.word Movement_WalkLeftFast+1 @ 0x20ef524
.word Movement_ContinueWalking+1 @ 0x20ef528
.word Movement_EndMovement+1 @ 0x20ef52c

JumpTable_WalkDownFast: @ 0x20ef530
.word Movement_WalkDownFast+1 @ 0x20ef530
.word Movement_ContinueWalking+1 @ 0x20ef534
.word Movement_EndMovement+1 @ 0x20ef538

JumpTable_WalkUpFast: @ 0x20ef53c
.word Movement_WalkUpFast+1 @ 0x20ef53c
.word Movement_ContinueWalking+1 @ 0x20ef540
.word Movement_EndMovement+1 @ 0x20ef544

JumpTable_WalkRight: @ 0x20ef548
.word Movement_WalkRight+1 @ 0x20ef548
.word Movement_ContinueWalking+1 @ 0x20ef54c
.word Movement_EndMovement+1 @ 0x20ef550

JumpTable_WalkLeft: @ 0x20ef554
.word Movement_WalkLeft+1 @ 0x20ef554
.word Movement_ContinueWalking+1 @ 0x20ef558
.word Movement_EndMovement+1 @ 0x20ef55c

JumpTable_WalkDown: @ 0x20ef560
.word Movement_WalkDown+1 @ 0x20ef560
.word Movement_ContinueWalking+1 @ 0x20ef564
.word Movement_EndMovement+1 @ 0x20ef568

JumpTable_WalkUp: @ 0x20ef56c
.word Movement_WalkUp+1 @ 0x20ef56c
.word Movement_ContinueWalking+1 @ 0x20ef570
.word Movement_EndMovement+1 @ 0x20ef574

JumpTable_WalkRightSlow: @ 0x20ef578
.word Movement_WalkRightSlow+1 @ 0x20ef578
.word Movement_ContinueWalking+1 @ 0x20ef57c
.word Movement_EndMovement+1 @ 0x20ef580

JumpTable_WalkLeftSlow: @ 0x20ef584
.word Movement_WalkLeftSlow+1 @ 0x20ef584
.word Movement_ContinueWalking+1 @ 0x20ef588
.word Movement_EndMovement+1 @ 0x20ef58c

JumpTable_WalkDownSlow: @ 0x20ef590
.word Movement_WalkDownSlow+1 @ 0x20ef590
.word Movement_ContinueWalking+1 @ 0x20ef594
.word Movement_EndMovement+1 @ 0x20ef598

JumpTable_WalkUpSlow: @ 0x20ef59c
.word Movement_WalkUpSlow+1 @ 0x20ef59c
.word Movement_ContinueWalking+1 @ 0x20ef5a0
.word Movement_EndMovement+1 @ 0x20ef5a4

JumpTable_MoveUp: @ 0x20ef5a8
.word Movement_MoveUp+1 @ 0x20ef5a8
.word Movement_ContinueMoving+1 @ 0x20ef5ac
.word Movement_EndMovement+1 @ 0x20ef5b0

JumpTable_MoveDown: @ 0x20ef5b4
.word Movement_MoveDown+1 @ 0x20ef5b4
.word Movement_ContinueMoving+1 @ 0x20ef5b8
.word Movement_EndMovement+1 @ 0x20ef5bc

JumpTable_20ef5c0: @ 0x20ef5c0
.word Function_2066670+1 @ 0x20ef5c0
.word Function_20666b0+1 @ 0x20ef5c4
.word Movement_EndMovement+1 @ 0x20ef5c8

JumpTable_20ef5cc: @ 0x20ef5cc
.word Function_2066d18+1 @ 0x20ef5cc
.word Function_20668ec+1 @ 0x20ef5d0
.word Movement_EndMovement+1 @ 0x20ef5d4

JumpTable_20ef5d8: @ 0x20ef5d8
.word Function_2067288+1 @ 0x20ef5d8
.word Function_2067068+1 @ 0x20ef5dc
.word Movement_EndMovement+1 @ 0x20ef5e0

JumpTable_20ef5e4: @ 0x20ef5e4
.word Function_2066510+1 @ 0x20ef5e4
.word Movement_ContinueSpeechBubble+1 @ 0x20ef5e8
.word Movement_EndMovement+1 @ 0x20ef5ec
