/// @description Insert description here
// You can write your code in this editor

if (hp <= 0) {
	instance_create_layer(x, y, "Instances", obj_juul_enemy_poof);
	
	// Generate a random number between 0 and 100
	var spawn_chance = random(100);

	// 20% chance for a Boost Powerup
	if (spawn_chance < 20) {
		//instance_create_layer(x, y, "Instances", obj_Powerup_Boost);
	}
	// 20% chance for a Health Powerup
	else if (spawn_chance < 40) {
		//instance_create_layer(x, y, "Instances", obj_Powerup_Health);
	}
	// 30% chance for a Clue Pickup
	else if (spawn_chance < 70) {
	
		if (room == rm_Battle1) {
			if (global.battle_1_clues < 3) {
				instance_create_layer(x, y, "Instances", obj_bahamowrang_clue);
			}
		} else if (room == rm_Battle2) {
			if (global.battle_2_clues < 3) {
				instance_create_layer(x, y, "Instances", obj_bahamowrang_clue);
			}
		} else if (room == rm_Battle3) {
			if (global.battle_3_clues < 3) {
				instance_create_layer(x, y, "Instances", obj_bahamowrang_clue);
			}
		}
	
	}
	
	
	instance_destroy();
	
}
	
	
#region Enemy Moves Towards Player + Collison

if (!global.paused) {
	
if (place_meeting(x, y, obj_block)) {
	y -= 1;
}

var player;

if (instance_exists(obj_mech)) player = instance_nearest(x, y, obj_mech);	
else if (instance_exists(obj_bahaman)) player = instance_nearest(x, y, obj_bahaman);
else if (instance_exists(obj_tutorial_bahamowrang_bahaman)) player = instance_nearest(x, y, obj_tutorial_bahamowrang_bahaman);
	
direction = point_direction(x, y, player.x, player.y);

// Calculate the potential new position
var moveX = lengthdir_x(move_speed, direction);
var moveY = lengthdir_y(move_speed, direction);
var new_x = x + moveX;
var new_y = y + moveY;

// Check if the new position would collide with another enemy
if (!place_meeting(new_x, new_y, obj_juul_enemy)) {
    // Move the enemy if there's no collision
	
	var dist_to_player = 0;
	
	if (instance_exists(obj_bahaman)) dist_to_player = point_distance(x, y, obj_bahaman.x, obj_bahaman.y);
	else if (instance_exists(obj_mech)) dist_to_player = point_distance(x, y, obj_mech.x, obj_mech.y);
	else if (instance_exists(obj_tutorial_bahamowrang_bahaman)) dist_to_player = point_distance(x, y, obj_tutorial_bahamowrang_bahaman.x, obj_tutorial_bahamowrang_bahaman.y);

	if ((!instance_exists(obj_mech) && dist_to_player <= 200) || (instance_exists(obj_mech) && dist_to_player <= 500)) {
		if (!place_meeting(x, y + 16, obj_block)) {
			x = new_x;
			y = new_y;
		}
	} else {
		if (!place_meeting(x, y + 16, obj_block)) {
			moveY = lengthdir_y(move_speed * 2, direction);
			new_y = y + moveY;
			y = new_y;
		}
	}
	
} else {
    // Handle collision: Bounce away

    // Get the instance that is being collided with
    var other_enemy = instance_place(new_x, new_y, obj_juul_enemy);

    if (other_enemy != noone) {
        // Calculate direction away from the collided enemy
        var bounce_direction = point_direction(other_enemy.x, other_enemy.y, x, y);

        // Set the new direction to the bounce direction
        direction = bounce_direction;

        // Move the enemy in the bounce direction
        x += lengthdir_x(0.5, direction);
        y += lengthdir_y(0.5, direction);
    }
}

}

x = clamp(x, 50, room_width - 50);
