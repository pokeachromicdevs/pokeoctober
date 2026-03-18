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

update-sheet:
	tools/get_file.sh \
		"$(MASTER_SHEET_URL)" \
		sheets/master.xlsx

sheets/master.xlsx: update-sheet

$(TRAINER_GEN_OUTPUTS) &: sheets/master.xlsx
	# refresh all
	rm -f $(TRAINER_GEN_OUTPUTS)
	$(TRAINER_GEN_TOOL) \
		-in $< -out sheets/generated/trainer
