

ifeq ($(strip $(DEVKITPRO)),)
$(error "Please set DEVKITPRO in your environment. export DEVKITPRO=<path to>devkitPro)
endif

ifeq ($(strip $(DEVKITARM)),)
$(error "Please set DEVKITARM in your environment. export DEVKITARM=<path to>devkitARM")
endif


PYTHON := python
MKDIR_P = mkdir -p

.PHONY: pokeplat asm all clean clean_code init narc pics ex_script build_script ex_frscript ex_text ex_trainerteams ex_landdata ex_encdata ex_font ex_event build_event ex_moves ex_beseq ex_wazaeffect test

unpack_rom     := $(PYTHON) tools/unpack_rom.py
unpack_narc    := $(PYTHON) tools/narc.py -x
create_narc    := $(PYTHON) tools/narc.py -p
create_narc2   := $(PYTHON) tools/narc.py -p2
unpack_sdat    := $(PYTHON) tools/sdat.py -x
unpack_sseq    := $(PYTHON) tools/sdat.py -sseq
unpack_it      := $(PYTHON) tools/it.py -x
create_it      := $(PYTHON) tools/it.py -p
armdisassem    := $(PYTHON) tools/armdisassem.py
gfx            := $(PYTHON) tools/gfx.py
gfx_btx        := $(PYTHON) tools/gfx_btx.py
create_rom     := $(PYTHON) tools/create_rom.py
create_msg     := $(PYTHON) tools/create_msg.py
ex_script      := $(PYTHON) tools/export_script.py
ex_trainerteams := $(PYTHON) tools/export_trainerteams.py
ex_trainerpoke := $(PYTHON) tools/export_trainerpoke.py
ex_msg         := $(PYTHON) tools/export_msg.py
ex_event       := $(PYTHON) tools/export_event.py
ex_ai          := $(PYTHON) tools/export_ai.py
ex_ai2         := $(PYTHON) tools/export_ai2.py
ex_landdata    := $(PYTHON) tools/export_land_data.py
ex_font        := $(PYTHON) tools/font.py
ex_moves       := $(PYTHON) tools/export_moves.py
ex_itemdata    := $(PYTHON) tools/export_itemdata.py
ex_pokebasedata := $(PYTHON) tools/export_pokebasedata.py
ex_wotable     := $(PYTHON) tools/export_wotable.py
ex_beseq       := $(PYTHON) tools/export_beseq.py
ex_wazaeffect  := $(PYTHON) tools/export_wazaeffect.py
ex_btx         := $(PYTHON) tools/export_btx.py
ex_encdata     := $(PYTHON) tools/export_encounterdata.py
ex_evo         := $(PYTHON) tools/export_evo.py
ex_growtbl     := $(PYTHON) tools/export_growtbl.py


NARCFOLDER = \
newrom/data/battle/b_pl_stage/pl_bsdpm \
newrom/data/battle/b_pl_tower/pl_btdpm \
newrom/data/battle/b_pl_tower/pl_btdtr \
newrom/data/battle/b_tower/btdpm \
newrom/data/battle/b_tower/btdtr \
newrom/data/fielddata/encountdata/d_enc_data \
newrom/data/fielddata/encountdata/p_enc_data \
newrom/data/fielddata/encountdata/pl_enc_data \
newrom/data/fielddata/eventdata/zone_event \
newrom/data/fielddata/script/scr_seq \
newrom/data/itemtool/itemdata/item_data \
newrom/data/itemtool/itemdata/pl_item_data \
newrom/data/msgdata/msg \
newrom/data/msgdata/pl_msg \
newrom/data/poketool/personal/evo \
newrom/data/poketool/personal/growtbl \
newrom/data/poketool/personal/pl_growtbl \
newrom/data/poketool/personal/personal \
newrom/data/poketool/personal/pl_personal \
newrom/data/poketool/personal/wotbl \
newrom/data/poketool/pokegra/pokegra \
newrom/data/poketool/pokegra/pl_pokegra \
newrom/data/poketool/trainer/trdata \
newrom/data/poketool/trainer/trpoke \
newrom/data/poketool/waza/pl_waza_tbl \
newrom/data/poketool/waza/waza_tbl
NARCS = $(addsuffix .narc, $(NARCFOLDER))
SRCS = arm9.s arm9_ram.s arm9_itcm.s arm9_dtcm.s y9.s overlay_0000.s overlay_0001.s overlay_0002.s overlay_0003.s overlay_0004.s overlay_0005.s overlay_0006.s overlay_0007.s overlay_0008.s overlay_0009.s overlay_0010.s overlay_0011.s overlay_0012.s overlay_0013.s overlay_0014.s overlay_0015.s overlay_0016.s overlay_0017.s overlay_0018.s overlay_0019.s overlay_0020.s overlay_0021.s overlay_0022.s overlay_0023.s overlay_0024.s overlay_0025.s overlay_0026.s overlay_0027.s overlay_0028.s overlay_0029.s overlay_0030.s overlay_0031.s overlay_0032.s overlay_0033.s overlay_0034.s overlay_0035.s overlay_0036.s overlay_0037.s overlay_0038.s overlay_0039.s overlay_0040.s overlay_0041.s overlay_0042.s overlay_0043.s overlay_0044.s overlay_0045.s overlay_0046.s overlay_0047.s overlay_0048.s overlay_0049.s overlay_0050.s overlay_0051.s overlay_0052.s overlay_0053.s overlay_0054.s overlay_0055.s overlay_0056.s overlay_0057.s overlay_0058.s overlay_0059.s overlay_0060.s overlay_0061.s overlay_0062.s overlay_0063.s overlay_0064.s overlay_0065.s overlay_0066.s overlay_0067.s overlay_0068.s overlay_0069.s overlay_0070.s overlay_0071.s overlay_0072.s overlay_0073.s overlay_0074.s overlay_0075.s overlay_0076.s overlay_0077.s overlay_0078.s overlay_0079.s overlay_0080.s overlay_0081.s overlay_0082.s overlay_0083.s overlay_0084.s overlay_0085.s overlay_0086.s overlay_0087.s overlay_0088.s overlay_0089.s overlay_0090.s overlay_0091.s overlay_0092.s overlay_0093.s overlay_0094.s overlay_0095.s overlay_0096.s overlay_0097.s overlay_0098.s overlay_0099.s overlay_0100.s overlay_0101.s overlay_0102.s overlay_0103.s overlay_0104.s overlay_0105.s overlay_0106.s overlay_0107.s overlay_0108.s overlay_0109.s overlay_0110.s overlay_0111.s overlay_0112.s overlay_0113.s overlay_0114.s overlay_0115.s overlay_0116.s overlay_0117.s overlay_0118.s overlay_0119.s overlay_0120.s overlay_0121.s
OBJS_ = $(SRCS:.S=.o)
OBJS = $(addprefix build/, $(OBJS_:.s=.o))
DEPS_ = $(SRCS:.S=.d)
DEPS = $(addprefix build/, $(DEPS_:.s=.d))

SRCS7 = arm7.s
OBJS7 = $(addprefix build/, $(SRCS7:.s=.o))
DEPS7 = $(addprefix build/, $(SRCS7:.s=.d))

pokegra_narc_files := \
"./baserom/data/poketool/pokegra/otherpoke.narc" \
"./baserom/data/poketool/pokegra/pl_otherpoke.narc"

#"./baserom/data/poketool/pokegra/dp_height.narc" \
#"./baserom/data/poketool/pokegra/dp_height_o.narc" \
#"./baserom/data/poketool/pokegra/height.narc" \
#"./baserom/data/poketool/pokegra/height_o.narc" \
#"./baserom/data/poketool/pokegra/pl_pokegra.narc" \
#"./baserom/data/poketool/pokegra/poke_shadow.narc" \
#"./baserom/data/poketool/pokegra/poke_shadow_ofx.narc" \
#"./baserom/data/poketool/pokegra/poke_yofs.narc" \
#"./baserom/data/poketool/pokegra/pokegra.narc"

narc_files := \
$(wildcard ./baserom/data/application/balloon/**/*.narc) \
$(wildcard ./baserom/data/application/**/*.narc) \
"./baserom/data/battle/tr_ai/tr_ai_seq.narc" \
$(wildcard ./baserom/data/battle/b_pl_stage/*.narc) \
$(wildcard ./baserom/data/battle/b_pl_tower/*.narc) \
$(wildcard ./baserom/data/battle/b_tower/*.narc) \
$(wildcard ./baserom/data/battle/skill/*.narc) \
$(wildcard ./baserom/data/data/mmodel/*.narc) \
"./baserom/data/fielddata/areadata/area_data.narc" \
"./baserom/data/fielddata/areadata/area_build_model/area_build.narc" \
"./baserom/data/fielddata/areadata/area_build_model/areabm_texset.narc" \
"./baserom/data/fielddata/areadata/area_map_tex/map_tex_set.narc" \
"./baserom/data/fielddata/areadata/area_move_model/move_model_list.narc" \
"./baserom/data/fielddata/build_model/build_model.narc" \
$(wildcard ./baserom/data/fielddata/encountdata/*.narc) \
"./baserom/data/fielddata/eventdata/zone_event.narc" \
"./baserom/data/fielddata/land_data/land_data.narc" \
"./baserom/data/fielddata/mapmatrix/map_matrix.narc" \
"./baserom/data/fielddata/mm_list/move_model_list.narc" \
"./baserom/data/fielddata/pokemon_trade/fld_trade.narc" \
"./baserom/data/fielddata/script/scr_seq.narc" \
"./baserom/data/fielddata/tornworld/tw_arc.narc" \
"./baserom/data/fielddata/tornworld/tw_arc_attr.narc" \
"./baserom/data/frontier/script/fr_script.narc" \
$(wildcard ./baserom/data/graphic/*.narc) \
$(wildcard ./baserom/data/itemtool/itemdata/*.narc) \
$(wildcard ./baserom/data/msgdata/*.narc) \
"./baserom/data/msgdata/scenario/scr_msg.narc" \
"./baserom/data/poketool/pl_pokezukan.narc" \
"./baserom/data/poketool/icongra/pl_poke_icon.narc" \
$(wildcard ./baserom/data/particledata/*.narc) \
$(wildcard ./baserom/data/particledata/**/*.narc) \
$(wildcard ./baserom/data/pokeanime/*.narc) \
$(wildcard ./baserom/data/poketool/personal/*.narc) \
"./baserom/data/poketool/pokeanm/pl_pokeanm.narc" \
"./baserom/data/poketool/pokeanm/pokeanm.narc" \
"./baserom/data/poketool/pokefoot/pokefoot.narc" \
"./baserom/data/poketool/pokegra/pl_otherpoke.narc" \
"./baserom/data/poketool/pokegra/pl_pokegra.narc" \
"./baserom/data/poketool/trainer/trdata.narc" \
"./baserom/data/poketool/trainer/trpoke.narc" \
"./baserom/data/poketool/trgra/trbgra.narc" \
"./baserom/data/poketool/trgra/trfgra.narc" \
"./baserom/data/poketool/trmsg/trtbl.narc" \
"./baserom/data/poketool/trmsg/trtblofs.narc" \
"./baserom/data/poketool/waza/pl_waza_tbl.narc" \
"./baserom/data/poketool/waza/waza_tbl.narc" \
$(wildcard ./baserom/data/wazaeffect/*.arc) \
$(wildcard ./baserom/data/wazaeffect/*.narc) \
$(wildcard ./baserom/data/wazaeffect/effectclact/*.narc) \
"./baserom/data/wazaeffect/effectdata/ball_particle.narc" \
"./baserom/data/wazaeffect/effectdata/waza_particle.narc"

narc_files2 := \
"./newrom/data/fielddata/encountdata/pl_enc_data.narc" \
"./newrom/data/fielddata/eventdata/zone_event.narc" \
"./newrom/data/fielddata/script/scr_seq.narc" \
"./newrom/data/msgdata/msg.narc" \
"./newrom/data/msgdata/pl_msg.narc" \
"./newrom/data/poketool/trainer/trdata.narc" \
"./newrom/data/poketool/trainer/trpoke.narc"

narc_filesk := \
"./baserom_3942K/data/fielddata/encountdata/pl_enc_data.narc" \
"./baserom_3942K/data/fielddata/eventdata/zone_event.narc" \
"./baserom_3942K/data/fielddata/script/scr_seq.narc" \
$(wildcard ./baserom_3942K/data/graphic/*.narc) \
"./baserom_3942K/data/msgdata/msg.narc" \
"./baserom_3942K/data/msgdata/pl_msg.narc" \
"./baserom_3942K/data/poketool/trainer/trdata.narc" \
"./baserom_3942K/data/poketool/trainer/trpoke.narc"

sdat_files := \
"./baserom/data/data/sound/pl_sound_data.sdat" \
"./baserom/data/data/sound/sound_data.sdat"

sseq_files := \
$(wildcard ./baserom/data/data/sound/pl_sound_data_sdat/data_0000000*.sseq) \
$(wildcard ./baserom/data/data/sound/pl_sound_data_sdat/data_0000001*.sseq) \
"./baserom/data/data/sound/pl_sound_data_sdat/data_00000098.sseq"

it_files := \
"./trackerfiles/Module1.it"
it_folders := \
"./trackerfiles/Module1_it/"


trainer_files := $(wildcard ./data/poketool/trainer/trdata/*.s)

trainerpoke_files := $(wildcard ./data/poketool/trainer/trpoke/*.s)


script_files_bin := \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_000000**.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00000100.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00000102.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00000103.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00000104.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00000105.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00000106.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00000107.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00000108.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00000109.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_0000011*.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_0000012*.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_0000013*.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_0000014*.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_0000015*.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00000160.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00000161.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00000162.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00000163.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00000165.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00000166.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00000167.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00000168.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00000169.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_0000017*.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_0000018*.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_0000019*.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_000002**.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_0000030*.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_0000031*.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_0000032*.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_0000033*.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_0000034*.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_0000035*.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00000360.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00000361.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00000362.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00000363.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00000364.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00000366.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00000367.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00000368.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00000369.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_0000037*.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_0000038*.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_0000039*.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_000004**.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00000500.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00000501.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00001051.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00001052.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00001053.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00001054.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00001055.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00001056.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00001057.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00001058.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00001059.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_0000106*.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_0000107*.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_0000108*.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_0000109*.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_000011**.bin)

script_files_bin_rest := \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00000101.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00000164.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00000365.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00000502.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00000503.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00000504.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00000505.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00000506.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00000507.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00000508.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00000509.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_0000051*.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_0000052*.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_0000053*.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_0000054*.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_0000055*.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_0000056*.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_0000057*.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_0000058*.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_0000059*.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_000006*.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_000007*.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_000008*.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_000009*.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_0000100*.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_0000101*.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_0000102*.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_0000103*.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_0000104*.bin) \
$(wildcard ./baserom/data/fielddata/script/scr_seq_narc/data_00001050.bin)



all_trainer_rgcn := $(wildcard ./baserom/data/poketool/trgra/trfgra_narc/*.rgcn)
all_trainer_png := $(all_trainer_rgcn:.rgcn=.png)
all_icons_rgcn := $(wildcard ./baserom/data/poketool/icongra/pl_poke_icon_narc/*.rgcn)
all_icons_png := $(all_icons_rgcn:.rgcn=.png)


all:

clean:
	rm -f build/*
#	rm -r -f newrom/data/fielddata/script/*
#	rm -rf baserom

clean_code:
	rm -f build/arm9*.*
	rm -f build/arm7.*
	rm -f build/overlay_*.*
	rm -f build/y9.*


init:
	$(unpack_rom) -x "baserom.nds"
    
init2:
	$(unpack_rom) -x "baserom.nds" -of "newrom"

initk:
	$(unpack_rom) -x "baserom_3942K.nds" -of "baserom_3942K"

diagnose:
	$(unpack_rom) -d "baserom.nds"
	$(unpack_rom) -d "pokeplat.nds"
	$(unpack_rom) -d "baserom_3942K.nds"

diagnose2:
	$(unpack_rom) -d "../PokemonPlatRoms/2641 - Pokemon Platinum (J)(XenoPhobia).nds"
	$(unpack_rom) -d "../PokemonPlatRoms/3541 - Pokemon - Platinum Version (USA)NoIntro.nds"
	$(unpack_rom) -d "../PokemonPlatRoms/3541 - Pokemon Platinum Version (US)(XenoPhobia).nds"
	$(unpack_rom) -d "../PokemonPlatRoms/3541- Pokemon Platinum (U).nds"
	$(unpack_rom) -d "../PokemonPlatRoms/4998 - Pokemon - Platinum Version (v01) (U).nds"

diagnose2diff:
	diff -u "../PokemonPlatRoms/3541 - Pokemon Platinum Version (US)(XenoPhobia).nds_Header.txt" "../PokemonPlatRoms/3541 - Pokemon - Platinum Version (USA)NoIntro.nds_Header.txt" | less > "../PokemonPlatRoms/diff_3541_XenoPhobia_VS_NoIntro.txt"
	diff -u "../PokemonPlatRoms/3541 - Pokemon Platinum Version (US)(XenoPhobia).nds_Header.txt" "../PokemonPlatRoms/4998 - Pokemon - Platinum Version (v01) (U).nds_Header.txt" | less > "../PokemonPlatRoms/diff_3541_XenoPhobia_VS_USv01.txt"
	diff -u "../PokemonPlatRoms/3541 - Pokemon - Platinum Version (USA)NoIntro.nds_Header.txt" "../PokemonPlatRoms/4998 - Pokemon - Platinum Version (v01) (U).nds_Header.txt" | less > "../PokemonPlatRoms/diff_3541_NoIntro_VS_USv01.txt"
	diff -u "../PokemonPlatRoms/3541 - Pokemon - Platinum Version (USA)NoIntro.nds_Header.txt" "../PokemonPlatRoms/2641 - Pokemon Platinum (J)(XenoPhobia).nds_Header.txt" | less > "../PokemonPlatRoms/diff_3541_NoIntro_VS_2641_Jap.txt"

narc:
	$(foreach f,$(narc_files),$(unpack_narc) $(f) -debug;)

narcpoke:
	$(foreach f,$(pokegra_narc_files),$(unpack_narc) $(f) -debug;)

narc2:
	$(foreach f,$(narc_files2),$(unpack_narc) $(f);)

narck:
	$(foreach f,$(narc_filesk),$(unpack_narc) $(f);)

sdat:
	$(foreach f,$(sdat_files),$(unpack_sdat) $(f) -debug;)

sseq:
	$(foreach f,$(sseq_files),$(unpack_sseq) $(f) -debug;)

it:
	$(foreach f,$(it_files),$(unpack_it) $(f) -debug;)

build_it:
	$(create_it) "./trackerfiles/Module1_it/" -o "./trackerfiles/Module1_it/a.it" -debug



ex_script:
	$(foreach f,$(script_files_bin),$(ex_script) $(f) "./data/fielddata/script/scr_seq/";)

script_files := $(wildcard data/fielddata/script/scr_seq/data_0000*.s)
SCRIPTS := $(addprefix build/, $(script_files:.s=.bin))

newrom/data/fielddata/script/scr_seq.narc: $(SCRIPTS)
	$(foreach f,$(script_files_bin_rest),cp -f $(f) "./build/data/fielddata/script/scr_seq";)
	$(create_narc) "./build/data/fielddata/script/scr_seq" -o $@
	hexdump -C $(subst newrom,baserom,$@) > $(subst .narc,.txt,$(subst newrom,baserom,$@))
	hexdump -C $@ > $(subst newrom,build,$(subst .narc,.txt,$@))
	diff -u $(subst .narc,.txt,$(subst newrom,baserom,$@)) $(subst newrom,build,$(subst .narc,.txt,$@)) | less > build/diff_$(notdir $(subst .narc,.txt,$@))


frscript_files_bin := $(wildcard ./baserom/data/frontier/script/fr_script_narc/data_000000**.bin)

ex_frscript:
	$(foreach f,$(frscript_files_bin),$(ex_script) $(f) "./data/frontier/script/frscript/";)




pltext_files_bin := $(wildcard ./baserom/data/msgdata/pl_msg_narc/data_00000*.bin)
text_files_bin := $(wildcard ./baserom/data/msgdata/msg_narc/data_00000*.bin)

ex_text:
	$(foreach f,$(pltext_files_bin),$(ex_msg) $(f) "./data/msgdata/pl_msg/";)
	$(foreach f,$(text_files_bin),$(ex_msg) $(f) "./data/msgdata/msg/";)

pltext_files := $(wildcard data/msgdata/pl_msg/data_00000*.msg)
text_files := $(wildcard data/msgdata/msg/data_00000*.msg)
PLMSGS := $(addprefix build/, $(pltext_files:.msg=.bin))
MSGS := $(addprefix build/, $(text_files:.msg=.bin))

build/data/msgdata/%.bin: data/msgdata/%.msg
	${MKDIR_P} $(dir $@)
	$(create_msg) $< $(dir $@)

newrom/data/msgdata/pl_msg.narc: $(PLMSGS)
	$(create_narc) "./build/data/msgdata/pl_msg/" -o $@
	hexdump -C $(subst newrom,baserom,$@) > $(subst .narc,.txt,$(subst newrom,baserom,$@))
	hexdump -C $@ > $(subst newrom,build,$(subst .narc,.txt,$@))
	diff -u $(subst .narc,.txt,$(subst newrom,baserom,$@)) $(subst newrom,build,$(subst .narc,.txt,$@)) | less > build/diff_$(notdir $(subst .narc,.txt,$@))

newrom/data/msgdata/msg.narc: $(MSGS)
	$(create_narc) "./build/data/msgdata/msg/" -o $@
	hexdump -C $(subst newrom,baserom,$@) > $(subst .narc,.txt,$(subst newrom,baserom,$@))
	hexdump -C $@ > $(subst newrom,build,$(subst .narc,.txt,$@))
	diff -u $(subst .narc,.txt,$(subst newrom,baserom,$@)) $(subst newrom,build,$(subst .narc,.txt,$@)) | less > build/diff_$(notdir $(subst .narc,.txt,$@))




landdata_files_bin := $(wildcard ./baserom/data/fielddata/land_data/land_data_narc/data_0000000*.bin)

ex_landdata:
	$(foreach f,$(landdata_files_bin),$(ex_landdata) $(f) "./data/fielddata/land_data/land_data_narc/";)


font_files_bin := $(wildcard ./baserom/data/graphic/pl_font_narc/data_00000000.bin) \
$(wildcard ./baserom/data/graphic/pl_font_narc/data_00000001.bin) \
$(wildcard ./baserom/data/graphic/pl_font_narc/data_00000003.bin) \
$(wildcard ./baserom/data/graphic/font_narc/data_00000000.bin) \
$(wildcard ./baserom/data/graphic/font_narc/data_00000001.bin) \
$(wildcard ./baserom/data/graphic/font_narc/data_00000003.bin)

font2_files_bin := $(wildcard ./baserom/data/graphic/pl_font_narc/data_00000002.bin) \
$(wildcard ./baserom/data/graphic/font_narc/data_00000002.bin)

fontk_files_bin := $(wildcard ./baserom_3942K/data/graphic/pl_font_narc/data_00000000.bin) \
$(wildcard ./baserom_3942K/data/graphic/pl_font_narc/data_00000001.bin) \
$(wildcard ./baserom_3942K/data/graphic/pl_font_narc/data_00000003.bin) \
$(wildcard ./baserom_3942K/data/graphic/font_narc/data_00000000.bin) \
$(wildcard ./baserom_3942K/data/graphic/font_narc/data_00000001.bin) \
$(wildcard ./baserom_3942K/data/graphic/font_narc/data_00000003.bin)

font2k_files_bin := $(wildcard ./baserom_3942K/data/graphic/pl_font_narc/data_00000002.bin) \
$(wildcard ./baserom_3942K/data/graphic/font_narc/data_00000002.bin)

build_font_files_bin := $(wildcard build/data/graphic/pl_font/data_00000000.bin) \
$(wildcard build/data/graphic/pl_font/data_00000001.bin) \
$(wildcard build/data/graphic/pl_font/data_00000002.bin) \
$(wildcard build/data/graphic/pl_font/data_00000003.bin) \
$(wildcard build/data/graphic/font/data_00000000.bin) \
$(wildcard build/data/graphic/font/data_00000001.bin) \
$(wildcard build/data/graphic/font/data_00000002.bin) \
$(wildcard build/data/graphic/font/data_00000003.bin)

build/data/graphic/%.bin: data/graphic/%.font.png
	$(ex_font) -p $< -o $@
	hexdump -C $(subst build,baserom,$(subst font,font_narc,$@)) > $(subst build,baserom,$(subst .bin,.txt,$(subst font,font_narc,$@)))
	hexdump -C $@ > $(subst .bin,.txt,$@)
	diff -u $(subst build,baserom,$(subst .bin,.txt,$(subst font,font_narc,$@))) $(subst .bin,.txt,$@) | less > build/diff_$(notdir $(subst .bin,.txt,$@))

ex_font:
	$(foreach f,$(font_files_bin),$(ex_font) -x $(f) -o $(subst font_narc,font,$(subst .bin,.font.png,$(subst baserom/,,$f)));)
	$(foreach f,$(font2_files_bin),$(ex_font) -inv -x $(f) -o $(subst font_narc,font,$(subst .bin,.font.png,$(subst baserom/,,$f)));)
	#$(foreach f,$(font_files_bin),$(ex_font) -p $(subst pl_font_narc,pl_font,$(subst .bin,.png,$(subst baserom/,,$f))) -o $(subst pl_font_narc,pl_font,$(subst .bin,.bin,$(subst baserom/,build/,$f)));)
	#$(foreach f,$(font_files_bin),$(ex_font) $(f) -o $(subst pl_font_narc,pl_font,$(subst .bin,,$(subst baserom/,,$f)));)

ex_fontk:
	$(foreach f,$(fontk_files_bin),$(ex_font) -x $(f) -o $(subst font_narc,font,$(subst .bin,.font.png,$f));)
	$(foreach f,$(font2k_files_bin),$(ex_font) -inv -x $(f) -o $(subst font_narc,font,$(subst .bin,.font.png,$f));)


ex_itemdata:
	$(foreach f,$(wildcard ./baserom/data/itemtool/itemdata/pl_item_data_narc/*.bin),$(ex_itemdata) $(f) "./data/itemtool/itemdata/pl_item_data/";)
	$(foreach f,$(wildcard ./baserom/data/itemtool/itemdata/item_data_narc/*.bin),$(ex_itemdata) $(f) "./data/itemtool/itemdata/item_data/";)

ex_event:
	$(foreach f,$(wildcard ./baserom/data/fielddata/eventdata/zone_event_narc/*.bin),$(ex_event) $(f) "./data/fielddata/eventdata/zone_event/";)

btdpm_files_bin := $(wildcard ./baserom/data/battle/b_tower/btdpm_narc/data_00000*.bin)
plbtdpm_files_bin := $(wildcard ./baserom/data/battle/b_pl_tower/pl_btdpm_narc/data_00000*.bin)
plbsdpm_files_bin := $(wildcard ./baserom/data/battle/b_pl_stage/pl_bsdpm_narc/data_00000*.bin)
ex_trainerpoke:
	$(foreach f,$(plbtdpm_files_bin),$(ex_trainerpoke) $(f) "./data/battle/b_pl_tower/pl_btdpm/" -bt;)
	$(foreach f,$(btdpm_files_bin),$(ex_trainerpoke) $(f) "./data/battle/b_tower/btdpm/" -bt;)
	$(foreach f,$(plbsdpm_files_bin),$(ex_trainerpoke) $(f) "./data/battle/b_pl_stage/pl_bsdpm/" -bt;)

plbtdtr_files_bin := $(wildcard ./baserom/data/battle/b_pl_tower/pl_btdtr_narc/data_00000*.bin)
btdtr_files_bin := $(wildcard ./baserom/data/battle/b_tower/btdtr_narc/data_00000*.bin)
ex_trainerpoke2:
	$(foreach f,$(plbtdtr_files_bin),$(ex_trainerpoke) $(f) "./data/battle/b_pl_tower/pl_btdtr/" -btrainer;)
	$(foreach f,$(btdtr_files_bin),$(ex_trainerpoke) $(f) "./data/battle/b_tower/btdtr/" -btrainer;)

trainerteams_files_bin := $(wildcard ./baserom/data/poketool/trainer/trdata_narc/data_00000*.bin)
ex_trainerteams:
	$(foreach f,$(trainerteams_files_bin),$(ex_trainerteams) $(f) $(subst trdata_narc,trpoke_narc,$(f)) "./data/poketool/trainer/trdata/" "./data/poketool/trainer/trpoke/";)

ex_moves:
	$(foreach f,$(wildcard ./baserom/data/poketool/waza/pl_waza_tbl_narc/*.bin),$(ex_moves) $(f) "./data/poketool/waza/pl_waza_tbl/";)
	$(foreach f,$(wildcard ./baserom/data/poketool/waza/waza_tbl_narc/*.bin),$(ex_moves) $(f) "./data/poketool/waza/waza_tbl/";)



build/data/%.bin: data/%.s
	${MKDIR_P} $(dir $@)
	$(DEVKITARM)/bin/arm-none-eabi-as -mcpu=arm7tdmi -X -mthumb-interwork $< -o $(subst .s,.o,$<)
	$(DEVKITARM)/bin/arm-none-eabi-ld -Ttext 0 $(subst .s,.o,$<) -o $(subst .s,.elf,$<)
	$(DEVKITARM)/bin/arm-none-eabi-objcopy -v -O binary $(subst .s,.elf,$<) $@
	rm -f $(subst .s,.o,$<)
	rm -f $(subst .s,.elf,$<)


define NARC_RULE_TEMPLATE
FILES := $(addprefix build/, $(patsubst %.s,%.bin,$(wildcard $(1)/*.s)))
all : newrom/$(1).narc
newrom/$(1).narc: $$(FILES)
endef


$(eval $(call NARC_RULE_TEMPLATE,data/battle/b_pl_stage/pl_bsdpm))
$(eval $(call NARC_RULE_TEMPLATE,data/battle/b_pl_tower/pl_btdpm))
$(eval $(call NARC_RULE_TEMPLATE,data/battle/b_pl_tower/pl_btdtr))
$(eval $(call NARC_RULE_TEMPLATE,data/battle/b_tower/btdpm))
$(eval $(call NARC_RULE_TEMPLATE,data/battle/b_tower/btdtr))
$(eval $(call NARC_RULE_TEMPLATE,data/fielddata/encountdata/d_enc_data))
$(eval $(call NARC_RULE_TEMPLATE,data/fielddata/encountdata/p_enc_data))
$(eval $(call NARC_RULE_TEMPLATE,data/fielddata/encountdata/pl_enc_data))
$(eval $(call NARC_RULE_TEMPLATE,data/fielddata/eventdata/zone_event))
$(eval $(call NARC_RULE_TEMPLATE,data/itemtool/itemdata/item_data))
$(eval $(call NARC_RULE_TEMPLATE,data/itemtool/itemdata/pl_item_data))
$(eval $(call NARC_RULE_TEMPLATE,data/poketool/personal/evo))
$(eval $(call NARC_RULE_TEMPLATE,data/poketool/personal/growtbl))
$(eval $(call NARC_RULE_TEMPLATE,data/poketool/personal/pl_growtbl))
$(eval $(call NARC_RULE_TEMPLATE,data/poketool/personal/personal))
$(eval $(call NARC_RULE_TEMPLATE,data/poketool/personal/pl_personal))
$(eval $(call NARC_RULE_TEMPLATE,data/poketool/personal/wotbl))
$(eval $(call NARC_RULE_TEMPLATE,data/poketool/trainer/trdata))
$(eval $(call NARC_RULE_TEMPLATE,data/poketool/trainer/trpoke))
$(eval $(call NARC_RULE_TEMPLATE,data/poketool/waza/pl_waza_tbl))
$(eval $(call NARC_RULE_TEMPLATE,data/poketool/waza/waza_tbl))

newrom/%.narc:
	$(create_narc2) $^ -o $@
	hexdump -C $(subst newrom,baserom,$@) > $(subst .narc,.txt,$(subst newrom,baserom,$@))
	hexdump -C $@ > $(subst newrom,build,$(subst .narc,.txt,$@))
	diff -u $(subst .narc,.txt,$(subst newrom,baserom,$@)) $(subst newrom,build,$(subst .narc,.txt,$@)) | less > build/diff_$(notdir $(subst .narc,.txt,$@))



##########################################################



ex_growtbl:
	$(foreach f,$(wildcard ./baserom/data/poketool/personal/growtbl_narc/*.bin),$(ex_growtbl) $(f) "./data/poketool/personal/growtbl/";)
	$(foreach f,$(wildcard ./baserom/data/poketool/personal/pl_growtbl_narc/*.bin),$(ex_growtbl) $(f) "./data/poketool/personal/pl_growtbl/";)

ex_evo:
	$(foreach f,$(wildcard ./baserom/data/poketool/personal/evo_narc/*.bin),$(ex_evo) $(f) "./data/poketool/personal/evo/";)

ex_encdata:
	$(foreach f,$(wildcard ./baserom/data/fielddata/encountdata/d_enc_data_narc/*.bin),$(ex_encdata) $(f) "./data/fielddata/encountdata/d_enc_data/";)
	$(foreach f,$(wildcard ./baserom/data/fielddata/encountdata/p_enc_data_narc/*.bin),$(ex_encdata) $(f) "./data/fielddata/encountdata/p_enc_data/";)
	$(foreach f,$(wildcard ./baserom/data/fielddata/encountdata/pl_enc_data_narc/*.bin),$(ex_encdata) $(f) "./data/fielddata/encountdata/pl_enc_data/";)

ex_wotable:
	$(foreach f,$(wildcard ./baserom/data/poketool/personal/wotbl_narc/*.bin),$(ex_wotable) $(f) "./data/poketool/personal/wotbl/";)

ex_pokebasedata:
	$(foreach f,$(wildcard ./baserom/data/poketool/personal/pl_personal_narc/*.bin),$(ex_pokebasedata) $(f) "./data/poketool/personal/pl_personal/";)
	$(foreach f,$(wildcard ./baserom/data/poketool/personal/personal_narc/*.bin),$(ex_pokebasedata) $(f) "./data/poketool/personal/personal/";)

ex_beseq:
	$(foreach f,$(wildcard ./baserom/data/battle/skill/be_seq_narc/data_00000*.bin),$(ex_beseq) $(f) "./data/battle/skill/be_seq/";)
	$(foreach f,$(wildcard ./baserom/data/battle/skill/sub_seq_narc/data_00000*.bin),$(ex_beseq) $(f) "./data/battle/skill/sub_seq/";)
	$(foreach f,$(wildcard ./baserom/data/battle/skill/waza_seq_narc/data_00000*.bin),$(ex_beseq) $(f) "./data/battle/skill/waza_seq/";)


wazaeffect_files_bin := \
$(wildcard ./baserom/data/wazaeffect/we_arc/data_0000000*.bin) \
$(wildcard ./baserom/data/wazaeffect/we_arc/data_0000001*.bin) \
$(wildcard ./baserom/data/wazaeffect/we_arc/data_00000070.bin) \
$(wildcard ./baserom/data/wazaeffect/we_arc/data_00000263.bin)

ex_wazaeffect:
	$(foreach f,$(wazaeffect_files_bin),$(ex_wazaeffect) $(f) "./data/wazaeffect/we/";)
	#$(foreach f,$(wazaeffect_sub_files_bin),$(ex_wazaeffect) $(f) "./data/wazaeffect/we_sub_narc/";)


pokegras_files := $(wildcard data/poketool/pokegra/pl_pokegra/*.png)
pokepals_files := $(wildcard data/poketool/pokegra/pl_pokegra/*.pal)
pokegras2_files := $(wildcard data/poketool/pokegra/pokegra/*.png)
pokepals2_files := $(wildcard data/poketool/pokegra/pokegra/*.pal)
POKEGRAS := $(addprefix build/, $(pokegras_files:.png=.rgcn)) \
$(addprefix build/, $(subst _shiny.pal,_pal1.rlcn, $(subst _normal.pal,_pal0.rlcn, $(pokepals_files))))
POKEGRAS2 := $(addprefix build/, $(pokegras2_files:.png=.rgcn)) \
$(addprefix build/, $(subst _shiny.pal,_pal1.rlcn, $(subst _normal.pal,_pal0.rlcn, $(pokepals2_files))))

data/poketool/pokegra/pl_pokegra/data_00000000_%.png: baserom/data/poketool/pokegra/pl_pokegra_narc/data_00000000_%.rgcn
	$(eval X = $(addprefix baserom/, $(subst pl_pokegra,pl_pokegra_narc,$(@))))
	$(eval Y = $(subst _back0.png,_pal1.rlcn,$(X)))
	$(eval Y = $(subst _back1.png,_pal1.rlcn,$(Y)))
	$(eval Y = $(subst _front0.png,_pal0.rlcn,$(Y)))
	$(eval Y = $(subst _front1.png,_pal0.rlcn,$(Y)))
	$(gfx) -x "$<" "$(Y)" -debug -o "$@" -e forwards -mult 0x4e6d -carry 0xedf9 -key 0x18ff
	$(eval Y = $(subst _back0.png,_pal1.rlcn,$(X)))
	$(eval Y = $(subst _back1.png,_pal1.rlcn,$(Y)))
	$(eval Y = $(subst _front0.png,_pal0.rlcn,$(Y)))
	$(eval Y = $(subst _front1.png,_pal0.rlcn,$(Y)))
	$(eval P = $(subst _front1.png,_normal.pal, $(subst _front0.png,_normal.pal, $(subst _back1.png,_shiny.pal, $(subst _back0.png,_shiny.pal, $(@))))))
	$(gfx) -xpal "$(Y)" -debug -o $(P)

data/poketool/pokegra/pl_pokegra/%.png: baserom/data/poketool/pokegra/pl_pokegra_narc/%.rgcn
	$(eval X = $(addprefix baserom/, $(subst pl_pokegra,pl_pokegra_narc,$(@))))
	$(eval Y = $(subst _back0.png,,$(X)))
	$(eval Y = $(subst _back1.png,,$(Y)))
	$(eval Y = $(subst _front0.png,,$(Y)))
	$(eval Y = $(subst _front1.png,,$(Y)))
	$(gfx) -x $< $(Y)_pal0.rlcn -debug -o $@ -e forwards -mult 0x41c64e6d -carry 0x6073
	$(eval P = $(subst _front1.png,, $(subst _front0.png,, $(subst _back1.png,, $(subst _back0.png,, $(@))))))
	$(gfx) -xpal $(Y)_pal0.rlcn -debug -o $(P)_normal.pal
	$(gfx) -xpal $(Y)_pal1.rlcn -debug -o $(P)_shiny.pal

data/poketool/pokegra/pokegra/data_00000000_%.png: baserom/data/poketool/pokegra/pokegra_narc/data_00000000_%.rgcn
	$(eval Y = $(subst _back0.rgcn,,$(<)))
	$(eval Y = $(subst _back1.rgcn,,$(Y)))
	$(eval Y = $(subst _front0.rgcn,,$(Y)))
	$(eval Y = $(subst _front1.rgcn,,$(Y)))
	$(gfx) -x $< $(Y)_pal0.rlcn -debug -o $@ -e forwards -mult 0xeb65 -carry 0x89c3
	$(eval P = $(subst pokegra_narc,pokegra, $(subst baserom/,, $(Y))))
	$(gfx) -xpal $(Y)_pal0.rlcn -debug -o $(P)_normal.pal
	$(gfx) -xpal $(Y)_pal1.rlcn -debug -o $(P)_shiny.pal

data/poketool/pokegra/pokegra/%.png: baserom/data/poketool/pokegra/pokegra_narc/%.rgcn
	$(eval Y = $(subst _back0.rgcn,,$(<)))
	$(eval Y = $(subst _back1.rgcn,,$(Y)))
	$(eval Y = $(subst _front0.rgcn,,$(Y)))
	$(eval Y = $(subst _front1.rgcn,,$(Y)))
	$(gfx) -x $< $(Y)_pal0.rlcn -debug -o $@ -e reverse -mult 0x41c64e6d -carry 0x6073
	$(eval P = $(subst pokegra_narc,pokegra, $(subst baserom/,, $(Y))))
	$(gfx) -xpal $(Y)_pal0.rlcn -debug -o $(P)_normal.pal
	$(gfx) -xpal $(Y)_pal1.rlcn -debug -o $(P)_shiny.pal
    
data/poketool/pokegra/pl_otherpoke/data_g_0_%.png: baserom/data/poketool/pokegra/pl_otherpoke_narc/data_g_0_%.rgcn
	$(gfx) -x $< baserom/data/poketool/pokegra/pl_otherpoke_narc/data_p_0_0.rlcn -debug -o $@ -e forwards -mult 0x41c64e6d -carry 0x6073
	#$(eval P = $(subst _front1.png,, $(subst _front0.png,, $(subst _back1.png,, $(subst _back0.png,, $(@))))))
	#$(gfx) -xpal $(Y)_pal0.rlcn -debug -o $(P)_normal.pal
	#$(gfx) -xpal $(Y)_pal1.rlcn -debug -o $(P)_shiny.pal

data/poketool/pokegra/pl_otherpoke/data_g_1_%.png: baserom/data/poketool/pokegra/pl_otherpoke_narc/data_g_1_%.rgcn
	$(gfx) -x $< baserom/data/poketool/pokegra/pl_otherpoke_narc/data_p_1_0.rlcn -debug -o $@ -e forwards -mult 0x41c64e6d -carry 0x6073

data/poketool/pokegra/pl_otherpoke/data_g_2_%.png: baserom/data/poketool/pokegra/pl_otherpoke_narc/data_g_2_%.rgcn
	$(gfx) -x $< $(subst .rgcn,_0.rlcn,$(subst _g_2_1_,_p_2_,$(subst _g_2_0_,_p_2_,$<))) -debug -o $@ -e forwards -mult 0x41c64e6d -carry 0x6073

data/poketool/pokegra/pl_otherpoke/data_g_9_%.png: baserom/data/poketool/pokegra/pl_otherpoke_narc/data_g_9_%.rgcn
	$(gfx) -x $< baserom/data/poketool/pokegra/pl_otherpoke_narc/data_p_9_0.rlcn -debug -o $@ -e forwards -mult 0x41c64e6d -carry 0x6073

data/poketool/pokegra/pl_otherpoke/data_g_10_%.png: baserom/data/poketool/pokegra/pl_otherpoke_narc/data_g_10_%.rgcn
	$(gfx) -x $< baserom/data/poketool/pokegra/pl_otherpoke_narc/data_p_10_0.rlcn -debug -o $@ -e forwards -mult 0x41c64e6d -carry 0x6073

data/poketool/pokegra/pl_otherpoke/data_g_13_%.png: baserom/data/poketool/pokegra/pl_otherpoke_narc/data_g_13_%.rgcn
	$(gfx) -x $< baserom/data/poketool/pokegra/pl_otherpoke_narc/data_p_13_0.rlcn -debug -o $@ -e forwards -mult 0x41c64e6d -carry 0x6073

# 3-8, 15 - 43
data/poketool/pokegra/pl_otherpoke/data_g_%.png: baserom/data/poketool/pokegra/pl_otherpoke_narc/data_g_%.rgcn
	$(gfx) -x $< $(subst _0.rgcn,_0.rlcn,$(subst _1.rgcn,_0.rlcn,$(subst _g_,_p_,$<))) -debug -o $@ -e forwards -mult 0x41c64e6d -carry 0x6073

newrom/data/poketool/pokegra/pl_pokegra.narc: $(POKEGRAS)
	$(create_narc) "./build/data/poketool/pokegra/pl_pokegra/" -o $@
	hexdump -C $(subst newrom,baserom,$@) > $(subst .narc,.txt,$(subst newrom,baserom,$@))
	hexdump -C $@ > $(subst newrom,build,$(subst .narc,.txt,$@))
	diff -u $(subst .narc,.txt,$(subst newrom,baserom,$@)) $(subst newrom,build,$(subst .narc,.txt,$@)) | less > build/diff_$(notdir $(subst .narc,.txt,$@))

newrom/data/poketool/pokegra/pokegra.narc: $(POKEGRAS2)
	$(create_narc) "./build/data/poketool/pokegra/pokegra/" -o $@
	hexdump -C $(subst newrom,baserom,$@) > $(subst .narc,.txt,$(subst newrom,baserom,$@))
	hexdump -C $@ > $(subst newrom,build,$(subst .narc,.txt,$@))
	diff -u $(subst .narc,.txt,$(subst newrom,baserom,$@)) $(subst newrom,build,$(subst .narc,.txt,$@)) | less > build/diff_$(notdir $(subst .narc,.txt,$@))

all_sprites_btx := $(wildcard ./baserom/data/data/mmodel/mmodel_narc/data_0000*.btx0)
all_sprites_png := $(subst _narc,,$(subst ./baserom/,,$(all_sprites_btx:.btx0=.png)))
all_sprites2_btx := $(wildcard ./baserom/data/data/mmodel/fldeff_narc/data_0000*.btx0)
all_sprites2_png := $(subst _narc,,$(subst ./baserom/,,$(all_sprites2_btx:.btx0=.png)))

pics3: $(all_sprites_png)
pics4: $(all_sprites2_png)

data/data/mmodel/mmodel/data_%.png: baserom/data/data/mmodel/mmodel_narc/data_%.btx0
	$(gfx_btx) -x $< -debug -o $@

data/data/mmodel/fldeff/data_%.png: baserom/data/data/mmodel/fldeff_narc/data_%.btx0
	$(gfx_btx) -x $< -debug -o $@

all_pokemon_rgcn := $(wildcard ./baserom/data/poketool/pokegra/pl_pokegra_narc/data_00000*.rgcn)
all_pokemon_png := $(subst _narc,,$(subst ./baserom/,,$(all_pokemon_rgcn:.rgcn=.png)))
all_otherpokemon_rgcn := $(wildcard ./baserom/data/poketool/pokegra/pl_otherpoke_narc/data_*.rgcn)
all_otherpokemon_png := $(subst _narc,,$(subst ./baserom/,,$(all_otherpokemon_rgcn:.rgcn=.png)))
all_pokemon2_rgcn := $(wildcard ./baserom/data/poketool/pokegra/pokegra_narc/data_00000*.rgcn)
all_pokemon2_png := $(subst _narc,,$(subst ./baserom/,,$(all_pokemon2_rgcn:.rgcn=.png)))

pics: $(all_pokemon_png) $(all_pokemon2_png) $(all_otherpokemon_png)

build/data/poketool/pokegra/pl_pokegra/data_00000000_%.rgcn: data/poketool/pokegra/pl_pokegra/data_00000000_%.png
	$(gfx) -p $< -debug -o $@ -e forwards -mult 0x4e6d -carry 0xedf9 -key 0x18ff
	#hexdump -C $(subst pl_pokegra,pl_pokegra_narc, $(subst build,baserom,$@)) > $(subst .rgcn,.txt, $(subst pl_pokegra,pl_pokegra_narc, $(subst build,baserom,$@)))
	#hexdump -C $@ > $(subst .rgcn,.txt,$@)
	#diff -u $(subst .rgcn,.txt, $(subst pl_pokegra,pl_pokegra_narc, $(subst build,baserom,$@))) $(subst .rgcn,.txt,$@) | less > build/diff_$(notdir $(subst .rgcn,.txt,$@))

build/data/poketool/pokegra/pokegra/data_00000000_%.rgcn: data/poketool/pokegra/pokegra/data_00000000_%.png
	$(gfx) -p $< -debug -o $@ -e reverse -mult 0x4e6d -carry 0xedf9 -key 0x18ff
	#hexdump -C $(subst pokegra/pokegra,pokegra/pokegra_narc, $(subst build,baserom,$@)) > $(subst .rgcn,.txt, $(subst pokegra/pokegra,pokegra/pokegra_narc, $(subst build,baserom,$@)))
	#hexdump -C $@ > $(subst .rgcn,.txt,$@)
	#diff -u $(subst .rgcn,.txt, $(subst pokegra/pokegra,pokegra/pokegra_narc, $(subst build,baserom,$@))) $(subst .rgcn,.txt,$@) | less > build/diff_$(notdir $(subst .rgcn,.txt,$@))

build/data/poketool/pokegra/pl_pokegra/%.rgcn: data/poketool/pokegra/pl_pokegra/%.png
	$(gfx) -p $< -debug -o $@ -e forwards -mult 0x41c64e6d -carry 0x6073
	#hexdump -C $(subst pl_pokegra,pl_pokegra_narc, $(subst build,baserom,$@)) > $(subst .rgcn,.txt, $(subst pl_pokegra,pl_pokegra_narc, $(subst build,baserom,$@)))
	#hexdump -C $@ > $(subst .rgcn,.txt,$@)
	#diff -u $(subst .rgcn,.txt, $(subst pl_pokegra,pl_pokegra_narc, $(subst build,baserom,$@))) $(subst .rgcn,.txt,$@) | less > build/diff_$(notdir $(subst .rgcn,.txt,$@))

build/data/poketool/pokegra/pokegra/%.rgcn: data/poketool/pokegra/pokegra/%.png
	$(gfx) -p $< -debug -o $@ -e reverse -mult 0x41c64e6d -carry 0x6073
	#hexdump -C $(subst pokegra/pokegra,pokegra/pokegra_narc, $(subst build,baserom,$@)) > $(subst .rgcn,.txt, $(subst pokegra/pokegra,pokegra/pokegra_narc, $(subst build,baserom,$@)))
	#hexdump -C $@ > $(subst .rgcn,.txt,$@)
	#diff -u $(subst .rgcn,.txt, $(subst pokegra/pokegra,pokegra/pokegra_narc, $(subst build,baserom,$@))) $(subst .rgcn,.txt,$@) | less > build/diff_$(notdir $(subst .rgcn,.txt,$@))

build/data/poketool/pokegra/pl_pokegra/data_00000000_pal1.rlcn: data/poketool/pokegra/pl_pokegra/data_00000000_back0.png data/poketool/pokegra/pl_pokegra/data_00000000_back1.png
	$(gfx) -p2 $< -debug -o $@ -e forwards -emptypal
	$(gfx) -p2 $(word 2,$^) -debug -o $@ -e forwards -emptypal

build/data/poketool/pokegra/pl_pokegra/data_00000000_pal0.rlcn: data/poketool/pokegra/pokegra/data_00000000_front0.png data/poketool/pokegra/pokegra/data_00000000_front1.png
	$(gfx) -p2 $< -debug -o $@ -e forwards -emptypal
	$(gfx) -p2 $(word 2,$^) -debug -o $@ -e forwards -emptypal

build/data/poketool/pokegra/pokegra/data_00000000_pal1.rlcn: data/poketool/pokegra/pokegra/data_00000000_back0.png data/poketool/pokegra/pokegra/data_00000000_back1.png
	$(gfx) -p2 $< -debug -o $@ -e forwards -emptypal
	$(gfx) -p2 $(word 2,$^) -debug -o $@ -e forwards -emptypal

build/data/poketool/pokegra/pokegra/data_00000000_pal0.rlcn: data/poketool/pokegra/pokegra/data_00000000_front0.png data/poketool/pokegra/pokegra/data_00000000_front1.png
	$(gfx) -p2 $< -debug -o $@ -e forwards -emptypal
	$(gfx) -p2 $(word 2,$^) -debug -o $@ -e forwards -emptypal

build/data/poketool/pokegra/%_pal1.rlcn: data/poketool/pokegra/%_shiny.pal
	$(gfx) -p3 $< -debug -o $@ -e forwards
	#hexdump -C $(subst pl_pokegra,pl_pokegra_narc, $(subst build,baserom,$@)) > $(subst .rlcn,.txt, $(subst pl_pokegra,pl_pokegra_narc, $(subst build,baserom,$@)))
	#hexdump -C $@ > $(subst .rlcn,.txt,$@)
	#diff -u $(subst .rlcn,.txt, $(subst pl_pokegra,pl_pokegra_narc, $(subst build,baserom,$@))) $(subst .rlcn,.txt,$@) | less > build/diff_$(notdir $(subst .rlcn,.txt,$@))

build/data/poketool/pokegra/%_pal0.rlcn: data/poketool/pokegra/%_normal.pal
	$(gfx) -p3 $< -debug -o $@ -e forwards
	#hexdump -C $(subst pl_pokegra,pl_pokegra_narc, $(subst build,baserom,$@)) > $(subst .rlcn,.txt, $(subst pl_pokegra,pl_pokegra_narc, $(subst build,baserom,$@)))
	#hexdump -C $@ > $(subst .rlcn,.txt,$@)
	#diff -u $(subst .rlcn,.txt, $(subst pl_pokegra,pl_pokegra_narc, $(subst build,baserom,$@))) $(subst .rlcn,.txt,$@) | less > build/diff_$(notdir $(subst .rlcn,.txt,$@))





baserom/data/poketool/icongra/pl_poke_icon_narc/%.png: baserom/data/poketool/icongra/pl_poke_icon_narc/%.rgcn
	$(gfx) "$<" "./baserom/data/poketool/icongra/pl_poke_icon_narc/data_00000000.rlcn" -o "$@" -w 4 -h 8

baserom/data/poketool/trgra/trfgra_narc/%_00000000.png: baserom/data/poketool/trgra/trfgra_narc/%_00000000.rgcn
	$(eval Y = $(subst _00000000.png,_00000001.rlcn,$(@)))
	$(gfx) "$<" "$(Y)" -o "$@" -w 20 -h 16

baserom/data/poketool/trgra/trfgra_narc/%_00000004.png: baserom/data/poketool/trgra/trfgra_narc/%_00000004.rgcn
	$(eval Y = $(subst _00000004.png,_00000001.rlcn,$(@)))
	$(gfx) "$<" "$(Y)" -o "$@" -e forwards

pics2: $(all_icons_png) $(all_trainer_png)




disassem:
	$(armdisassem) "./baserom/arm9.bin" 0x02000000 800 800



-include $(DEPS)

build/%.d: source/%.s
	$(MKDIR_P) build/
#	$(DEVKITARM)/bin/arm-none-eabi-as -MT $(subst .s,.o,build/$(notdir $<)) --MD $@ -march=armv5te -mthumb-interwork $<
#	$(DEVKITARM)/bin/arm-none-eabi-gcc -M -MF $@ -march=armv5te -mthumb-interwork $<

build/%.d: source/%.S
	$(MKDIR_P) build/

build/%.o: source/%.s build/%.d
	$(MKDIR_P) build/
	$(DEVKITARM)/bin/arm-none-eabi-as --MD $(subst .s,.d,build/$(notdir $<)) -march=armv5te $< -o $@
#	$(DEVKITARM)/bin/arm-none-eabi-gcc -x assembler-with-cpp -march=armv5te -mthumb-interwork $< -c -o $@
#	$(DEVKITARM)/bin/arm-none-eabi-gcc -x assembler-with-cpp -MMD -MP -MF $(subst .s,.d,build/$(notdir $<)) -march=armv5te -mthumb-interwork $< -c -o $@

newrom/arm9_full.bin: $(OBJS) $(DEPS)
	$(DEVKITARM)/bin/arm-none-eabi-ld --use-blx -T "source/ds_arm9.ld" -Map "build/arm9.map" $(OBJS) $(LIBPATHS) -o "build/arm9.elf"
	$(DEVKITARM)/bin/arm-none-eabi-objcopy --gap-fill=0xff -v -O binary "build/arm9.elf" $@
	hexdump -C $(subst newrom,baserom,$@) > $(subst .bin,.txt,$(subst newrom,baserom,$@))
	hexdump -C $@ > $(subst newrom,build,$(subst .bin,.txt,$@))
	diff -u $(subst .bin,.txt,$(subst newrom,baserom,$@)) $(subst newrom,build,$(subst .bin,.txt,$@)) | less > build/diff_$(notdir $(subst .bin,.txt,$@))

newrom/arm7.bin: $(OBJS7) $(DEPS7)
	$(DEVKITARM)/bin/arm-none-eabi-ld -T "source/ds_arm7.ld" -Map "build/arm7.map" $(OBJS7) $(LIBPATHS) -o "build/arm7.elf"
	$(DEVKITARM)/bin/arm-none-eabi-objcopy -v -O binary "build/arm7.elf" $@
	hexdump -C $(subst newrom,baserom,$@) > $(subst .bin,.txt,$(subst newrom,baserom,$@))
	hexdump -C $@ > $(subst newrom,build,$(subst .bin,.txt,$@))
	diff -u $(subst .bin,.txt,$(subst newrom,baserom,$@)) $(subst newrom,build,$(subst .bin,.txt,$@)) | less > build/diff_$(notdir $(subst .bin,.txt,$@))



pokeplat.nds: newrom/arm9_full.bin newrom/arm7.bin $(NARCS) $(build_font_files_bin)
	$(create_rom) -dir "./newrom" -fat "./newrom/fat.bin" -a9map "build/arm9.map" -o $@
	md5sum ./pokeplat.nds
	hexdump -C baserom/fat.bin > baserom/fat.txt
	hexdump -C newrom/fat.bin > build/fat.txt
	diff -u baserom/fat.txt build/fat.txt | less > build/diff_fat.txt
	#$(unpack_rom) -d "./baserom.nds"
	#$(unpack_rom) -d "./pokeplat.nds"
	#diff -u "./baserom.nds_Header.txt" "./pokeplat.nds_Header.txt" | less > "./diff_baserom_pokeplat.txt"

pokeplat: pokeplat.nds

