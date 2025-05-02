/// @description Insert description here
// You can write your code in this editor

// window_mouse_set(clamp(window_mouse_get_x(), 0, window_get_width()), clamp(window_mouse_get_y(), 0, window_get_height()));


var clue_count = global.battle_1_clues + global.battle_2_clues + global.battle_3_clues +
				global.driving_1_clues + global.driving_2_clues + global.driving_3_clues +
				global.flying_1_clues + global.flying_2_clues + global.flying_3_clues;

var upgrade_count = global.upgrade_wrang_health + global.upgrade_wrang_damage + global.upgrade_wrang_count +
				global.upgrade_mobile_health + global.upgrade_mobile_boost + global.upgrade_mobile_speed +
				global.upgrade_wing_health + global.upgrade_wing_damage + global.upgrade_wing_speed;
				

// SET UPGRADE POINTS CALC
global.upgrade_points = clue_count - upgrade_count;



if ((room == rm_SaveFiles || room == rm_Title) && debug) {
	instance_deactivate_all(true);	
} else if ((room == rm_SaveFiles || room == rm_Title) && !debug) {
	instance_activate_all();	
} 
if (debug) {
    if (keyboard_check_pressed(vk_backspace)) {
        input_text = string_copy(input_text, 1, string_length(input_text) - 1);
    } else if (keyboard_check_pressed(vk_enter)) {
        if (os_type == os_gxgames) check_debug_command(string_lower(input_text));
		else check_debug_command(input_text);
        input_text = "";
		keyboard_string = "";
    } else {
        var key = keyboard_string;
        input_text = key;
    }
}

