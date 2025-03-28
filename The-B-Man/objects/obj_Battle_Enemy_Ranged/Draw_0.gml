/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

/*if (draw_line_flag) {
	
	draw_set_color(c_lime);
	draw_set_alpha(0.5);
	
    // Find the player
    var player = instance_nearest(x, y, obj_Battle_Bahaman);

    if (player != noone) {
        // Draw a line from the shooter to the player
		draw_line_width(x, y + 5, player.x, player.y, 1);
    }
	
	draw_set_alpha(1);
	
	draw_set_color(c_white);
}  */

if (draw_line_flag) {
    // Gradually increase the alpha for fade-in effect
    fade_alpha += fade_speed; // Increase alpha
    fade_alpha = clamp(fade_alpha, 0, 1); // Clamp to the range [0, 1]

    draw_set_color(c_lime);
    draw_set_alpha(fade_alpha); // Use the fading alpha

    // Find the player
    var player = instance_nearest(x, y, obj_Battle_Bahaman);

    if (player != noone) {
        // Draw a line from the shooter to the player
        draw_line_width(x, y, player.x, player.y, 1); // Draw the line
    }

    // Reset the alpha to default after drawing
    draw_set_alpha(1);
    draw_set_color(c_white);
}
