/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_set_alpha(0);

var y_positions = [y - 60, y + 60, y];

var check_x = x + 25;

var square_width = 200;  
var square_height = 10; 

// Default obj_Abt_Driving.y to the middle square's position (2nd square)
var target_y = 536; 

// Loop through each y-position
for (var i = 0; i < array_length(y_positions); i++) {
    var check_y = y_positions[i];

    // Define the rectangular bounds for detection
    var rect_left = check_x - square_width / 2;
    var rect_top = check_y - square_height / 2;
    var rect_right = check_x + square_width / 2;
    var rect_bottom = check_y + square_height / 2;

    // Check if any part of obj_obstacle is within the rectangle
    var is_hit = collision_rectangle(
        rect_left, rect_top,  // Top-left corner of the rectangle
        rect_right, rect_bottom, // Bottom-right corner of the rectangle
        obj_obstacle,
        false, // Precision check (set to false for faster detection)
        true   // Include non-solid objects
    );

    // Debug message for each square check
    if (i == 0) {
        if (!is_hit) target_y = 476; 
    } else if (i == 1) {
        if (!is_hit) target_y = 596; 
    } else if (i == 2) {
        if (!is_hit) target_y = 536; 
    }

    // Set color based on hit status
    var color = is_hit ? c_red : c_green;

    draw_rectangle(
        rect_left, rect_top, 
        rect_right, rect_bottom, 
        false
    );
    draw_set_color(color);
    draw_rectangle(
        rect_left, rect_top,
        rect_right, rect_bottom,
        false
    );

}


obj_abt.y = lerp(obj_abt.y, target_y, 0.1); 

draw_set_color(c_white);
draw_set_alpha(1);
