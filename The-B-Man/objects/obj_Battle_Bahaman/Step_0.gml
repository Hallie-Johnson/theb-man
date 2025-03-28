/// @description Insert description here
// You can write your code in this editor

#region Intro Section
if (intro) {
	
	obj_Battle_Camera.camera_setting = 0;
	
	if (y > 128) {
		sprite_index = spr_bahaman_landing;
		if (image_index >= image_number - 1) {
			intro = false;
			disable_movement = false;
			obj_Battle_Camera.camera_setting = 1;
		}
	} else {
		y += 5;	
	}
	
}
#endregion

#region Movement

var left_move = keyboard_check(vk_left) || keyboard_check(ord("A"))
var right_move = keyboard_check(vk_right) || keyboard_check(ord("D"))
var up_move = keyboard_check(vk_up) || keyboard_check(ord("W"))
var down_move = keyboard_check(vk_down) || keyboard_check(ord("S"))
var sprint_move = keyboard_check(vk_shift)

if (sprint_move) {
	sprint = 1.5;
	if (!disable_movement) stam -= 0.05;
	time_since_click = 0;
}
else sprint = 1; 

if (intro) disable_movement = true;

if (!disable_movement) {
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
}

#endregion

#region Player Faces Mouse
var playerAngle;
playerAngle = point_direction(mouse_x,mouse_y,x,y);

if  (((playerAngle >= 0) and (playerAngle <= 90)) or ((playerAngle >= 270) and (playerAngle <= 360)))  {
	if (!disable_movement) image_xscale = 1;
}
else
	if (!disable_movement) image_xscale = -1;
	
#endregion

#region Stay in Viewport in Battle

if (in_battle) {

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

#region Stamina

// Transition to LowStam state when stamina runs out
if (stam <= 0 && state != Battle_State.LowStam) {
    state = Battle_State.LowStam;
    stam = 0; // Reset stamina to 0 to begin recharge
    recharge_stam = false; // Disable global recharge logic
    alarm[0] = 180; // Set resting duration (optional)
}

// Stamina recharge during LowStam state
if (state == Battle_State.LowStam) {
    sprite_index = spr_bahaman_resting; // Set resting animation
    move_speed = 0;         // Disable movement during resting
    stam += 0.5;            // Adjust recharge rate as needed
	disable_clicking = true;

    // Exit LowStam state when stamina is fully recharged
    if (stam >= max_stam) {
        stam = max_stam;     // Prevent exceeding max stamina
        state = Battle_State.Idle; // Exit resting state
        alarm[0] = -1;       // Cancel alarm if stamina is full
		disable_movement = false;
    }
}

// Global stamina recharge logic (only when not in LowStam)
if (recharge_stam && state != Battle_State.LowStam) {
    if (!disable_movement) stam += 0.75; // Global recharge rate
    if (stam >= max_stam || mouse_check_button_pressed(mb_left) || sprint_move) {
        recharge_stam = false;
        time_since_click = 0;
    }
}

// Timer logic for stamina recharge activation (only when not in LowStam)
if (time_since_click >= 180 && state != Battle_State.LowStam) {
    recharge_stam = true;
    time_since_click = 180; // Cap timer to prevent overflow
}

#endregion


#region Attacks

// Always Check for Attacks
if (!disable_movement) {
if (mouse_check_button_pressed(mb_left) and (stam > 0) and disable_clicking == false) {
	click_ctr++;
	attack_ctr = 1
	state = Battle_State.Attacking;
	stam -= 5;
	time_since_click = 0;
} else {
	time_since_click += 1;
}

// Bahamarang Firing Outside of State
if (mouse_check_button_pressed(mb_right) and (stam > 0) and disable_clicking == false) {
	if (bahamawrangs < bahamawrangs_max) {
		if (image_xscale = 1) shooter = instance_create_layer(x - 25, y, "Instances", obj_bahamarang)
		else shooter = instance_create_layer(x + 25, y, "Instances", obj_bahamarang)
		shooter.target_x = mouse_x
		shooter.target_y = mouse_y
		bahamawrangs++
	}
} 
}
#endregion

#region States

if (!intro) {
	switch (state) {
		case Battle_State.Idle:
	
			sprite_index = spr_bahaman_idle
		
			if (sprint_move) image_speed = 2;
			else image_speed = 1;
        
			if (left_move || right_move || up_move || down_move) {
				state = Battle_State.Moving;
			}
        
			break;
        
		case Battle_State.Moving:

			if (sprint_move) image_speed = 2;
			else image_speed = 1;

			// Sprite control
			if (left_move || right_move || up_move || down_move) {
				sprite_index = spr_bahaman_walk;
			} else {
				state = Battle_State.Idle;
			}
        
			break;
        
		case Battle_State.Attacking:

			if (mouse_check_button_pressed(mb_right)) {
				if (left_move || right_move || up_move || down_move) sprite_index = spr_bahaman_walk;
				else sprite_index = spr_bahaman_idle;
			}
			else if (mouse_check_button_pressed(mb_left)) {
				if (click_ctr % 2 == 0) sprite_index = spr_attack_var1;
				else sprite_index = spr_attack_var2;
			}
        
			if ((sprite_index == spr_attack_var1 || sprite_index == spr_attack_var2) && image_index >= image_number - 1) {
				state = Battle_State.Idle;
			}
        
			break;
		
		case Battle_State.LowStam:
			sprite_index = spr_bahaman_resting; // Set resting animation
			move_speed = 0;         // Disable movement during resting
			stam += 0.5;            // Adjust recharge rate as needed
			disable_clicking = true;

			// Exit LowStam state when stamina is fully recharged
			if (stam >= max_stam) {
				stam = max_stam;           // Prevent exceeding max stamina
				alarm[0] = -1;             // Cancel alarm if stamina is full
				state = Battle_State.Idle; // Exit resting state
				disable_movement = false;  // Enable movement
				disable_clicking = false;
				move_speed = 1.5;            // Reset move_speed to default
			}
			break;

	}
}

#endregion

#region HUD Activities
bahamarang_ctr = 3 - bahamawrangs


animation_frame += animation_speed;

// Wrap animation frame if needed
if (animation_frame >= sprite_get_number(animated_sprite)) {
    animation_frame = 0;
}

go_animation_frame += go_animation_speed;

// Wrap animation frame if needed
if (go_animation_frame >= sprite_get_number(go_animation)) {
    go_animation_frame = 0;
}

if (hp <= 500) {
	health_warning = 1 - (hp / 500)
}

#endregion

#region	Detect if in Battle

if (instance_number(obj_Battle_Enemy) > 0) {
    in_battle = true;
	obj_Battle_Camera.camera_setting = 0;
	activate_go = false;
} else {
    in_battle = false;
	obj_Battle_Camera.camera_setting = 1;
	activate_go = true;
}

#endregion

#region Stay in Room

if (x < 0) {
    x = 0;
} else if (x > room_width - sprite_width) {
    x = room_width - sprite_width * 2;
}

// Ensure the player stays within the room's vertical bounds
if (y < 0) {
    y = 0;
} else if (y > room_height - sprite_height) {
    y = room_height - sprite_height * 2;
}

#endregion

#region Mission Failed
if (draw_mission_failed) {
	if (rectangle_width > room_width) {
		rectangle_width = room_width;
	} else {
		rectangle_width = rectangle_width + rectangle_speed;
	}
}

if (hp <= 0) {
	draw_mission_failed = true;
	disable_movement = true;
	sprite_index = spr_bahaman_resting;
	image_index = 0;
	obj_arrow.image_alpha = 0;
}
#endregion