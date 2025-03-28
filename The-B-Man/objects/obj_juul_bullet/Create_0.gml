/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_bahaman)) {
	var player = instance_nearest(x, y, obj_bahaman);

// If a player is found, calculate the angle between the bullet and the player
if (player != noone) {
    var angle_to_player = point_direction(x, y, player.x, player.y);
    image_angle = angle_to_player; // Rotate the bullet to face the player
}
} else {
	var player = instance_nearest(x, y, obj_tutorial_bahamowrang_bahaman);

// If a player is found, calculate the angle between the bullet and the player
if (player != noone) {
    var angle_to_player = point_direction(x, y, player.x, player.y);
    image_angle = angle_to_player; // Rotate the bullet to face the player
}
}

