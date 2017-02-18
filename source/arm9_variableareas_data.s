
Unknown_20e582c: @ 0x20e582c
.word 0x6

NrOfVariableAreas: @ 0x20e5830
.word 0x26 @ 0x20e5830

Unknown_20e5834: @ 0x20e5834
.word 0x0 @ 0x20e5834
.word 0x20 @ 0x20e5838
.word Function_202df8c+1 @ =0x202df8d, 0x20e583c
.word Function_202df94+1 @ =0x202df95, 0x20e5840
.word 0x1 @ 0x20e5844
.word 0x23 @ 0x20e5848
.word Function_2030880+1 @ =0x2030881, 0x20e584c
.word Function_2030888+1 @ =0x2030889, 0x20e5850
.word 0x2 @ 0x20e5854
.word 0x24 @ 0x20e5858
.word Function_202f1d4+1 @ =0x202f1d5, 0x20e585c
.word Function_202f1dc+1 @ =0x202f1dd, 0x20e5860
.word 0x3 @ 0x20e5864
.word 0x26 @ 0x20e5868
.word Function_202f1d4+1 @ =0x202f1d5, 0x20e586c
.word Function_202f1dc+1 @ =0x202f1dd, 0x20e5870
.word 0x4 @ 0x20e5874
.word 0x28 @ 0x20e5878
.word Function_202f1d4+1 @ =0x202f1d5, 0x20e587c
.word Function_202f1dc+1 @ =0x202f1dd, 0x20e5880
.word 0x5 @ 0x20e5884
.word 0x2a @ 0x20e5888
.word Function_202f1d4+1 @ =0x202f1d5, 0x20e588c
.word Function_202f1dc+1 @ =0x202f1dd, 0x20e5890


TableForVariableAreas: @ 0x20e5894
.word 0x0 @ 0x20e5894
.word 0x0 @ 0x20e5898
.word Function_2025cb0+1 @ 0x20e589c
.word Function_2025cb4+1 @ 0x20e58a0

.word 0x1 @ 0x20e58a4
.word 0x0 @ 0x20e58a8
.word GetSizeOfPlayerData+1 @ 0x20e58ac
.word InitPlayerData+1 @ 0x20e58b0

.word 0x2 @ 0x20e58b4
.word 0x0 @ 0x20e58b8
.word GetSizeOfPkmnParty+1 @ 0x20e58bc
.word ZeroFillPkmnPartyStructure_6+1 @ 0x20e58c0

.word 0x3 @ 0x20e58c4
.word 0x0 @ 0x20e58c8
.word GetItemListSize+1 @ 0x20e58cc
.word ClearItemList+1 @ 0x20e58d0

.word 0x4 @ 0x20e58d4
.word 0x0 @ 0x20e58d8
.word GetSizeOfFlagMemory+1 @ 0x20e58dc
.word ClearFlagMemory+1 @ 0x20e58e0

.word 0x5 @ 0x20e58e4
.word 0x0 @ 0x20e58e8
.word GetSizeOfVariableAreaAdress_5+1 @ 0x20e58ec
.word ClearVariableAreaAdress_5+1 @ 0x20e58f0

.word 0x6 @ 0x20e58f4
.word 0x0 @ 0x20e58f8
.word GetSizeOfVariableAreaAdress_6+1 @ 0x20e58fc
.word ClearVariableAreaAdress_6+1 @ 0x20e5900

.word 0x7 @ 0x20e5904
.word 0x0 @ 0x20e5908
.word GetSizeOfPokedexMemory+1 @ 0x20e590c
.word ClearPokedexMemory+1 @ 0x20e5910

