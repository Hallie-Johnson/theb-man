/// @description Insert description here
// You can write your code in this editor

// Gradually move towards the target position using linear interpolation (lerp)
x = lerp(x, target_x, move_speed);
y = lerp(y, target_y, move_speed);

// Optionally, stop moving once the target position is reached
if (point_distance(x, y, target_x, target_y) < 1) {
    // Stop movement (or snap to the target position if close enough)
    x = target_x;
    y = target_y;
}