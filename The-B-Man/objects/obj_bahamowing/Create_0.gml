/// @description Insert description here
// You can write your code in this editor

//instance_create_layer(x, y, "Instances", obj_Crosshair);

cursor_sprite = spr_blank;

effect_cost = 0
effect_hit = 0

sound_boost = false;
boost = audio_play_sound(snd_sfx_boost, 1, false);
audio_sound_gain(boost, 0, 0);


image_xscale = 0.5
image_yscale = 0.5

normal_speed = 4 + (global.upgrade_wing_speed/2);
boost_speed = 6 + (global.upgrade_wing_speed/2);
idle_speed = 0.5 + (global.upgrade_wing_speed * 0.05);


right = true;

x_pos = mouse_x; // Initial X position
y_pos = mouse_y; // Initial Y position
smooth_factor = 0.25; // Smoothing factor (adjust between 0 and 1)

canShoot = true;


scale_x = 4;  
scale_y = 4; 
health_warning = 0
// Health
max_hp = 1000 + (global.upgrade_wing_health * 250);
hp = max_hp

// Stamina
max_stam = 100
stam = max_stam

bahaman_light_red = #D51400
bahaman_dark_red = #B21000
bahaman_white = #FFFFFF
bahaman_dark_white = #C9C9C9

boost = false;
clue_ctr = 0;


draw_mission_failed = false;
rectangle_width = 0;
rectangle_speed = 75;

disable_movement = false;

draw_mission_complete = false;
rectangle_width1 = 0;
rectangle_speed1 = 75;
display = true;

timer = time * 60;


radar_sprite = spr_bahamowing_radar
radar_frame = 0;
radar_speed = 0.15;

bad_guy_ctr = 0;


part_sys = part_system_create();
part_trail = part_type_create();

// Define particle trail properties
part_type_shape(part_trail, pt_shape_line);
part_type_color1(part_trail, c_yellow); // Yellow color
part_type_alpha2(part_trail, 0.5, 0); // Fades from fully visible to invisible
part_type_size(part_trail, 0.1, 0.25, 0, 0);
part_type_speed(part_trail, 1, 2, 0, 0);
part_type_direction(part_trail, 180, 180, 0, 0); // Vertical direction
part_type_life(part_trail, 30, 60); // Lifetime of particles
part_system_depth(part_sys, depth + 1);