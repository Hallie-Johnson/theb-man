/// @description Insert description here
// You can write your code in this editor

cursor_sprite = spr_cursor;

effect_juul_hit = 0;
effect_hit = 0;

grav = 0.2; 
hsp = 0; 
vsp = 0; 
jumpSpeed = 5; 
moveSpeed = 2;

gravity_direction = 270;

fired = false;

mega_fire = 0;
spawn_mega = false;

disable_turning = false;

juul_max_hp = 900;
juul_hp = juul_max_hp;

pressed_shift = false;

#region Particle System
part_sys = part_system_create();
part_trail = part_type_create();

// Define particle trail properties
part_type_shape(part_trail, pt_shape_flare);
part_type_color1(part_trail, c_red); // Red color
part_type_alpha2(part_trail, 1, 0); // Fades from fully visible to invisible
part_type_size(part_trail, 0.25, 0.75, 0, 0);
part_type_speed(part_trail, 1, 2, 0, 0);
part_type_direction(part_trail, 90, 90, 50, 50); // Vertical direction
part_type_life(part_trail, 30, 60); // Lifetime of particles
part_system_depth(part_sys, depth + 1);
#endregion

#region GUI Values
wrang_ctr = 0;
wrang_max = 4;

scale_x = 4;  
scale_y = 4; 
health_warning = 0

activate_cinema = false;
cinema_bars = 1.5;

radar_sprite = spr_bahamowing_radar
radar_frame = 0;
radar_speed = 0.15;

draw_mission_failed = false;
rectangle_width = 0;
rectangle_speed = 75;

draw_mission_complete = false;
rectangle_width1 = 0;
rectangle_speed1 = 75;
display = true;
#endregion

#region Health and Stamina
// Health
max_hp = 5000;
hp = max_hp

// Stamina
max_stam = 100;
stam = max_stam
stam_recharge = false;
#endregion

#region Colors
bahaman_light_red = #D51400
bahaman_dark_red = #B21000
bahaman_white = #FFFFFF
bahaman_dark_white = #C9C9C9
#endregion

#region Movement Controls
left_move = disable_turning == false && (keyboard_check(vk_left) || keyboard_check(ord("A"))) && !place_meeting(x - 5, y, obj_block);
right_move = disable_turning == false && (keyboard_check(vk_right) || keyboard_check(ord("D"))) && !place_meeting(x + 5, y, obj_block);
up_move = disable_turning == false && (keyboard_check(vk_up) || keyboard_check(ord("W")))
down_move = keyboard_check(vk_down) || keyboard_check(ord("S"))
sprint_move = keyboard_check(vk_shift)
fire = mouse_check_button(mb_left);
#endregion

#region Wave + Timer
wave_current = 1;
wave_time = [90, 105, 120]
wave_enemies = [20, 30, 50]

timer = wave_time[wave_current - 1] * 60;

wave_1_complete = false;
wave_2_complete = false;
wave_3_complete = false;

#endregion






