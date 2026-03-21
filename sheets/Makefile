# Included

MASTER_SHEET_URL ?= https://docs.google.com/spreadsheets/d/1EXduxJ0XTL5LtPwJing2lao1tqwN437fJjsR0dlbG0E/export?format=xlsx

TRAINER_GEN_TOOL := tools/mktrainerdata
TRAINER_GEN_OUTPUTS := \
	sheets/generated/trainer/attributes.gen.asm \
	sheets/generated/trainer/class_names.gen.asm \
	sheets/generated/trainer/dvs.gen.asm \
	sheets/generated/trainer/encounter_music.gen.asm \
	sheets/generated/trainer/palettes.gen.asm \
	sheets/generated/trainer/party_pointers.gen.asm \
	sheets/generated/trainer/pic_pointers.gen.asm \
	sheets/generated/trainer/trainer_constants.gen.asm \
	sheets/generated/trainer/trainer_parties.gen.asm

ITEM_GEN_TOOL := tools/mkitemdata
ITEM_GEN_OUTPUTS := \
	sheets/generated/item/normal_item_constants.gen.asm \
	sheets/generated/item/key_item_constants.gen.asm \
	sheets/generated/item/ball_item_constants.gen.asm \
	sheets/generated/item/attributes.gen.asm \
	sheets/generated/item/names.gen.asm \
	sheets/generated/item/effect_pointers.gen.asm \
	sheets/generated/item/description_pointers.gen.asm

WILD_GEN_TOOL := tools/mkwilddata
WILD_GEN_KANSAI_OUTPUTS := \
	sheets/generated/wild/kansai_grass.gen.asm \
	sheets/generated/wild/kansai_water.gen.asm
WILD_GEN_KANTO_OUTPUTS := \
	sheets/generated/wild/kanto_grass.gen.asm \
	sheets/generated/wild/kanto_water.gen.asm

TYPE_GEN_TOOL := tools/mktypedata
TYPE_GEN_OUTPUTS := \
	sheets/generated/type/constants_physical.gen.asm \
	sheets/generated/type/constants_special.gen.asm \
	sheets/generated/type/names.gen.asm \
	sheets/generated/type/search_strings.gen.asm \
	sheets/generated/type/search_types.gen.asm \
	sheets/generated/type/matchups.gen.asm

update-sheet:
	tools/get_file.sh "$(MASTER_SHEET_URL)" sheets/master.xlsx

sheets/master.xlsx:
	tools/get_file.sh "$(MASTER_SHEET_URL)" $@

$(TRAINER_GEN_OUTPUTS) &: sheets/master.xlsx
	$(TRAINER_GEN_TOOL) \
		-in $< -out sheets/generated/trainer

$(ITEM_GEN_OUTPUTS) &: sheets/master.xlsx
	$(ITEM_GEN_TOOL) \
		-in $< -out sheets/generated/item

$(WILD_GEN_KANSAI_OUTPUTS) &: sheets/master.xlsx
	$(WILD_GEN_TOOL) \
		-in $< -out sheets/generated/wild \
		-ingrass "Kansai Overworld Wild" \
		-inwater "Kansai Water Wild" \
		-basename kansai

$(WILD_GEN_KANTO_OUTPUTS) &: sheets/master.xlsx
	$(WILD_GEN_TOOL) \
		-in $< -out sheets/generated/wild \
		-ingrass "Kanto Overworld Wild" \
		-inwater "Kanto Water Wild" \
		-basename kanto

$(TYPE_GEN_OUTPUTS) &: sheets/master.xlsx
	$(TYPE_GEN_TOOL) \
		-in $< -out sheets/generated/type