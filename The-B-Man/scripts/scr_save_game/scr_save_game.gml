// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_save_game(){

	var save_path = "save_data.json";
	global.timestamp = date_datetime_string(date_current_datetime());

	// Create a struct with all game data and a timestamp.
	var save_data = {
		// Timestamp of save
		
		"timestamp": global.timestamp,

		// Sound settings
		"sound_effects": global.sound_effects,
		"sound_music": global.sound_music,
		
		// Display
		"fullscreen": global.fullscreen,
    
		// Clues data
		"clues": global.clues,
		"upgrade_points": global.upgrade_points,
	    "clues_unlocked": global.clues_unlocked,
		
		// Bahamowrangs
		"upgrade_wrang_health": global.upgrade_wrang_health,
		"upgrade_wrang_damage": global.upgrade_wrang_damage,
		"upgrade_wrang_count": global.upgrade_wrang_count,

		"battle_level1_complete": global.battle_level1_complete,
		"battle_level2_complete": global.battle_level2_complete,
		"battle_level3_complete": global.battle_level3_complete,
		"battle_level4_complete": global.battle_level4_complete,
		"battle_level5_complete": global.battle_level5_complete,
	
		"battle_1_clues": global.battle_1_clues,
		"battle_2_clues": global.battle_2_clues,
		"battle_3_clues": global.battle_3_clues,

		// Bahamobile
		"upgrade_mobile_health": global.upgrade_mobile_health,
		"upgrade_mobile_boost": global.upgrade_mobile_boost,
		"upgrade_mobile_speed": global.upgrade_mobile_speed,

		"driving_level1_complete": global.driving_level1_complete,
		"driving_level2_complete": global.driving_level2_complete,
		"driving_level3_complete": global.driving_level3_complete,
		"driving_level4_complete": global.driving_level4_complete,

		"driving_1_clues": global.driving_1_clues,
		"driving_2_clues": global.driving_2_clues,
		"driving_3_clues": global.driving_3_clues,

		// Bahamowing
		"upgrade_wing_health": global.upgrade_wing_health,
		"upgrade_wing_damage": global.upgrade_wing_damage,
		"upgrade_wing_speed": global.upgrade_wing_speed,

		"flying_level1_complete": global.flying_level1_complete,
		"flying_level2_complete": global.flying_level2_complete,
		"flying_level3_complete": global.flying_level3_complete,
		"flying_level4_complete": global.flying_level4_complete,

		"flying_1_clues": global.flying_1_clues,
		"flying_2_clues": global.flying_2_clues,
		"flying_3_clues": global.flying_3_clues,

		// Tutorials
		"tutorial_battle_complete": global.tutorial_battle_complete,
		"tutorial_driving_complete": global.tutorial_driving_complete,
		"tutorial_flying_complete": global.tutorial_flying_complete,
		"tutorial_decrypter_complete": global.tutorial_decrypter_complete
	};

	// Convert the data to a JSON string.
	var json_string = json_stringify(save_data);

	// Write the JSON string to file.
	var file = file_text_open_write(save_path);
	file_text_write_string(file, json_string);
	file_text_close(file);
}