function check_debug_command(cmd) {
	
	//show_message(string(os_type == os_gxgames) + " " + string(os_type == os_windows) + " " + string(cmd));
	
	// show_message(cmd);
	
	// Save Game
    if (cmd == "save") {
        scr_save_game()
        output_text = "Game Saved: " + string(global.timestamp);
    } 
	
	// Quit Game
	else if (cmd == "quit") {
		game_end();	
	}
	
	// Windows - Cutscene Room Traversal
	else if (os_type == os_windows && string_pos("rm_Cutscene", cmd) > 0) {
		var obj = asset_get_index(cmd);
		if (room_exists(obj)) { 
			audio_stop_all();
			room_goto(obj);
		}
		else output_text = "Unknown Room"; 
	} 
	
	// Windows - Room Traversal
	else if (os_type == os_windows && string_pos("rm_", cmd) > 0) {
		var obj = asset_get_index(cmd);
		if (room_exists(obj)) room_goto(obj);
		else output_text = "Unknown Room";
	} 
	
	// GX Games - Cutscene Room Traversal
	else if (os_type == os_gxgames && string_pos("rm cutscene ", cmd) > 0) {
		var last_char = string_copy(cmd, string_length(cmd), 1);
		var obj = asset_get_index("rm_Cutscene_" + last_char);
		if (room_exists(obj)) { 
			audio_stop_all();
			room_goto(obj);
		}
		else output_text = "Unknown Room";
	} 
	
	// GX Games - Room Traversal
	else if (os_type == os_gxgames && string_pos("rm ", cmd) > 0) {
		
		for (var i = 0; i <= room_last; i++) {
			var room_name = room_get_name(i);
			var formatted_name = string_replace_all(string_lower(room_name), "_", " ");
			//show_message(formatted_name);
			if (formatted_name == cmd) {
				var obj = asset_get_index(room_name);
				if (room_exists(obj)) room_goto(obj);
			} 
		}
	} 
	
	// All Upgrades Set to 3/3
	else if (cmd == "upgrade 1") {
		global.upgrade_wrang_health = 3;
		global.upgrade_wrang_damage = 3;
		global.upgrade_wrang_count = 3;
		global.upgrade_mobile_health = 3;
		global.upgrade_mobile_boost = 3;
		global.upgrade_mobile_speed = 3;
		global.upgrade_wing_health = 3;
		global.upgrade_wing_damage = 3;
		global.upgrade_wing_speed = 3;
		output_text = "All Upgrades Set to 3/3";
		
	} 
	
	// All Upgrades Set to 0/3
	else if (cmd == "upgrade 0") {
		global.upgrade_wrang_health = 0;
		global.upgrade_wrang_damage = 0;
		global.upgrade_wrang_count = 0;
		global.upgrade_mobile_health = 0;
		global.upgrade_mobile_boost = 0;
		global.upgrade_mobile_speed = 0;
		global.upgrade_wing_health = 0;
		global.upgrade_wing_damage = 0;
		global.upgrade_wing_speed = 0;
		output_text = "All Upgrades Set to 0/3";
	} 
	
	// All Tutorials Complete
	else if (cmd == "tutorial 1") {
		global.tutorial_battle_complete = true;
		global.tutorial_driving_complete = true;
		global.tutorial_flying_complete = true;
		global.tutorial_decrypter_complete = true;
		output_text = "All Tutorials Complete";	
	} 
	
	// All Tutorials Incomplete
	else if (cmd == "tutorial 0") {
		global.tutorial_battle_complete = false;
		global.tutorial_driving_complete = false;
		global.tutorial_flying_complete = false;
		global.tutorial_decrypter_complete = false;
		output_text = "All Tutorials Incomplete";
	} 
	
	// All [5] B-Wrang Levels Complete
	else if (cmd == "wrang 1") {
		global.battle_level1_complete = true;
		global.battle_level2_complete = true;
		global.battle_level3_complete = true;
		global.battle_level4_complete = true;
		global.battle_level5_complete = true;
		
		global.battle_1_clues = 3;
		global.battle_2_clues = 3;
		global.battle_3_clues = 3;
		output_text = "All [5] B-Wrang Levels Complete";
	} 
	
	// All [5] B-Wrang Levels Incomplete
	else if (cmd == "wrang 0") {
		global.battle_level1_complete = false;
		global.battle_level2_complete = false;
		global.battle_level3_complete = false;
		global.battle_level4_complete = false;
		global.battle_level5_complete = false;
		
		global.battle_1_clues = 0;
		global.battle_2_clues = 0;
		global.battle_3_clues = 0;
		output_text = "All [5] B-Wrang Levels Incomplete";
	} 
	
	// All [4] B-Mobile Levels Incomplete
	else if (cmd == "mobile 0") {
		global.driving_level1_complete = false;
		global.driving_level2_complete = false;
		global.driving_level3_complete = false;
		global.driving_level4_complete = false;
		
		global.driving_1_clues = 0;
		global.driving_2_clues = 0;
		global.driving_3_clues = 0;
		output_text = "All [4] B-Mobile Levels Incomplete";
	} 
	
	// All [4] B-Mobile Levels Complete
	else if (cmd == "mobile 1") {
		global.driving_level1_complete = true;
		global.driving_level2_complete = true;
		global.driving_level3_complete = true;
		global.driving_level4_complete = true;
		
		global.driving_1_clues = 3;
		global.driving_2_clues = 3;
		global.driving_3_clues = 3;
		output_text = "All [4] B-Mobile Levels Complete";
	} 
	
	// All [4] B-Wing Levels Incomplete
	else if (cmd == "wing 0") {
		global.flying_level1_complete = false;
		global.flying_level2_complete = false;
		global.flying_level3_complete = false;
		global.flying_level4_complete = false;
		
		global.flying_1_clues = 0;
		global.flying_2_clues = 0;
		global.flying_3_clues = 0;
		output_text = "All [4] B-Wing Levels Incomplete";
	} 
	
	// All [4] B-Wing Levels Complete
	else if (cmd == "wing 1") {
		global.flying_level1_complete = true;
		global.flying_level2_complete = true;
		global.flying_level3_complete = true;
		global.flying_level4_complete = true;
		
		global.flying_1_clues = 3;
		global.flying_2_clues = 3;
		global.flying_3_clues = 3;
		output_text = "All [4] Bahamowing Levels Complete";
	} 
	
	// Sound Effects Off
	else if (cmd == "sfx 0") {
		global.sound_effects = false;
		output_text = "Sound Effects Off";
	} 
	
	// Sound Effects On
	else if (cmd == "sfx 1") {
		global.sound_effects = true;
		output_text = "Sound Effects On";
	} 
	
	// Music Off
	else if (cmd == "music 0") {
		global.sound_music = false;
		output_text = "Music Off";
	} 
	
	// Music On
	else if (cmd == "music 1") {
		global.sound_music = true;
		output_text = "Music On";
	} 
	
	// Stop ALL Sounds
	else if (cmd == "music 2" || cmd == "sfx 2") {
		audio_stop_all();	
	}
	
	// Fullscreen Off
	else if (cmd == "fullscreen 0") {
		global.fullscreen = false;
		window_set_fullscreen(false);
		output_text = "Fullscreen Off";
	} 
	
	// Fullscreen On
	else if (cmd == "fullscreen 1") {
		global.fullscreen = true;
		window_set_fullscreen(true);
		output_text = "Fullscreen On";
	} 
	
	// Upgrade Points and Clues Unlocked set to 0/27
	else if (cmd == "upgrade points 0") {
		global.upgrade_points = 0;
		global.clues_unlocked = [0, 
				0, 0, 0, 0, 0, 0, 0, 0, 0, 
				0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0];
		output_text = "Upgrade Points and Clues Unlocked set to 0/27";
	} 
	
	// Upgrade Points and Clues Unlocked set to 27/27
	else if (cmd == "upgrade points 1") {
		global.upgrade_points = 27;
		global.clues_unlocked = [1, 
				1, 1, 1, 1, 1, 1, 1, 1, 1, 
				1, 1, 1, 1, 1, 1, 1, 1, 1,
				1, 1, 1, 1, 1, 1, 1, 1, 1];
		output_text = "Upgrade Points and Clues Unlocked set to 27/27";
	} 
	
	// Mission Complete
	else if (cmd == "mission 1") {
		if (instance_exists(obj_bahaman) && room != rm_Battle5) {
			obj_bahaman.draw_mission_complete = true;
		} else if (instance_exists(obj_bahamobile) && room != rm_Road4) {
			obj_bahamobile.draw_mission_complete = true;	
		} else if (instance_exists(obj_bahamowing) && room != rm_Air4) {
			obj_bahamowing.draw_mission_complete = true;	
		} else if (instance_exists(obj_tutorial_bahamowrang_bahaman)) {
			obj_tutorial_bahamowrang_bahaman.draw_mission_complete = true;
		} else if (instance_exists(obj_upgrader_game)) {
			obj_upgrader_game.b_xp_ctr = 27;
			obj_upgrader_game.index = 4;
		} else if (instance_exists(obj_mech)) {
			global.battle_level5_complete = true;
			room_goto(rm_Cutscene_5);
		}
		
		if (room == rm_Air4) if (instance_exists(obj_cost_bubble)) obj_cost_bubble.hp = 0
		if (room == rm_Road4) if (instance_exists(obj_bahamobile)) obj_bahamobile.abt_hp = 0
		if (room == rm_Battle5) if (instance_exists(obj_bahaman)) obj_bahaman.juul_hp = 1;
	} 
	
	// Mission Failed
	else if (cmd == "mission 0") {
		if (instance_exists(obj_bahaman)) {
			obj_bahaman.draw_mission_failed = true;
		} else if (instance_exists(obj_bahamobile)) {
			obj_bahamobile.draw_mission_failed = true;	
		} else if (instance_exists(obj_bahamowing)) {
			obj_bahamowing.draw_mission_failed = true;	
		} else if (instance_exists(obj_tutorial_bahamowrang_bahaman)) {
			obj_tutorial_bahamowrang_bahaman.draw_mission_complete = true;
		} else if (instance_exists(obj_upgrader_game)) {
			obj_upgrader_game.b_xp_ctr = 0;
			obj_upgrader_game.index = 0;
		} else if (instance_exists(obj_mech)) {
			obj_mech.draw_mission_failed = true;	
		}
	}
	
	// Health Set to 10000
	else if (cmd == "health") {
		if (instance_exists(obj_bahaman)) {
			obj_bahaman.hp = 10000;
		} else if (instance_exists(obj_bahamobile)) {
			obj_bahamobile.hp = 10000;
		} else if (instance_exists(obj_bahamowing)) {
			obj_bahamowing.hp = 10000;
		} else if (instance_exists(obj_tutorial_bahamowrang_bahaman)) {
			obj_tutorial_bahamowrang_bahaman.hp = 10000;
		}
		output_text = "Health Set to 10000";
	}
	
	// Stamina/Boost Set to 10000
	else if (cmd == "boost" || cmd == "stamina") {
		if (instance_exists(obj_bahaman)) {
			obj_bahaman.stam = 10000;
		} else if (instance_exists(obj_bahamobile)) {
			obj_bahamobile.stam = 10000;
		} else if (instance_exists(obj_bahamowing)) {
			obj_bahamowing.stam = 10000;
		} else if (instance_exists(obj_tutorial_bahamowrang_bahaman)) {
			obj_tutorial_bahamowrang_bahaman.stam = 10000;
		}
		output_text = "Stamina Set to 10000";
	} 
	
	// B-Wrang Skip Wave
	else if (cmd == "skip wave") {
		if (room == rm_FinalBoss || room == rm_Battle0 || room == rm_Battle1 || room == rm_Battle2 || room == rm_Battle3 || room == rm_Battle4 || room == rm_Battle5) {
			with obj_juul_enemy {
				instance_destroy();	
			}
			output_text = "Wave Skipped";
		} else {
			output_text = "Cannot Execute - You must be in a bahamowrang level";
		}
	}
	
	
	// BONUS
	/*
	else if (cmd == "walter") {
		output_text = "uhhh... question. where can I put my comforter?";
	} else if (cmd == "bahamon") {
		output_text = "Hey Dr. Bahamon! :)";
	} else if (cmd == "lily") {
		output_text = "Join the IGDA!! OR ELSE!!! >:D";
	} else if (cmd == "abheek") {
		output_text = "*gets nearly attacked by a comforter* - also thanks for the game name :)";
	} else if (cmd == "hallie") {
		output_text = "oh, so this is the TA that keeps making the \"Fired Jokes\"... ";
	} */
	
	// Default
	else {
		output_text = "Unknown Command";	
	}
}