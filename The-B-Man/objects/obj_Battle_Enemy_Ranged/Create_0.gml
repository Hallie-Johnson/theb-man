/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// Initialize the timer and bullet settings
fire_rate = 5 * room_speed; // 5 seconds
fire_timer = 5 * room_speed; // Starts counting

bullet_speed = 3; // Speed of the bullet
draw_line_timer = 3 * room_speed; // Start drawing the line at the 3rd second (3 * 60 steps)
draw_line_flag = false; // Control whether the line should be drawn

// Fade variables
fade_alpha = 0; // Start with fully transparent
fade_speed = 0.005; // Adjust this speed for how fast it fades in

shot_ctr = 0;