/// @description Insert description here
// You can write your code in this editor


if (global.paused) {
	speed = 0;
} else {
	speed = og_speed;	
}


if (instance_exists(obj_bahamowing)) {
    // Calculate distance between enemy and player
    var dist_to_player = point_distance(x, y, obj_bahamowing.x, obj_bahamowing.y);
    
    if (dist_to_player <= 150) {
        // Player is within 50 pixels
        
		if (canShoot && obj_bahamowing.disable_movement == false) {
			canShoot = false;
			alarm[0] = 25;
	
			var view_x = camera_get_view_x(view_camera[0]);
			var view_width = camera_get_view_width(view_camera[0]);
			
			if (!global.paused) {
				var bullet = instance_create_layer(x, y, "Instances", obj_cost_bullet);
				bullet.direction = point_direction(x, y, obj_bahamowing.x, obj_bahamowing.y);
			}
	
		}
		
    } else {
        // Player is outside of 50 pixels
        
    }
}

if (obj_bahamowing.disable_movement == true) {
	speed = 0;
}