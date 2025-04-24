// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_load_game(){
	var save_path = "save_data.json";

	// Check if the file exists.
	if (file_exists(save_path)) {
	    var file = file_text_open_read(save_path);
	    var json_string = "";
    
	    // Read the file completely.
	    while (!file_text_eof(file)) {
	        json_string += file_text_read_string(file);
	    }
	    file_text_close(file);
    
	    // Parse the JSON string.
	    var load_data = json_parse(json_string);

	    // Optionally, you can retrieve and use the timestamp:
	    global.timestamp = load_data.timestamp;

	    // Load values into globals
		global.fullscreen = load_data.fullscreen;
	    global.sound_effects = load_data.sound_effects;
	    global.sound_music = load_data.sound_music;
    
	    global.clues = load_data.clues;
	    global.upgrade_points = load_data.upgrade_points;
	    global.clues_unlocked = load_data.clues_unlocked;
    
	    global.upgrade_wrang_health = load_data.upgrade_wrang_health;
	    global.upgrade_wrang_damage = load_data.upgrade_wrang_damage;
	    global.upgrade_wrang_count = load_data.upgrade_wrang_count;

	    global.battle_level1_complete = load_data.battle_level1_complete;
	    global.battle_level2_complete = load_data.battle_level2_complete;
	    global.battle_level3_complete = load_data.battle_level3_complete;
	    global.battle_level4_complete = load_data.battle_level4_complete;
	    global.battle_level5_complete = load_data.battle_level5_complete;

	    global.battle_1_clues = load_data.battle_1_clues;
	    global.battle_2_clues = load_data.battle_2_clues;
	    global.battle_3_clues = load_data.battle_3_clues;

	    global.upgrade_mobile_health = load_data.upgrade_mobile_health;
	    global.upgrade_mobile_boost = load_data.upgrade_mobile_boost;
	    global.upgrade_mobile_speed = load_data.upgrade_mobile_speed;

	    global.driving_level1_complete = load_data.driving_level1_complete;
	    global.driving_level2_complete = load_data.driving_level2_complete;
	    global.driving_level3_complete = load_data.driving_level3_complete;
	    global.driving_level4_complete = load_data.driving_level4_complete;

	    global.driving_1_clues = load_data.driving_1_clues;
	    global.driving_2_clues = load_data.driving_2_clues;
	    global.driving_3_clues = load_data.driving_3_clues;

	    global.upgrade_wing_health = load_data.upgrade_wing_health;
	    global.upgrade_wing_damage = load_data.upgrade_wing_damage;
	    global.upgrade_wing_speed = load_data.upgrade_wing_speed;

	    global.flying_level1_complete = load_data.flying_level1_complete;
	    global.flying_level2_complete = load_data.flying_level2_complete;
	    global.flying_level3_complete = load_data.flying_level3_complete;
	    global.flying_level4_complete = load_data.flying_level4_complete;

	    global.flying_1_clues = load_data.flying_1_clues;
	    global.flying_2_clues = load_data.flying_2_clues;
	    global.flying_3_clues = load_data.flying_3_clues;

	    global.tutorial_battle_complete = load_data.tutorial_battle_complete;
	    global.tutorial_driving_complete = load_data.tutorial_driving_complete;
	    global.tutorial_flying_complete = load_data.tutorial_flying_complete;
	    global.tutorial_decrypter_complete = load_data.tutorial_decrypter_complete;
		
		return load_data;
    
	} else {
	    // If the file doesn't exist, create an instance of an object that shows a "No save file found" message.
	    //instance_create_layer(0, 0, "UI", oNoSaveMessage);
		
	}
	
}