.word 0x8 @ 0x20e5914
.word 0x0 @ 0x20e5918
.word Function_20261e4+1 @ 0x20e591c
.word Function_20261ec+1 @ 0x20e5920
.word 0x9 @ 0x20e5924
.word 0x0 @ 0x20e5928
.word Function_2027f84+1 @ 0x20e592c
.word Function_2027f98+1 @ 0x20e5930
.word 0xa @ 0x20e5934
.word 0x0 @ 0x20e5938
.word Function_20277a4+1 @ 0x20e593c
.word Function_20277ac+1 @ 0x20e5940
.word 0xb @ 0x20e5944
.word 0x0 @ 0x20e5948
.word Function_203a6e0+1 @ 0x20e594c
.word Function_203a6e8+1 @ 0x20e5950
.word 0xc @ 0x20e5954
.word 0x0 @ 0x20e5958
.word Function_202854c+1 @ 0x20e595c
.word Function_2028574+1 @ 0x20e5960
.word 0xd @ 0x20e5964
.word 0x0 @ 0x20e5968
.word Function_2026030+1 @ 0x20e596c
.word Function_2026040+1 @ 0x20e5970
.word 0xe @ 0x20e5974
.word 0x0 @ 0x20e5978
.word Function_2029c58+1 @ 0x20e597c
.word Function_2029bfc+1 @ 0x20e5980
.word 0xf @ 0x20e5984
.word 0x0 @ 0x20e5988
.word Function_202843c+1 @ 0x20e598c
.word Function_2028444+1 @ 0x20e5990
.word 0x10 @ 0x20e5994
.word 0x0 @ 0x20e5998
.word Function_202ab34+1 @ 0x20e599c
.word Function_202ab3c+1 @ 0x20e59a0
.word 0x11 @ 0x20e59a4
.word 0x0 @ 0x20e59a8
.word Function_202b37c+1 @ 0x20e59ac
.word Function_202b3a8+1 @ 0x20e59b0
.word 0x12 @ 0x20e59b4
.word 0x0 @ 0x20e59b8
.word Function_202b604+1 @ 0x20e59bc
.word Function_202b618+1 @ 0x20e59c0
.word 0x13 @ 0x20e59c4
.word 0x0 @ 0x20e59c8
.word Function_202c7fc+1 @ 0x20e59cc
.word Function_202c804+1 @ 0x20e59d0
.word 0x14 @ 0x20e59d4
.word 0x0 @ 0x20e59d8
.word Function_202cd50+1 @ 0x20e59dc
.word Function_202cd58+1 @ 0x20e59e0
.word 0x15 @ 0x20e59e4
.word 0x0 @ 0x20e59e8
.word Function_202c9f4+1 @ 0x20e59ec
.word Function_202c9fc+1 @ 0x20e59f0
.word 0x16 @ 0x20e59f4
.word 0x0 @ 0x20e59f8
.word Function_202cc64+1 @ 0x20e59fc
.word Function_202cc6c+1 @ 0x20e5a00
.word 0x17 @ 0x20e5a04
.word 0x0 @ 0x20e5a08
.word Function_203061c+1 @ 0x20e5a0c
.word Function_2030624+1 @ 0x20e5a10
.word 0x18 @ 0x20e5a14
.word 0x0 @ 0x20e5a18
.word Function_202d778+1 @ 0x20e5a1c
.word Function_202d77c+1 @ 0x20e5a20
.word 0x19 @ 0x20e5a24
.word 0x0 @ 0x20e5a28
.word Function_202d7a8+1 @ 0x20e5a2c
.word Function_202d7b0+1 @ 0x20e5a30
.word 0x1a @ 0x20e5a34
.word 0x0 @ 0x20e5a38
.word Function_202da4c+1 @ 0x20e5a3c
.word Function_202da50+1 @ 0x20e5a40
.word 0x1b @ 0x20e5a44
.word 0x0 @ 0x20e5a48
.word Function_202e2cc+1 @ 0x20e5a4c
.word Function_202e2d4+1 @ 0x20e5a50
.word 0x1c @ 0x20e5a54
.word 0x0 @ 0x20e5a58
.word Function_202e884+1 @ 0x20e5a5c
.word Function_202e88c+1 @ 0x20e5a60
.word 0x1d @ 0x20e5a64
.word 0x0 @ 0x20e5a68
.word Function_202ace0+1 @ 0x20e5a6c
.word Function_202ace8+1 @ 0x20e5a70
.word 0x1e @ 0x20e5a74
.word 0x0 @ 0x20e5a78
.word Function_202c858+1 @ 0x20e5a7c
.word Function_202c860+1 @ 0x20e5a80
.word 0x1f @ 0x20e5a84
.word 0x0 @ 0x20e5a88
.word Function_202dab4+1 @ 0x20e5a8c
.word Function_202dabc+1 @ 0x20e5a90
.word 0x20 @ 0x20e5a94
.word 0x0 @ 0x20e5a98
.word Function_202eec0+1 @ 0x20e5a9c
.word Function_202eec8+1 @ 0x20e5aa0
.word 0x21 @ 0x20e5aa4
.word 0x0 @ 0x20e5aa8
.word Function_202f108+1 @ 0x20e5aac
.word Function_202f10c+1 @ 0x20e5ab0
.word 0x22 @ 0x20e5ab4
.word 0x0 @ 0x20e5ab8
.word Function_2014e8c+1 @ 0x20e5abc
.word Function_2014e90+1 @ 0x20e5ac0
.word 0x23 @ 0x20e5ac4
.word 0x0 @ 0x20e5ac8
.word Function_2030ce8+1 @ 0x20e5acc
.word Function_2030cec+1 @ 0x20e5ad0
.word 0x24 @ 0x20e5ad4
.word 0x0 @ 0x20e5ad8
.word Function_2030ea4+1 @ 0x20e5adc
.word Function_2030ea8+1 @ 0x20e5ae0
.word 0x25 @ 0x20e5ae4
.word 0x1 @ 0x20e5ae8
.word Function_20797d4+1 @ 0x20e5aec
.word Function_20797c8+1 @ 0x20e5af0
