// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_reset_game(){
	var save_path = "save_data.json";

	// Delete the save file if it exists.
	if (file_exists(save_path)) {
	    file_delete(save_path);
	}

	// Reset global variables
	
	global.timestamp = "N/A";
	
	global.fullscreen = true;
	
	global.sound_effects = true;
	global.sound_music = true;
    
	global.clues = 0;
	global.upgrade_points = 0;
	global.clues_unlocked = array_create(28, 0);
    
	global.upgrade_wrang_health = 0;
	global.upgrade_wrang_damage = 0;
	global.upgrade_wrang_count = 0;

	global.battle_level1_complete = false;
	global.battle_level2_complete = false;
	global.battle_level3_complete = false;
	global.battle_level4_complete = false;
	global.battle_level5_complete = false;

	global.battle_1_clues = 0;
	global.battle_2_clues = 0;
	global.battle_3_clues = 0;

	global.upgrade_mobile_health = 0;
	global.upgrade_mobile_boost = 0;
	global.upgrade_mobile_speed = 0;

	global.driving_level1_complete = false;
	global.driving_level2_complete = false;
	global.driving_level3_complete = false;
	global.driving_level4_complete = false;

	global.driving_1_clues = 0;
	global.driving_2_clues = 0;
	global.driving_3_clues = 0;

	global.upgrade_wing_health = 0;
	global.upgrade_wing_damage = 0;
	global.upgrade_wing_speed = 0;

	global.flying_level1_complete = false;
	global.flying_level2_complete = false;
	global.flying_level3_complete = false;
	global.flying_level4_complete = false;

	global.flying_1_clues = 0;
	global.flying_2_clues = 0;
	global.flying_3_clues = 0;

	global.tutorial_battle_complete = false;
	global.tutorial_driving_complete = false;
	global.tutorial_flying_complete = false;
	global.tutorial_decrypter_complete = false;
}