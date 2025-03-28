/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// Count down the fire timer
if (!obj_Battle_Bahaman.disable_movement) fire_timer -= 1;

if (fire_timer <= 0) {
    // Reset the timer
    fire_timer = fire_rate;

    // Stop drawing the line
    draw_line_flag = false;

    // Find the player position
    var player = instance_nearest(x, y, obj_Battle_Bahaman);

    if (player != noone) {
        // Calculate direction to the player
        var direction_to_player = point_direction(x, y, player.x, player.y);

        // Create a bullet aimed at the player
        var bullet = instance_create_layer(x, y, "Instances", obj_Bullet);
        
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
