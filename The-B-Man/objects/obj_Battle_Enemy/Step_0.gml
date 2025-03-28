/// @description Insert description here
// You can write your code in this editor

#region Enemy Faces Player

angle = point_direction(x, y, obj_Battle_Bahaman.x, obj_Battle_Bahaman.y);
angleDifference = angle_difference(angle, obj_Battle_Bahaman.image_angle);
behindPlayer = abs(angleDifference) <= 90;

if (behindPlayer) {
	image_xscale = -1;
}
else {
	image_xscale = 1;
}

#endregion

#region Enemy Moves Towards Player + Collison

var player = instance_nearest(x, y, obj_Battle_Bahaman);
direction = point_direction(x, y, player.x, player.y);

// Calculate the potential new position
var moveX = lengthdir_x(move_speed, direction);
var moveY = lengthdir_y(move_speed, direction);
var new_x = x + moveX;
var new_y = y + moveY;

// Check if the new position would collide with another enemy
if (!place_meeting(new_x, new_y, obj_Battle_Enemy)) {
    // Move the enemy if there's no collision
    x = new_x;
    y = new_y;
} else {
    // Handle collision: Bounce away

    // Get the instance that is being collided with
    var other_enemy = instance_place(new_x, new_y, obj_Battle_Enemy);

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

/*
// Check if the new position would collide with another enemy
if (!place_meeting(new_x, new_y, obj_wall)) {
    // Move the enemy if there's no collision
    x = new_x;
    y = new_y;
} else {
    // Handle collision: Bounce away

    // Get the instance that is being collided with
    var other_enemy = instance_place(new_x, new_y, obj_wall);

    if (other_enemy != noone) {
        // Calculate direction away from the collided enemy
        var bounce_direction = point_direction(other_enemy.x, other_enemy.y, x, y);

        // Set the new direction to the bounce direction
        direction = bounce_direction;

        // Move the enemy in the bounce direction
        x += lengthdir_x(0.5, direction);
        y += lengthdir_y(0.5, direction);
    }
} */

#endregion

#region Health Management

if (hp < 0) {
    //instance_create_layer(x + 500, Battle_Bahaman.y, "Instances_1", obj_BattleEnemy);
    instance_destroy();
	obj_Battle_Bahaman.enemy_ctr++;
	//instance_create_layer(x, y, "Instances", obj_bahamowrang_clue);
}

#endregion

#region Depth Management

if (y > obj_Battle_Bahaman.y) {
    depth = obj_Battle_Bahaman.depth - 1; // Behind the player
} else {
    depth = obj_Battle_Bahaman.depth + 1; // In front of the player
}

depth = -y;

#endregion

#region Stay in Viewport



// Boundary check logic
var view_left = camera_get_view_x(view_camera[0]);
var view_top = camera_get_view_y(view_camera[0]);
var view_right = view_left + camera_get_view_width(view_camera[0]);
var view_bottom = view_top + camera_get_view_height(view_camera[0]);

// Check if the current sprite animation is spr_Enemy_Poof_1 and if it's finished
if (sprite_index == spr_enemy_poof_1 && image_index >= image_number - 1) {
    // Reset the object's position to the center of the screen
    //x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2;
    //y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2;
	
	x = irandom_range(view_left, view_right - sprite_width);
    y = irandom_range(view_top + 25, view_bottom - sprite_height - 25);

    // Optionally, change the sprite to something else or reset the animation
    sprite_index = enemy_sprite; // Replace with a default sprite
    image_index = 0; // Reset animation frame to start
}

if (x < view_left - sprite_width/2) {
    sprite_index = spr_enemy_poof_1;
} else if (x > view_right - sprite_width/2) {
    sprite_index = spr_enemy_poof_1;
}

if (y < view_top) {
    sprite_index = spr_enemy_poof_1;
} else if (y > view_bottom - sprite_height) {
    sprite_index = spr_enemy_poof_1;
}
	
	// Alarm event to re-enable damage
if (alarm[1] == 0) {
    can_take_damage = true;
}


#endregion


if (obj_Battle_Bahaman.disable_movement) {
	move_speed = 0;
}