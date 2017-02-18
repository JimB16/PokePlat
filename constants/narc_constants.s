/* Constants for NarcTable
LoadFromNARC: r1
LoadFromNARC_2: r0
LoadFromNARC_3: r1
LoadFromNARC_4: r0
LoadFromNARC_5: r0
LoadFromNARC_7: r0
LoadFromNARC_8: r0
LoadFromNARC_9: r1 PlMsg_Narc - done for arm9 and <overlay_0020 TODO

LoadFromNARC_RLCN: r0 done
LoadFromNARC_RCSN
Function_2006e9c
LoadFromNARC_RGCN
Function_2006ee0: r0 done
Function_2006f00
Function_2006fe8 ?

Call_LoadFromNARC_NewSeqScript: r1 (r2:filenr?)
Call_LoadFromNARC_AddNewSeqScript: r1 (r2:filenr?)
*/

.equ WazaSeq_Narc,     0x0      @ battle/skill/waza_seq.narc
.equ SubSeq_Narc,      0x1      @ battle/skill/sub_seq.narc
.equ PlPersonal_Narc,  0x2      @ poketool/personal/pl_personal.narc
.equ PlGrowTbl_Narc,   0x3      @ poketool/personal/pl_growtbl.narc
.equ PlBattBg_Narc,    0x7      @ battle/graphic/pl_batt_bg.narc
.equ PlWazaTbl_Narc,   0x9      @ poketool/waza/pl_waza_tbl.narc
.equ ScrSeq_Narc,      0xa      @ fielddata/script/scr_seq.narc
.equ Poketch_Narc,     0xc      @ graphic/poketch.narc
.equ PlBagGra_Narc,    0xd      @ graphic/pl_bag_gra.narc
.equ PlFont_Narc,      0xe      @ graphic/pl_font.narc
.equ PlItemData_Narc,  0xf      @ itemtool/itemdata/pl_item_data.narc
.equ ItemIcon_Narc,    0x10     @ itemtool/itemdata/item_icon.narc
.equ TmapGra_Narc,     0x11     @ graphic/tmap_gra.narc
.equ Box_Narc,         0x12     @ graphic/box.narc
.equ PlPokeIcon_Narc,  0x13     @ poketool/icongra/pl_poke_icon.narc
.equ PlPlistGra_Narc,  0x14     @ graphic/pl_plist_gra.narc
.equ Wechar_Narc,      0x15     @ wazaeffect/effectclact/wechar.narc
.equ Wepltt_Narc,      0x16     @ wazaeffect/effectclact/wepltt.narc
.equ Wecell_Narc,      0x17     @ wazaeffect/effectclact/wecell.narc
.equ Wecellanm_Narc,   0x18     @ wazaeffect/effectclact/wecellanm.narc
.equ Imageclip_Narc,   0x19     @ graphic/imageclip.narc
.equ PlMsg_Narc,       0x1a     @ msgdata/pl_msg.narc LoadFromNARC_9
.equ PlMsg_Narc_0,          0 @ "$pokemonname used $attackname"
.equ PlMsg_Narc_2,          2
.equ PlMsg_Narc_3,          3 @ BattleParty-Screen
.equ PlMsg_Narc_12,         12 @ SealNames
.equ PlMsg_Narc_204,        204 @ Contest-Strings
.equ PlMsg_Narc_205,        205
.equ PlMsg_Narc_206,        206 @ Dance-Strings
.equ PlMsg_Narc_207,        207
.equ PlMsg_Narc_208,        208 @ LinkContest-Strings
.equ PlMsg_Narc_209,        209
.equ PlMsg_Narc_210,        210
.equ PlMsg_Narc_211,        211
.equ PlMsg_Narc_213,        213
.equ PlMsg_Narc_214,        214
.equ PlMsg_Narc_218,        218
.equ PlMsg_Narc_221,        221
.equ PlMsg_Narc_353,        353 @ LinkContest-Strings
.equ PlMsg_Narc_359,        359
.equ PlMsg_Narc_361,        361 @ PC-Strings, ...
.equ PlMsg_Narc_367,        367 @ InGame Options-Menu
.equ PlMsg_Narc_368,        368 @ status information msgs
.equ PlMsg_Narc_370,        370
.equ PlMsg_Narc_392,        392
.equ PlMsg_Narc_412,        412 @ PokemonNames
.equ PlMsg_Narc_421,        421 @ MysteryGift-Options
.equ PlMsg_Narc_433,        433 @ PlaceNames
.equ PlMsg_Narc_436,        436
.equ PlMsg_Narc_437,        437
.equ PlMsg_Narc_453,        453
.equ PlMsg_Narc_454,        454 @ MigratePokemon-Options
.equ PlMsg_Narc_534,        534 @ ContinueGame-Strings, FileInformation-Strings
.equ PlMsg_Narc_542,        542 @ SealDescriptions
.equ PlMsg_Narc_543,        543 @ Shop-Strings
.equ PlMsg_Narc_550,        550 @ MainMenu-Strings
.equ PlMsg_Narc_572,        572
.equ PlMsg_Narc_605,        605 @ SaveBattleVideo-Strings
.equ PlMsg_Narc_609,        609 @ "PRESS START" for TitleScreen
.equ PlMsg_Narc_612,        612 @ 0x99*4 AbilityDescriptions
.equ PlMsg_Narc_613,        613 @ TrainerMsgs
.equ PlMsg_Narc_614,        614 @ TrainerMsgs
.equ PlMsg_Narc_618,        618 @ TrainerNames
.equ PlMsg_Narc_626,        626 @ SecretBase-ItemNames
.equ PlMsg_Narc_646,        646 @ MoveDescriptions
.equ PlMsg_Narc_647,        647 @ MoveNames
.equ PlMsg_Narc_675,        675 @ OnlineBattleInformation-Strings
.equ PlMsg_Narc_697,        697 @ Pokedex-Strings
.equ PlBattObj_Narc,   0x1b     @ battle/graphic/pl_batt_obj.narc
.equ UndergRadar_Narc, 0x1c     @ data/underg_radar.narc
.equ WazaParticle_Narc, 0x1d     @ wazaeffect/effectdata/waza_particle.narc
.equ BeSeq_Narc,       0x1e     @ battle/skill/be_seq.narc
.equ Namein_Narc,      0x1f     @ data/namein.narc
.equ ZoneEvent_Narc,   0x20     @ fielddata/eventdata/zone_event.narc
.equ Wotbl_Narc,       0x21     @ poketool/personal/wotbl.narc
.equ Evo_Narc,         0x22     @ poketool/personal/evo.narc
.equ FieldBoard_Narc,  0x24     @ graphic/field_board.narc
.equ PlWinframe_Narc,  0x26     @ graphic/pl_winframe.narc
.equ PlPstGra_Narc,    0x27     @ graphic/pl_pst_gra.narc
.equ BuildModel_Narc,  0x28     @ fielddata/build_model/build_model.narc
.equ MapMatrix_Narc,   0x29     @ fielddata/mapmatrix/map_matrix.narc
.equ AreaData_Narc,    0x2a     @ fielddata/areadata/area_data.narc
.equ AreaBuild_Narc,   0x2b     @ fielddata/areadata/area_build_model/area_build.narc
.equ MapTexSet_Narc,   0x2c     @ fielddata/areadata/area_map_tex/map_tex_set.narc
.equ ContestBg_Narc,   0x2d     @ contest/graphic/contest_bg.narc
.equ ContestObj_Narc,  0x2e     @ contest/graphic/contest_obj.narc
.equ Titledemo_Narc,   0x30     @ demo/title/titledemo.narc
.equ UgTrap_Narc,      0x32     @ data/ug_trap.narc
.equ TrainerCase_Narc, 0x33     @ graphic/trainer_case.narc
.equ UgFossil_Narc,    0x34     @ data/ug_fossil.narc
.equ NtagGra_Narc,     0x35     @ graphic/ntag_gra.narc
.equ Tradelist_Narc,   0x36     @ data/tradelist.narc
.equ UgParts_Narc,     0x37     @ data/ug_parts.narc
.equ Trdata_Narc,      0x39     @ poketool/trainer/trdata.narc
.equ Trpoke_Narc,      0x3a     @ poketool/trainer/trpoke.narc
.equ Trtbl_Narc,       0x3b     @ poketool/trmsg/trtbl.narc
.equ Particledata_Narc, 0x3d     @ particledata/particledata.narc
.equ ShopGra_Narc,     0x3e     @ graphic/shop_gra.narc
.equ UgAnim_Narc,      0x40     @ data/ug_anim.narc
.equ WeatherSys_Narc,  0x41     @ data/weather_sys.narc
.equ MenuGra_Narc,     0x42     @ graphic/menu_gra.narc
.equ LandData_Narc,    0x43     @ fielddata/land_data/land_data.narc
.equ NutsData_Narc,    0x44     @ itemtool/itemdata/nuts_data.narc
.equ Zukan_Narc,       0x45     @ resource/eng/zukan/zukan.narc
.equ Pokefoot_Narc,    0x46     @ poketool/pokefoot/pokefoot.narc
.equ AreabmTexset_Narc, 0x47     @ fielddata/areadata/area_build_model/areabm_texset.narc
.equ PlBPlistGra_Narc, 0x48     @ battle/graphic/pl_b_plist_gra.narc
.equ ConfigGra_Narc,   0x49     @ graphic/config_gra.narc
.equ Unionroom_Narc,   0x4a     @ graphic/unionroom.narc
.equ Pmsi_Narc,        0x4c     @ graphic/pmsi.narc
.equ BBagGra_Narc,     0x4d     @ battle/graphic/b_bag_gra.narc
.equ Oekaki_Narc,      0x4e     @ graphic/oekaki.narc
.equ MailGra_Narc,     0x4f     @ graphic/mail_gra.narc
.equ FNoteGra_Narc,    0x50     @ graphic/f_note_gra.narc
.equ Mmodel_Narc,      0x51     @ data/mmodel/mmodel.narc
.equ EvPokeselect_Narc, 0x52     @ graphic/ev_pokeselect.narc
.equ PoruGra_Narc,     0x53     @ graphic/poru_gra.narc
.equ FldComact_Narc,   0x55     @ graphic/fld_comact.narc
.equ Record_Narc,      0x56     @ graphic/record.narc
.equ Porudemo_Narc,    0x57     @ graphic/porudemo.narc
.equ Poruact_Narc,     0x58     @ graphic/poruact.narc
.equ PlWifinote_Narc,  0x59     @ graphic/pl_wifinote.narc
.equ ContestData_Narc, 0x5a     @ contest/data/contest_data.narc
.equ CbData_Narc,      0x5b     @ application/custom_ball/data/cb_data.narc
.equ Wifip2pmatch_Narc, 0x5c     @ data/wifip2pmatch.narc
.equ DemoTrade_Narc,   0x5d     @ graphic/demo_trade.narc
.equ PlPokeAnm_Narc,   0x5e     @ pokeanime/pl_poke_anm.narc
.equ Mysign_Narc,      0x5f     @ graphic/mysign.narc
.equ MoveModelList_String, 0x60    @ fielddata/mm_list/move_model_list.narc
.equ FieldCutin_Narc,  0x61     @ data/field_cutin.narc
.equ DemoClimax_Narc,  0x62     @ data/demo_climax.narc
.equ BallParticle_Narc, 0x63     @ wazaeffect/effectdata/ball_particle.narc
.equ WifiEarthPlace_Narc, 0x66     @ application/wifi_earth/wifi_earth_place.narc
.equ Worldtrade_Narc,  0x68     @ graphic/worldtrade.narc
.equ DendouDemo_Narc,  0x69     @ graphic/dendou_demo.narc
.equ EncdataEx_Narc,   0x6a     @ arc/encdata_ex.narc
.equ Fldeff_Narc,      0x6b     @ data/mmodel/fldeff.narc
.equ VsDemoGra_Narc,   0x6c     @ battle/graphic/vs_demo_gra.narc
.equ PlPokezukan_Narc, 0x6d     @ poketool/pl_pokezukan.narc
.equ BmAnime_Narc,     0x6e     @ arc/bm_anime.narc
.equ BmAnimeList_Narc, 0x6f     @ arc/bm_anime_list.narc
.equ FieldEncounteffect_Narc, 0x70     @ graphic/field_encounteffect.narc
.equ WazaOshieGra_Narc, 0x71     @ graphic/waza_oshie_gra.narc
.equ Mystery_Narc,     0x74     @ graphic/mystery.narc
.equ PlOtherpoke_Narc, 0x75     @ poketool/pokegra/pl_otherpoke.narc
.equ EggData_Narc,     0x76     @ demo/egg/data/egg_data.narc
.equ ShipDemo_Narc,    0x78     @ arc/ship_demo.narc
.equ HeightO_Narc,     0x79     @ poketool/pokegra/height_o.narc
.equ Nutmixer_Narc,    0x7a     @ graphic/nutmixer.narc
.equ Btower_Narc,      0x7b     @ graphic/btower.narc
.equ Intro_Narc,       0x7d     @ demo/intro/intro.narc
.equ Tv_Narc,          0x7e     @ arc/tv.narc
.equ Ending_Narc,      0x7f     @ graphic/ending.narc
.equ OpDemo_Narc,      0x80     @ demo/title/op_demo.narc
.equ WifiEarth_Narc,   0x81     @ application/wifi_earth/wifi_earth.narc
.equ Ranking_Narc,     0x82     @ graphic/ranking.narc
.equ Ppark_Narc,       0x83     @ arc/ppark.narc
.equ Syoujyou_Narc,    0x84     @ demo/syoujyou/syoujyou.narc
.equ Slot_Narc,        0x85     @ data/slot.narc
.equ IntroTV_Narc,     0x88     @ demo/intro/intro_tv.narc
.equ Trtblofs_Narc,    0x89     @ poketool/trmsg/trtblofs.narc
.equ HidenEffect_Narc, 0x8d     @ graphic/hiden_effect.narc
.equ Shinzukan_Narc,   0x91     @ poketool/shinzukan.narc
.equ Wifi2dchar_Narc,  0x92     @ graphic/wifi2dchar.narc
.equ PlPokeData_Narc,  0x93     @ poketool/poke_edit/pl_poke_data.narc
.equ FrScript_Narc,    0x95     @ frontier/script/fr_script.narc
.equ FrontierBg_Narc,  0x96     @ resource/eng/frontier_graphic/frontier_bg.narc
.equ FrontierObj_Narc, 0x97     @ resource/eng/frontier_graphic/frontier_obj.narc
.equ PlCbData_Narc,    0x98     @ application/custom_ball/edit/pl_cb_data.narc
.equ WifiUnionobj_Narc, 0x99     @ graphic/wifi_unionobj.narc
.equ Guru2_Narc,       0x9a     @ data/guru2.narc
.equ Fldtanime_Narc,   0x9b     @ data/fldtanime.narc
.equ ShipDemoPl_Narc,  0x9c     @ arc/ship_demo_pl.narc
.equ FrontierParticle_Narc, 0x9d     @ particledata/pl_frontier/frontier_particle.narc
.equ Bucket_Narc,      0x9e     @ graphic/bucket.narc
.equ CodeinGra_Narc,   0x9f     @ arc/codein_gra.narc
.equ PlEncData_Narc,   0xa1     @ fielddata/encountdata/pl_enc_data.narc
.equ BattRecGra_Narc,  0xa2     @ resource/eng/batt_rec/batt_rec_gra.narc
.equ Worldtimer_Narc,  0xa3     @ graphic/worldtimer.narc
.equ Manene_Narc,      0xa4     @ arc/manene.narc
.equ DpHeight_Narc,    0xa7     @ poketool/pokegra/dp_height.narc
.equ DpHeightO_Narc,   0xa8     @ poketool/pokegra/dp_height_o.narc
.equ LobbyNews_Narc,   0xa9     @ graphic/lobby_news.narc
.equ EmailGra_Narc,    0xaa     @ arc/email_gra.narc
.equ WlmngmTool_Narc,  0xab     @ resource/eng/wifi_lobby_minigame/wlmngm_tool.narc
.equ DemoTenganGra_Narc, 0xac     @ arc/demo_tengan_gra.narc
.equ BalloonGra_Narc,  0xad     @ application/balloon/graphic/balloon_gra.narc
.equ WifiLobby_Narc,   0xaf     @ graphic/wifi_lobby.narc
.equ Pl_Btdtr_Narc,    0xb2     @ battle/b_pl_tower/pl_btdtr.narc
.equ Pl_Btdpm_Narc,    0xb3     @ battle/b_pl_tower/pl_btdpm.narc
.equ TwArc_Narc,       0xb5     @ fielddata/tornworld/tw_arc.narc
.equ TwArcAttr_Narc,   0xb6     @ fielddata/tornworld/tw_arc_attr.narc
.equ TwArcEtc_Narc,    0xb7     @ data/tw_arc_etc.narc
.equ Scratch_Narc,     0xb8     @ resource/eng/scratch/scratch.narc
.equ PokelistParticle_Narc, 0xb9     @ particledata/pl_pokelist/pokelist_particle.narc
.equ WifiLobbyOther_Narc, 0xba     @ graphic/wifi_lobby_other.narc
.equ FootprintBoard_Narc, 0xbb     @ graphic/footprint_board.narc
.equ PlEtcParticle_Narc, 0xbe     @ particledata/pl_etc/pl_etc_particle.narc
.equ Unionobj2dOnlyfront_Narc, 0xc0     @ graphic/unionobj2d_onlyfront.narc
.equ LibraryTv_Narc,   0xc1     @ graphic/library_tv.narc
