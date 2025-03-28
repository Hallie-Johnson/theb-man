/// @description Insert description here
// You can write your code in this editor


#region States

enum Battle_State {
    Idle,
    Moving,
    Attacking,
	LowStam
}

#endregion

#region Stats

// Movement Variables
move_speed = 1.5
sprint = 1

// Enemy Counter
enemy_ctr = 0;

// Health
//max_hp = 1000 + (global.upgrade_wrang_health * 250);
max_hp = 1000 + (3 * 250);
hp = max_hp

// Stamina
max_stam = 100
stam = max_stam

// Stamina Should Not Recharge at Start
recharge_stam = false;

// Attack Variables
bahamawrangs = 0;
attack_type = 1
attack_ctr = 0;
//bahamawrangs_max = 3 + global.upgrade_wrang_count;
bahamawrangs_max = 3 + 3;

// Recharging Stamina Variables
click_ctr = 0;
time_since_click = 0;

//damage = 50 + (global.upgrade_wrang_damage * 25);
damage = 50 + (3 * 25);

#endregion

#region Beginning Variables

// Player Begins in Idle State
state = Battle_State.Idle;

// Intro Begining
sprite_index = spr_bahaman_falling;
intro = true;
y = -100;

in_battle = false;

#endregion

#region HUD Variables

scale_x = 4;  
scale_y = 4; 

draw_mission_failed = false;
rectangle_width = 0;
rectangle_speed = 75;

#region Get Height And Positions

sprite_to_draw = BattleIconAttack1; // All sprites have same size

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

sprite_w = sprite_get_width(sprite_to_draw);
sprite_h = sprite_get_height(sprite_to_draw);

y_pos = room_height - 150;
x_pos = (gui_width / 2) - (sprite_w / 2)

#endregion

bahamarang_ctr = ""

animated_sprite = AttackSelect;
animation_speed = 0.15;  // Adjust as needed
animation_frame = 0;    // Current frame of animation

go_animation = spr_GO;
go_animation_speed = 0.15;
go_animation_frame = 0;

attack_pos = x_pos - 67.5

health_warning = 0

bahaman_light_red = #D51400
bahaman_dark_red = #B21000
bahaman_white = #FFFFFF
bahaman_dark_white = #C9C9C9

activate_go = false;

#endregion

disable_movement = false;

resting_stam = false;

disable_clicking = false;