/// @description Insert description here
// You can write your code in this editor


direction = point_direction(x, y, target_x, target_y);

// Distance to target
distance_to_target = point_distance(x, y, target_x, target_y);

// Calculate the movement vector
var moveX = lengthdir_x(moveSpeed, direction);
var moveY = lengthdir_y(moveSpeed, direction);

// Move towards the player
x += moveX;
y += moveY;

if (distance_to_target <= 5) {
	moveSpeed = 0
	
	if (alarm[0] < 0) alarm[0] = 10
}

// Update the image angle to create the spinning effect
if (if_thrown) {
    image_angle += 10;
    image_angle = image_angle mod 360;
} else {
	if (image_angle != 0) {
		image_angle += 10;
		image_angle = image_angle mod 360;
	} else {
		image_angle = 0;	
	}
	
	time += 0.1; // Slower bobbing
	y = target_y + sin(time) * 3; // Bob up and down by 2 units

}


