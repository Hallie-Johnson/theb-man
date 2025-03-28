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

if (keyboard_check_pressed(vk_end)) {
	global.battle_level1_complete = true;
	global.battle_level2_complete = true;
	global.battle_level3_complete = true;
	
	global.driving_level1_complete = true;
	global.driving_level2_complete = true;
	global.driving_level3_complete = true;
	
	global.flying_level1_complete = true;
	global.flying_level2_complete = true;
	global.flying_level3_complete = true;
}

if (obj_Map1.visible == true) {
	
	if (global.battle_level1_complete) instance_create_layer(room_width/2 - 500, room_height/2 + 125, "Instances", obj_check)
	if (global.driving_level1_complete) instance_create_layer(room_width/2, room_height/2 + 125, "Instances", obj_check)
	if (global.flying_level1_complete) instance_create_layer(room_width/2 + 500, room_height/2 + 125, "Instances", obj_check)
	
	if (keyboard_check_pressed(vk_space)) {
		if (level_select == 0) {
			instance_create_layer(0, 0, "Instances", obj_RoomTransition);
			obj_RoomTransition.target_room = rm_Battle1;
		} else if (level_select == 1) {
			instance_create_layer(0, 0, "Instances", obj_RoomTransition);
			obj_RoomTransition.target_room = rm_Road1;
		} else {
			instance_create_layer(0, 0, "Instances", obj_RoomTransition);
			obj_RoomTransition.target_room = rm_Air1;
		}
	}
} else if (obj_Map2.visible == true) {
	
	if (global.battle_level2_complete) instance_create_layer(room_width/2 - 500, room_height/2 + 125, "Instances", obj_check)
	if (global.driving_level2_complete) instance_create_layer(room_width/2, room_height/2 + 125, "Instances", obj_check)
	if (global.flying_level2_complete) instance_create_layer(room_width/2 + 500, room_height/2 + 125, "Instances", obj_check)
	
	if (keyboard_check_pressed(vk_space)) {
		if (level_select == 0) {
			instance_create_layer(0, 0, "Instances", obj_RoomTransition);
			obj_RoomTransition.target_room = rm_Battle2;
		} else if (level_select == 1) {
			instance_create_layer(0, 0, "Instances", obj_RoomTransition);
			obj_RoomTransition.target_room = rm_Road2;
		} else {
			instance_create_layer(0, 0, "Instances", obj_RoomTransition);
			obj_RoomTransition.target_room = rm_Air2;	
		}
	}
} else if (obj_Map3.visible == true) {
	
	if (global.battle_level3_complete) instance_create_layer(room_width/2 - 500, room_height/2 + 125, "Instances", obj_check)
	if (global.driving_level3_complete) instance_create_layer(room_width/2, room_height/2 + 125, "Instances", obj_check)
	if (global.flying_level3_complete) instance_create_layer(room_width/2 + 500, room_height/2 + 125, "Instances", obj_check)
	
	if (keyboard_check_pressed(vk_space)) {
		if (level_select == 0) {
			instance_create_layer(0, 0, "Instances", obj_RoomTransition);
			obj_RoomTransition.target_room = rm_Battle3;
		} else if (level_select == 1) {
			instance_create_layer(0, 0, "Instances", obj_RoomTransition);
			obj_RoomTransition.target_room = rm_Road3;
		} else {
			instance_create_layer(0, 0, "Instances", obj_RoomTransition);
			obj_RoomTransition.target_room = rm_Air3;
		}
	}
}

if (keyboard_check_pressed(vk_shift)) {
	obj_Map1.selected = false;
	obj_Map2.selected = false;
	obj_Map3.selected = false;
	
	with (obj_check) {
	 instance_destroy();
	}
}