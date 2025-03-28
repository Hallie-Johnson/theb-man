/// @description Insert description here
// You can write your code in this editor

event_inherited()

if (sprite_index == spr_clue_complete) clickable = false;
else if (sprite_index == spr_clue_locked) clickable = false;
else if (sprite_index == spr_clue_unlocked) clickable = true;

if (obj_clue_manager.selected_folder == 1) {
	if (complete) {
		global.clues_unlocked[7] = 1;
		complete = false;
	}
	
	if (global.battle_3_clues >= 1) {
		if (global.clues_unlocked[7] == 1) {
			sprite_index = spr_clue_complete;
		}
		else sprite_index = spr_clue_unlocked;
	} else {
		sprite_index = spr_clue_locked;
	}
}

if (obj_clue_manager.selected_folder == 2) {
	if (complete) {
		global.clues_unlocked[16] = 1;
		complete = false;
	}
	
	if (global.driving_3_clues >= 1) {
		if (global.clues_unlocked[16] == 1) {
			sprite_index = spr_clue_complete;
		}
		else sprite_index = spr_clue_unlocked;
	} else {
		sprite_index = spr_clue_locked;
	}
}

if (obj_clue_manager.selected_folder == 3) {
	if (complete) {
		global.clues_unlocked[25] = 1;
		complete = false;
	}
	
	if (global.flying_3_clues >= 1) {
		if (global.clues_unlocked[25] == 1) {
			sprite_index = spr_clue_complete;
		}
		else sprite_index = spr_clue_unlocked;
	} else {
		sprite_index = spr_clue_locked;
	}
}

if (obj_clue_manager.selected_folder == 0) {
	sprite_index = spr_clue_locked;
}