/// @description Insert description here
// You can write your code in this editor

#region Match Player Angle Variables

angle = 0
angleDifference = 0
behindPlayer = false

#endregion

#region Knockback and Hits

knockback_effect = 25
bahamarang_hit = false

#endregion

#region Enemy Types Stats

if (enemy_type == 1) {
	// Ranged
	hp = 750
	max_hp = 750
	max_move_speed = 0.05;
	move_speed = max_move_speed;
	hit_cooldown = 60;
	
} else if (enemy_type == 2) {
	// Tank
	hp = 2000
	max_hp = 2000
	max_move_speed = 0.25;
	move_speed = max_move_speed;
	hit_cooldown = 30;
	
} else {
	// Fighter
	hp = 1000
	max_hp = 1000
	max_move_speed = 0.5;
	move_speed = max_move_speed;
	hit_cooldown = 90;
	
}

#endregion