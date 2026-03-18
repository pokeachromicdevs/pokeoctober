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
	sheets/generated/item/description_pointers.gen.asm \

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
