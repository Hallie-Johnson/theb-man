/// @description Insert description here
// You can write your code in this editor

if (enemy_timer > -1) enemy_timer--;

if (enemy_timer % 5 == 0 && instance_number(obj_juul_enemy) < enemies_to_spawn) {
	/// Room boundaries to prevent spawning outside
	var spawn_margin = 50; // Margin from edges to avoid out-of-bound issues

	var spawn_x = irandom_range(150, room_width - 150);
	var spawn_y = irandom_range(0, -50);
			
	var enemy = irandom_range(1, 3);
	var enemy_type = undefined;
			
	if (enemy == 1) enemy_type = obj_juul_enemy_fighter;
	else if (enemy == 2) enemy_type = obj_juul_enemy_ranged;
	else enemy_type = obj_juul_enemy_tank;
	
	instance_create_layer(spawn_x, spawn_y, "Instances", enemy_type);
	
}