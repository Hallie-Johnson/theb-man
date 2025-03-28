/// @description Insert description here
// You can write your code in this editor

// Gradually move towards the target position using linear interpolation (lerp)
x = lerp(x, target_x, move_speed);
y = lerp(y, target_y, move_speed);

// Optionally, stop moving once the target position is reached
if (point_distance(x, y, target_x, target_y) < 1) {
    // Stop movement (or snap to the target position if close enough)
    x = target_x;
    y = target_y;
}


if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))) {
	level_select++;
	if (level_select > 2) {
		level_select = 0;
	}
	target_x = x_pos[level_select];
	target_y = y_pos[level_select];
} else if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))) {
	level_select--;
	if (level_select < 0) {
		level_select = 2;
	}
	target_x = x_pos[level_select];
	target_y = y_pos[level_select];
}

if (obj_missions_bahamowrang.clicked == true) {
	
	clue_ctr++;
	
	if (clue_ctr == 1) {
		if (global.battle_level1_complete) instance_create_layer(room_width/2 - 500, room_height/2 + 125, "Instances", obj_check)
		if (global.battle_level2_complete) instance_create_layer(room_width/2, room_height/2 + 125, "Instances", obj_check)
		if (global.battle_level3_complete) instance_create_layer(room_width/2 + 500, room_height/2 + 125, "Instances", obj_check)
		
		var clue_1 = instance_create_layer(room_width/2 - 500, room_height/2 + 125, "Instances", obj_missions_clue_counter)
		clue_1.clue_num = string(global.battle_1_clues) + "/3";
		var clue_2 = instance_create_layer(room_width/2, room_height/2 + 125, "Instances", obj_missions_clue_counter)
		clue_2.clue_num = string(global.battle_2_clues) + "/3";
		var clue_3 = instance_create_layer(room_width/2 + 500, room_height/2 + 125, "Instances", obj_missions_clue_counter)
		clue_3.clue_num = string(global.battle_3_clues) + "/3";
	}
	
	
	if (keyboard_check_pressed(vk_space)) {
		if (level_select == 0) {
			instance_create_layer(0, 0, "Instances", obj_RoomTransition);
			obj_RoomTransition.target_room = rm_Pre_Battle1;
		} else if (level_select == 1) {
			instance_create_layer(0, 0, "Instances", obj_RoomTransition);
			obj_RoomTransition.target_room = rm_Pre_Battle2;
		} else {
			instance_create_layer(0, 0, "Instances", obj_RoomTransition);
			obj_RoomTransition.target_room = rm_Pre_Battle3;
		}
	}
} else if (obj_missions_bahamobile.clicked == true) {
	
	clue_ctr++;
	
	if (clue_ctr == 1) {
		if (global.driving_level1_complete) instance_create_layer(room_width/2 - 500, room_height/2 + 125, "Instances", obj_check)
		if (global.driving_level2_complete) instance_create_layer(room_width/2, room_height/2 + 125, "Instances", obj_check)
		if (global.driving_level3_complete) instance_create_layer(room_width/2 + 500, room_height/2 + 125, "Instances", obj_check)
		
		var clue_1 = instance_create_layer(room_width/2 - 500, room_height/2 + 125, "Instances", obj_missions_clue_counter)
		clue_1.clue_num = string(global.driving_1_clues) + "/3";
		var clue_2 = instance_create_layer(room_width/2, room_height/2 + 125, "Instances", obj_missions_clue_counter)
		clue_2.clue_num = string(global.driving_2_clues) + "/3";
		var clue_3 = instance_create_layer(room_width/2 + 500, room_height/2 + 125, "Instances", obj_missions_clue_counter)
		clue_3.clue_num = string(global.driving_3_clues) + "/3";
	}
	
	if (keyboard_check_pressed(vk_space)) {
		if (level_select == 0) {
			instance_create_layer(0, 0, "Instances", obj_RoomTransition);
			obj_RoomTransition.target_room = rm_Pre_Road1;
		} else if (level_select == 1) {
			instance_create_layer(0, 0, "Instances", obj_RoomTransition);
			obj_RoomTransition.target_room = rm_Pre_Road2;
		} else {
			instance_create_layer(0, 0, "Instances", obj_RoomTransition);
			obj_RoomTransition.target_room = rm_Pre_Road3;	
		}
	}
} else if (obj_missions_bahamowing.clicked == true) {
	
	clue_ctr++;
	
	if (clue_ctr == 1) {
		if (global.flying_level1_complete) instance_create_layer(room_width/2 - 500, room_height/2 + 125, "Instances", obj_check)
		if (global.flying_level2_complete) instance_create_layer(room_width/2, room_height/2 + 125, "Instances", obj_check)
		if (global.flying_level3_complete) instance_create_layer(room_width/2 + 500, room_height/2 + 125, "Instances", obj_check)
		
		var clue_1 = instance_create_layer(room_width/2 - 500, room_height/2 + 125, "Instances", obj_missions_clue_counter)
		clue_1.clue_num = string(global.flying_1_clues) + "/3";
		var clue_2 = instance_create_layer(room_width/2, room_height/2 + 125, "Instances", obj_missions_clue_counter)
		clue_2.clue_num = string(global.flying_2_clues) + "/3";
		var clue_3 = instance_create_layer(room_width/2 + 500, room_height/2 + 125, "Instances", obj_missions_clue_counter)
		clue_3.clue_num = string(global.flying_3_clues) + "/3";
	}
	
	if (keyboard_check_pressed(vk_space)) {
		if (level_select == 0) {
			instance_create_layer(0, 0, "Instances", obj_RoomTransition);
			obj_RoomTransition.target_room = rm_Pre_Air1;
		} else if (level_select == 1) {
			instance_create_layer(0, 0, "Instances", obj_RoomTransition);
			obj_RoomTransition.target_room = rm_Pre_Air2;
		} else {
			instance_create_layer(0, 0, "Instances", obj_RoomTransition);
			obj_RoomTransition.target_room = rm_Pre_Air3;
		}
	}
} 

if (keyboard_check_pressed(vk_shift)) {	
	with (obj_check) {
	 instance_destroy();
	}
	
	with (obj_missions_clue_counter) {
	 instance_destroy();
	}
	
	clue_ctr = 0;
}