/// @description Insert description here
// You can write your code in this editor

if (clicked && keyboard_check_pressed(vk_shift)) {
	clicked = false;	
}

if (obj_missions_bahamowing.clicked || obj_missions_bahamowrang.clicked) {
	visible = false;
} else {
	visible = true;
}	


if (!obj_missions_bahamowing.clicked && !obj_missions_bahamowrang.clicked) {

// Target scale when mouse hovers over the object
var hover_scale = 1.2;
// Speed at which the scale changes
var scale_speed = 0.05;

// Check if the mouse is hovering over the object
if (!clicked && point_in_rectangle(mouse_x, mouse_y, x - sprite_width / 2, y - sprite_height / 2, x + sprite_width / 2, y + sprite_height / 2)) {
    // Mouse is hovering over the object
    image_speed = 1; // Enable sprite animation
    // Gradually increase scale to the target hover_scale
    image_xscale = lerp(image_xscale, hover_scale, scale_speed);
    image_yscale = lerp(image_yscale, hover_scale, scale_speed);
} else {
    // Mouse is not hovering over the object
    image_speed = 0; // Stop sprite animation
    // Reset scale to the default (1.0)
    image_xscale = lerp(image_xscale, 1.0, scale_speed);
    image_yscale = lerp(image_yscale, 1.0, scale_speed);
}

}