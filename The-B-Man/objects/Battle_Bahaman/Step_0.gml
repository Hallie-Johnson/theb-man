/// @description Insert description here
// You can write your code in this editor

#region Check Movement

left_move = keyboard_check(vk_left) || keyboard_check(ord("A"))
right_move = keyboard_check(vk_right) || keyboard_check(ord("D"))
up_move = keyboard_check(vk_up) || keyboard_check(ord("W"))
down_move = keyboard_check(vk_down) || keyboard_check(ord("S"))
sprint_move = keyboard_check(vk_shift)

#endregion

#region Player Faces Mouse
var playerAngle;
playerAngle = point_direction(mouse_x,mouse_y,x,y);

if  (((playerAngle >= 0) and (playerAngle <= 90)) or ((playerAngle >= 270) and (playerAngle <= 360)))  {
	image_xscale = 1;
}
else
	image_xscale = -1;
	
#endregion

#region Use Scroll to Choose Attack

if (mouse_wheel_up()) attack_type = 1
else if (mouse_wheel_down()) attack_type = 2

#endregion

#region Other Things That Should Happen All Times

// Ensure the player stays within the room's horizontal bounds
if (x < 0) {
    x = 0;
} else if (x > room_width - sprite_width) {
    x = room_width - sprite_width;
}

// Ensure the player stays within the room's vertical bounds
if (y < 0) {
    y = 0;
} else if (y > room_height - sprite_height) {
    y = room_height - sprite_height;
}


#region Make Player Stay in Viewport

if (obj_Stage.in_battle) {
// Get the view boundaries
var view_left = camera_get_view_x(view_camera[0]);
var view_top = camera_get_view_y(view_camera[0]);
var view_right = view_left + camera_get_view_width(view_camera[0]);
var view_bottom = view_top + camera_get_view_height(view_camera[0]);

// Prevent leaving the viewport horizontally
if (x < view_left) {
    x = view_left;
} else if (x > view_right - sprite_width) {
    x = view_right - sprite_width;
}

// Prevent leaving the viewport vertically
if (y < view_top) {
    y = view_top;
} else if (y > view_bottom - sprite_height) {
    y = view_bottom - sprite_height;
}

}
#endregion




// Always Move
/*
if (left_move) x -= move_speed * sprint;
if (right_move) x += move_speed * sprint;
if (up_move) y -= move_speed * sprint;
if (down_move) y += move_speed * sprint;*/
if (sprint_move) {
	sprint = 1.5;
	stam -= 0.05;
	time_since_click = 0;
}
else sprint = 1; 

// Horizontal movement with collision
if (left_move) {
    if (!place_meeting(x - move_speed, y, obj_wall)) {
        x -= move_speed * sprint;
    }
} 
if (right_move) {
    if (!place_meeting(x + move_speed, y, obj_wall)) {
        x += move_speed * sprint;
    }
}

// Vertical movement with collision
if (up_move) {
    if (!place_meeting(x, y - move_speed, obj_wall)) {
        y -= move_speed * sprint;
    }
} 
if (down_move) {
    if (!place_meeting(x, y + move_speed, obj_wall)) {
        y += move_speed * sprint;
    }
}



// Always Check for Attacks
if (mouse_check_button_pressed(mb_left) and (stam > 0)) {
	click_ctr++;
	attack_ctr = 1
	state = BattleState.Attacking;
	if (attack_type == 2) stam -= 5;
	time_since_click = 0;
} else {
	time_since_click += 1;
}

// Bahamarang Firing Outside of State
if (mouse_check_button_pressed(mb_left) and attack_type == 1 and (stam > 0)) {
	if (bahamawrangs < 3) {
		if (image_xscale = 1) shooter = instance_create_layer(x - 25, y, "Instances_1", obj_bahamarang)
		else shooter = instance_create_layer(x + 25, y, "Instances_1", obj_bahamarang)
		shooter.target_x = mouse_x
		shooter.target_y = mouse_y
		bahamawrangs++
	}
}

if (stam <= 0 and stam >= -100) {
	state = BattleState.LowStam;
	//move_speed = 0;
	stam = -101;
	if (alarm[0] < 0) {
		alarm[0] = 180;
	}
}

