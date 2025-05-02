/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_upgrade_arrow_left) && instance_exists(obj_upgrade_arrow_right)) {
	left_move = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A")) || obj_upgrade_arrow_left.clicked;
	right_move = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D")) || obj_upgrade_arrow_right.clicked;
}

var exit_move = keyboard_check(vk_shift);
var enter_move = keyboard_check(vk_space);

if ((left_move || right_move)) {
    // Update the current upgrade index based on direction
    current_upgrade_index = clamp(current_upgrade_index + (right_move - left_move), 0, array_length(upgrade_objects) - 1);

	if (instance_exists(obj_upgrade_arrow_left) && instance_exists(obj_upgrade_arrow_right)) {
		obj_upgrade_arrow_left.clicked = false;
		obj_upgrade_arrow_right.clicked = false;
	}

    // Update target positions for objects
    for (var i = 0; i < array_length(upgrade_objects); i++) {
        if (i < current_upgrade_index) {
            upgrade_objects[i].target_x = upgrade_x_positions[0]; // Off-screen left
        } else if (i == current_upgrade_index) {
            upgrade_objects[i].target_x = upgrade_x_positions[1]; // Center
        } else {
            upgrade_objects[i].target_x = upgrade_x_positions[2]; // Off-screen right
        }
    }
}

// Smoothly move objects toward their target positions
for (var i = 0; i < array_length(upgrade_objects); i++) {
    upgrade_objects[i].x = lerp(upgrade_objects[i].x, upgrade_objects[i].target_x, 0.1); // Adjust the 0.1 for speed
}

