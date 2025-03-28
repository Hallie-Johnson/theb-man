/// @description Insert description here
// You can write your code in this editor

// Step Event
if (position_meeting(mouse_x, mouse_y, id)) {
    // Mouse is hovering
    if (!clicked) image_index = 0;
} else {
    // Mouse is not hovering
    if (!clicked) image_index = 1;
}

if (clicked = false) {
if (mouse_check_button_pressed(mb_left)) { 
	if (position_meeting(mouse_x, mouse_y, id)) { 
		clicked = true;
		if (global.correct_answer == "b") {
			image_index = 3;
			instance_create_layer(x, y, "Save", obj_Save);
			if (global.sound_effects && layer_get_visible("Display")) audio_play_sound(snd_sfx_answer_correct, 1, false);
			
			if (obj_clue_manager.selected_clue == 1) {
				obj_clue1.complete = true;
				global.upgrade_points++;
			} else if (obj_clue_manager.selected_clue == 2) {
				obj_clue2.complete = true;	
				global.upgrade_points++;
			} else if (obj_clue_manager.selected_clue == 3) {
				obj_clue3.complete = true;	
				global.upgrade_points++;
			} else if (obj_clue_manager.selected_clue == 4) {
				obj_clue4.complete = true;	
				global.upgrade_points++;
			} else if (obj_clue_manager.selected_clue == 5) {
				obj_clue5.complete = true;	
				global.upgrade_points++;
			} else if (obj_clue_manager.selected_clue == 6) {
				obj_clue6.complete = true;	
				global.upgrade_points++;
			} else if (obj_clue_manager.selected_clue == 7) {
				obj_clue7.complete = true;	
				global.upgrade_points++;
			} else if (obj_clue_manager.selected_clue == 8) {
				obj_clue8.complete = true;	
				global.upgrade_points++;
			} else if (obj_clue_manager.selected_clue == 9) {
				obj_clue9.complete = true;	
				global.upgrade_points++;
			}
			
		} else {
			image_index = 2;
			if (global.sound_effects && layer_get_visible("Display")) audio_play_sound(snd_sfx_answer_incorrect, 1, false);
		}
	} 
}
}