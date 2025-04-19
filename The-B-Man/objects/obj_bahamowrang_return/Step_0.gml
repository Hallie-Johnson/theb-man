/// @description Insert description here
// You can write your code in this editor


var player;

if (room == rm_FinalBoss) {
	player = instance_nearest(x, y, obj_mech);
	//if (image_xscale > 0) image_xscale -= 0.005;
	//if (image_yscale > 0) image_yscale -= 0.005;
}
else if (room != rm_Battle0)
	player = instance_nearest(x, y, obj_bahaman);
else 
	player = instance_nearest(x, y, obj_tutorial_bahamowrang_bahaman);

// Calculate the direction towards the player
direction = point_direction(x, y, player.x, player.y);

// Calculate the movement vector
var moveX = lengthdir_x(moveSpeed, direction);
var moveY = lengthdir_y(moveSpeed, direction);

// Move towards the player
x += moveX;
y += moveY;


// Update the image angle to create the spinning effect
image_angle += 10;
