/// @description Insert description here
// You can write your code in this editor

scr_save_game();

depth = -10000;

x = display_get_gui_width();
y = display_get_gui_height();

image_xscale = 5;
image_yscale = 5;

alpha = 1;

alarm[0] = 120;

fade = false;

with (object_index) { // object_index refers to the object’s own type
    // Check if this instance is not the current instance that is executing the code
    if (id != other.id) {
        instance_destroy();
    }
}

image_speed = 0.5; // Adjust to your preference
