/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var dist_to_player = 0;


if (instance_exists(obj_bahaman)) dist_to_player = point_distance(x, y, obj_bahaman.x, obj_bahaman.y);
else if (instance_exists(obj_mech))  dist_to_player = point_distance(x, y, obj_mech.x, obj_mech.y);
else if (instance_exists(obj_tutorial_bahamowrang_bahaman)) dist_to_player = point_distance(x, y, obj_tutorial_bahamowrang_bahaman.x, obj_tutorial_bahamowrang_bahaman.y);

if (draw_line_flag && dist_to_player <= 200) {
    // Gradually increase the alpha for fade-in effect
    fade_alpha += fade_speed; // Increase alpha
    fade_alpha = clamp(fade_alpha, 0, 1); // Clamp to the range [0, 1]

    draw_set_color(c_lime);
    draw_set_alpha(fade_alpha); // Use the fading alpha

    // Find the player
    var player;
	
	if (instance_exists(obj_bahaman)) player = instance_nearest(x, y, obj_bahaman);
	else if (instance_exists(obj_mech)) player = instance_nearest(x, y, obj_mech);
	else if (instance_exists(obj_tutorial_bahamowrang_bahaman))player = instance_nearest(x, y, obj_tutorial_bahamowrang_bahaman);

    if (player != noone) {
        // Draw a line from the shooter to the player
        draw_line_width(x, y, player.x, player.y, 1); // Draw the line
    }

    // Reset the alpha to default after drawing
    draw_set_alpha(1);
    draw_set_color(c_white);
}



