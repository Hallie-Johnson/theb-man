/// @description Insert description here
// You can write your code in this editor

var x_offset = 5;

image_angle = clamp(image_angle, 0, 360);

if (instance_exists(obj_mech) && instance_exists(obj_jester_body)) {
	var player = instance_nearest(x, y, obj_mech);
	
	// If a player is found, calculate the angle between the bullet and the player
	if (player != noone) {
	    var angle_to_player = point_direction(x, y, player.x, player.y);
	    image_angle = angle_to_player + 90; // Rotate the bullet to face the player
		if (image_angle > 180 && image_angle < 360) {
			image_xscale = 1;	
			obj_jester_body.image_xscale = 1;
			x_offset = 6;
		} else {
			image_xscale = -1;
			obj_jester_body.image_xscale = -1;
			x_offset = -6;
		}
	}
}

//show_debug_message(string(image_angle));

if (instance_exists(obj_jester_body)) {
	x = obj_jester_body.x + x_offset;
	y = obj_jester_body.y + 2;
}

if (instance_exists(obj_mech)) {

	if (canShoot) {
		canShoot = false;
		if (bullets > 1) alarm[0] = 10;
		else alarm[0] = 60;
		
		var view_x = camera_get_view_x(view_camera[0]);
		var view_width = camera_get_view_width(view_camera[0]);
			
		if (!global.paused) {
			bullets--;
			var bullet = instance_create_layer(x, y - 1, "Instances", obj_jester_bullet);
			bullet.direction = point_direction(x, y, obj_mech.x, obj_mech.y);
		}
	
	}
		
} 