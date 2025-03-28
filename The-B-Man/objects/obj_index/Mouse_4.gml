/// @description Insert description here
// You can write your code in this editor

//draw_index = !draw_index;

obj_index_selector.visible = true;

var current_instance = id; // Store the current instance ID

	// Loop through all instances of obj_Index_Icons
	with (obj_index) {
		if (id == current_instance) {
        // This is the current instance, keep draw_index as true
        draw_index = true;
		} else {
        // For all other instances, set draw_index to false
			draw_index = false;
		}
	}
	
// Get the target object
var target = instance_find(obj_index_selector, 0);

// If the target exists, set the target position to this object's location
if (target != noone) {
    target.target_x = x; // Store the x position of the clicked object
    target.target_y = y; // Store the y position of the clicked object
}