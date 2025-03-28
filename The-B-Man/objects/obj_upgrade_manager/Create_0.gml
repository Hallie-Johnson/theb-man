/// @description Insert description here
// You can write your code in this editor

current_upgrade_index = 0;
upgrade_objects = [obj_upgrade_clues, obj_upgrade_bahamowrang, obj_upgrade_bahamobile, obj_upgrade_bahamowing];

upgrade_x_positions = [-1000, room_width / 2, room_width + 1000];

// Set initial positions and target positions
for (var i = 0; i < array_length(upgrade_objects); i++) {
    upgrade_objects[i].x = upgrade_x_positions[i == current_upgrade_index ? 1 : 2];
    upgrade_objects[i].target_x = upgrade_objects[i].x; // Add a target_x property
}
