/// @description Insert description here
// You can write your code in this editor

// List of enemy objects
var enemy_list = [obj_title_juul_fighter, obj_title_juul_ranged, obj_title_juul_tank];

// Select a random enemy
var enemy_type = enemy_list[irandom(3 - 1)];

// Spawn the enemy at a random horizontal position above the screen
var x_pos = irandom_range(0, room_width);
var y_pos = -sprite_height; // Just above the top of the screen
var enemy = instance_create_layer(x_pos, y_pos, "Objects", enemy_type);
enemy.depth = 750;

// Reset the alarm for the next spawn
alarm[0] = irandom_range(5 * 30, 15 * 30); // Random time between 5-15 seconds
