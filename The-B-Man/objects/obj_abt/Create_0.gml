/// @description Insert description here
// You can write your code in this editor

og_y = y + 60;
depth = 100;


part_sys = part_system_create();
part_trail = part_type_create();

// Define particle trail properties
part_type_shape(part_trail, pt_shape_cloud);
part_type_color1(part_trail, c_fuchsia);
part_type_alpha2(part_trail, 1, 0); // Fades from fully visible to invisible
part_type_size(part_trail, 0.1, 0.5, 0, 0);
part_type_speed(part_trail, 1, 2, 0, 0);
part_type_direction(part_trail, 180, 180, 0, 0); // Vertical direction
part_type_life(part_trail, 30, 60); 
//part_system_depth(part_sys, 100); 

instance_create_layer(x, y, "Instances", obj_abt_ai);