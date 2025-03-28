/// @description Insert description here
// You can write your code in this editor

cursor_sprite = spr_blank;

effect_time = 0;
effect_trap = 0;
effect_abt = 0;

sound_boost = false;
boost = audio_play_sound(snd_sfx_boost, 1, false);
audio_sound_gain(boost, 0, 0);

sound_move = false;
move = audio_play_sound(snd_sfx_bahamobile_movement, 1, false);
audio_sound_gain(move, 0, 0);


origin_x = x; // Starting X position
amplitude = 5; // Distance to slide
slide_speed = 0.05; // Speed of the sliding motion
angle = 0; // Angle for sine waveit

lanes = [y - 60, y, y + 60]
lane = 1;


part_sys = part_system_create();
part_trail = part_type_create();

// Define particle trail properties
part_type_shape(part_trail, pt_shape_flare);
part_type_color1(part_trail, c_red); // Red color
part_type_alpha2(part_trail, 1, 0); // Fades from fully visible to invisible
part_type_size(part_trail, 0.1, 0.5, 0, 0);
part_type_speed(part_trail, 1, 2, 0, 0);
part_type_direction(part_trail, 180, 180, 0, 0); // Vertical direction
part_type_life(part_trail, 30, 60); // Lifetime of particles


back_layer = layer_get_id("Background")
back_decor_layer = layer_get_id("Backgrounds_1")


scale_x = 4;  
scale_y = 4; 
health_warning = 0
// Health
max_hp = 1000 + (global.upgrade_mobile_health * 500);
hp = max_hp

// Stamina
max_stam = 100 + (global.upgrade_mobile_boost * 25);
stam = max_stam

idle_rate = 0.05 + (global.upgrade_mobile_speed * 0.05);

bahaman_light_red = #D51400
bahaman_dark_red = #B21000
bahaman_white = #FFFFFF
bahaman_dark_white = #C9C9C9

boost = false;


catch_up_points = 0;

draw_mission_failed = false;
rectangle_width = 0;
rectangle_speed = 75;

disable_movement = false;


draw_mission_complete = false;
rectangle_width1 = 0;
rectangle_speed1 = 75;

display = true;


tracker_pos = 0;


timer = time * 60; // Set timer to 5 seconds (300 steps at 60 FPS)

clue_ctr = 0;



#region ABT BOSS 

abt_hp = 90;
abt_max_hp = abt_hp;

#endregion