/// @description Insert description here
// You can write your code in this editor

/*if (instance_exists(Bahaman)) {
    // Get the player's coordinates
    var player_x = Bahaman.x;
    var player_y = Bahaman.y;

    // Set the follower's coordinates to the player's coordinates
    x = player_x;
    y = player_y;
} */

if (instance_exists(obj_Intro)) {
if (progress < 1) {
    if (obj_Intro.timer > 2000) progress += move_speed; // Increment progress over time
    progress = clamp(progress, 0, 1); // Ensure progress stays between 0 and 1
    
    // Move the object using interpolation
    x = lerp(start_x, target_x, progress);
    y = lerp(start_y, target_y, progress);
}
}