/// @description Insert description here
// You can write your code in this editor

//gravity_direction = 270

clue_ctr = 0;

move_speed = 1;

xsp = 0
ysp = 0

wrang_max = global.upgrade_wrang_count + 1;
wrang_ctr = 0;

enemy_damage = 0;

disable_movement = false;

falling = false;

attacking = false;

hit = false;

resting = false;

death = false;

attack_ctr = 0;

player_direction = "left";

// idle, attacking, falling, moving, hit, resting, death

hp = 100 + (global.upgrade_wrang_health * 100);
max_hp = hp;

stam = 50;
max_stam = stam;


scale_x = 4;  
scale_y = 4; 



draw_mission_failed = false;
rectangle_width = 0;
rectangle_speed = 75;


draw_mission_complete = false;
rectangle_width1 = 0;
rectangle_speed1 = 75;
display = true;



health_warning = 0

bahaman_light_red = #D51400
bahaman_dark_red = #B21000
bahaman_white = #FFFFFF
bahaman_dark_white = #C9C9C9

