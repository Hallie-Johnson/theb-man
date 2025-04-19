/// @description Insert description here
// You can write your code in this editor

event_inherited();


// Count down the fire timer
fire_timer -= 1;

var dist_to_player = 0;

if (instance_exists(obj_bahaman)) dist_to_player = point_distance(x, y, obj_bahaman.x, obj_bahaman.y);
if (instance_exists(obj_mech)) dist_to_player = point_distance(x, y, obj_mech.x, obj_mech.y);
if (instance_exists(obj_tutorial_bahamowrang_bahaman)) dist_to_player = point_distance(x, y, obj_tutorial_bahamowrang_bahaman.x, obj_tutorial_bahamowrang_bahaman.y);

if (fire_timer <= 0 && dist_to_player <= 200) {
    // Reset the timer
    fire_timer = fire_rate;

    // Stop drawing the line
    draw_line_flag = false;

    // Find the player position
    if (instance_exists(obj_bahaman)) var player = instance_nearest(x, y, obj_bahaman);
	else  var player = instance_nearest(x, y, obj_tutorial_bahamowrang_bahaman);

    if (player != noone) {
        // Calculate direction to the player
        var direction_to_player = point_direction(x, y, player.x, player.y);

        // Create a bullet aimed at the player
        var bullet = instance_create_layer(x, y, "Instances", obj_juul_bullet);
        
        // Set bullet's direction and speed
        bullet.direction = direction_to_player;
        bullet.speed = bullet_speed;
		fade_alpha = 0;
    }
}

// Start drawing the line on the third second
if (fire_timer <= draw_line_timer) {
    draw_line_flag = true; // Start drawing the line at the 3rd second
}
