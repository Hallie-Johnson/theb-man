/// @description Insert description here
// You can write your code in this editor

move_speed = 1.5
sprint = 1

enemy_ctr = 0;

bahamawrangs = 0;
attack_type = 1
attack_ctr = 0

enum BattleState {
    Idle,
    Moving,
    Attacking,
	LowStam
}

state = BattleState.Idle;


max_hp = 1000
hp = max_hp

max_stam = 100
stam = max_stam
recharge_stam = false;

click_ctr = 0;
time_since_click = 0;


sprite_index = spr_bahaman_falling;
intro = true;
y = -100;


#region Things to Stop Giving GM a Heartattack

left_move = keyboard_check(vk_left) || keyboard_check(ord("A"))
right_move = keyboard_check(vk_right) || keyboard_check(ord("D"))
up_move = keyboard_check(vk_up) || keyboard_check(ord("W"))
down_move = keyboard_check(vk_down) || keyboard_check(ord("S"))
sprint_move = keyboard_check(vk_shift)

#endregion