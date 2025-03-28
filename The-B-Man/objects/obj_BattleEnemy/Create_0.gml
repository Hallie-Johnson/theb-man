/// @description Insert description here
// You can write your code in this editor

angle = 0
angleDifference = 0
behindPlayer = false

knockback_effect = 10
bahamarang_hit = false


if (enemy_type == 1) {
	// Ranged
	hp = 1500
	max_hp = 1500
	max_move_speed = 0.05;
	move_speed = max_move_speed;
	hit_cooldown = 120;
	
} else if (enemy_type == 2) {
	// Tank
	hp = 2000
	max_hp = 2000
	max_move_speed = 0.25;
	move_speed = max_move_speed;
	hit_cooldown = 60;
	
} else {
	// Fighter
	hp = 1000
	max_hp = 1000
	max_move_speed = 0.75;
	move_speed = max_move_speed;
	hit_cooldown = 180;
	
}