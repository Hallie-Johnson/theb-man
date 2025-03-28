/// @description Insert description here
// You can write your code in this editor


var player = instance_nearest(x, y, Battle_Bahaman);

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