if (recharge_stam) {
	stam += 0.5;
	if (stam >= max_stam || (mouse_check_button_pressed(mb_left) and attack_type == 2) || sprint_move) {
		recharge_stam = false;
		time_since_click = 0;
	}
}

if (time_since_click >= 180) {
	recharge_stam = true;
    time_since_click = 180;
}

#endregion


if (!intro) {
switch (state) {
    case BattleState.Idle:
	
		sprite_index = spr_bahaman_idle
		
		if (sprint_move) image_speed = 2;
        else image_speed = 1;
        
        if (left_move || right_move || up_move || down_move) {
            state = BattleState.Moving;
        }
        
        break;
        
    case BattleState.Moving:

        if (sprint_move) image_speed = 2;
        else image_speed = 1;

        // Sprite control
        if (left_move || right_move || up_move || down_move) {
            sprite_index = spr_bahaman_walk;
        } else {
            state = BattleState.Idle;
        }
        
        break;
        
    case BattleState.Attacking:

		if (attack_type == 1) {
			if (left_move || right_move || up_move || down_move)
				sprite_index = spr_bahaman_walk;
			else
				sprite_index = spr_bahaman_idle;
		}
		else if (attack_type == 2) {
            if (click_ctr % 2 == 0) sprite_index = spr_attack_var1;
			else sprite_index = spr_attack_var2;
        }
        
		if ((sprite_index == spr_attack_var1 || sprite_index == spr_attack_var2) && image_index >= image_number - 1) {
			state = BattleState.Idle;
		}
        
        break;
		
	case BattleState.LowStam:
	
		sprite_index = spr_bahaman_resting;
		
		move_speed = 0;
        
        break;
}
}






if(keyboard_check(vk_enter)) hp = hp - 5
if(keyboard_check(vk_tab)) hp = hp + 5

if (intro) {
	
	obj_BattleCamera.track_player = true;
	
	if (y > 128) {
		//intro = false;
		sprite_index = spr_bahaman_landing;
		if (image_index >= image_number - 1) {
			intro = false;
			obj_BattleCamera.track_player = false;
		}
	} else {
		y += 5;	
	}
}



#region OLD CODE
/*



left_move = keyboard_check(vk_left) || keyboard_check(ord("A"))
right_move = keyboard_check(vk_right) || keyboard_check(ord("D"))
up_move = keyboard_check(vk_up) || keyboard_check(ord("W"))
down_move = keyboard_check(vk_down) || keyboard_check(ord("S"))
sprint_move = keyboard_check(vk_shift)

#region Player Movement
if (left_move) x -= move_speed * sprint
if (right_move) x += move_speed * sprint
if (up_move) y -= move_speed * sprint
if (down_move) y += move_speed * sprint

if (sprint_move) {
	image_speed = 2
	sprint = 1.5
}
else {
	image_speed = 1
	sprint = 1
}

var playerAngle;
playerAngle = point_direction(mouse_x,mouse_y,x,y);

if  (((playerAngle >= 0) and (playerAngle <= 90)) or ((playerAngle >= 270) and (playerAngle <= 360)))  {
	image_xscale = 1;
}
else
	image_xscale = -1;
	
#endregion

#region Sprite Control
if (left_move || right_move || up_move || down_move)
{
	sprite_index = Bahaman_Walk
} else {
	sprite_index = Bahaman_Idle	
}

#endregion

#region Attacks

if (mouse_check_button_pressed(mb_left) and attack_type == 1) {
	
	if (bahamawrangs < 3) {
		shooter = instance_create_layer(x, y, "Instances_1", obj_bahamarang)
	
		shooter.target_x = mouse_x
		shooter.target_y = mouse_y
		
		bahamawrangs++
	}
}

if (mouse_check_button_pressed(mb_left) and attack_type == 2) {
	
	sprite_index = AttackVar1
}



if (mouse_wheel_up())
{
    attack_type = 1
} 
else if (mouse_wheel_down()) {
	attack_type = 2
}

#endregion



switch (state)
{
case battle_state.idle:
    break;
case battle_state.movement:
    break;
case battle_state.attack:
    break;
} */

#endregion