/// @description Insert description here
// You can write your code in this editor

arrow_sprite = spr_arrow // Assign the arrow sprite here

/*
// Assuming obj_player is the player object
if (instance_exists(obj_bahamowing)) {
    var player_x = obj_bahamowing.x;

    if (!global.paused && player_x > x) {
        // Player is to the right
        speed = 2;
		image_angle = -10;
    } else if (!global.paused && player_x < x) {
        // Player is to the left
        speed = -2;
		image_angle = 10;
    } else {
		speed = 0;
	}
} */

speed = -2;
image_angle = 10;

og_speed = speed;


view_x = camera_get_view_x(view_camera[0]);
view_y = camera_get_view_y(view_camera[0]);
view_width = camera_get_view_width(view_camera[0]);
view_height = camera_get_view_height(view_camera[0]);


canShoot = true;

max_hp = 100;
hp = max_hp;