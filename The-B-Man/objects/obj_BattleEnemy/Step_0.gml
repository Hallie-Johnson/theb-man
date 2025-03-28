/// @description Insert description here
// You can write your code in this editor

#region Enemy Faces Player

angle = point_direction(x, y, Battle_Bahaman.x, Battle_Bahaman.y);
angleDifference = angle_difference(angle, Battle_Bahaman.image_angle);
behindPlayer = abs(angleDifference) <= 90;

if (behindPlayer) {
	image_xscale = -1;
}
else {
	image_xscale = 1;
}

#endregion

#region Enemy Moves Towards Player + Collison

var player = instance_nearest(x, y, Battle_Bahaman);
direction = point_direction(x, y, player.x, player.y);

// Calculate the potential new position
var moveX = lengthdir_x(move_speed, direction);
var moveY = lengthdir_y(move_speed, direction);
var new_x = x + moveX;
var new_y = y + moveY;

// Check if the new position would collide with another enemy
if (!place_meeting(new_x, new_y, obj_BattleEnemy)) {
    // Move the enemy if there's no collision
    x = new_x;
    y = new_y;
} else {
    // Handle collision: Bounce away

    // Get the instance that is being collided with
    var other_enemy = instance_place(new_x, new_y, obj_BattleEnemy);

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
}

#endregion

#region Health Management

if (hp < 0) {
    //instance_create_layer(x + 500, Battle_Bahaman.y, "Instances_1", obj_BattleEnemy);
    instance_destroy();
	Battle_Bahaman.enemy_ctr++;
}

#endregion

#region Depth Management

if (y > Battle_Bahaman.y) {
    depth = Battle_Bahaman.depth - 1; // Behind the player
} else {
    depth = Battle_Bahaman.depth + 1; // In front of the player
}

depth = -y;

#endregion

