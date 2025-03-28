/// @description Insert description here
// You can write your code in this editor

if (draw_mission_complete) draw_mission_failed = false;
if (draw_mission_failed) draw_mission_complete = false;

if (global.paused) {
	disable_movement = true;	
} else {
	disable_movement = false;	
}


if (!variable_global_exists("prev_x")) {
    global.prev_x = x;
    global.prev_y = y;
}

var left_move = (keyboard_check(vk_left) || keyboard_check(ord("A"))) && !place_meeting(x - 5, y, obj_block);
var right_move = (keyboard_check(vk_right) || keyboard_check(ord("D"))) && !place_meeting(x + 5, y, obj_block);
var up_move = keyboard_check(vk_up) || keyboard_check(ord("W"))
var down_move = keyboard_check(vk_down) || keyboard_check(ord("S"))
var sprint_move = keyboard_check(vk_shift)

var is_moving = left_move || right_move || up_move;

if (!disable_movement && is_moving && (x == global.prev_x) && !resting && !death) {
    // Attempt to nudge the player out of the stuck position
    if (left_move) {
        x -= 0.5;
    } else if (right_move) {
        x += 0.5;
    } else if (up_move) {
		y -= 0.5;
	}
}

global.prev_x = x;
global.prev_y = y;

//show_debug_message("x: " + string(xsp) + " | y: " + string(ysp) + " | is moving: " + string(is_moving));

#region Resting 
if (resting) {
	hit = false;
	falling = false;
	attacking = false;
	is_moving = false;
	//disable_movement = true;
	if (death == false) stam += 0.35;
	
	sprite_index = spr_bahaman_resting;
	
	if (stam >= max_stam) {
		stam = max_stam;
		resting = false;	
		disable_movement = false;
	}
}

if (death) {
	ysp = 0;
}
#endregion

#region Resting Trigger
if (stam <= 0) {
	resting = true;	
}
#endregion

#region Sprite Manager
if (hit == true) {
	sprite_index = spr_Bahaman_Hit;
}
else if (falling == false && attacking == false && is_moving == false && resting == false) {
	sprite_index = spr_bahaman_idle;
} else if (falling == true && attacking == false && resting == false) {
	sprite_index = spr_bahaman_falling;
} else if (!global.paused && falling == false && attacking == false && is_moving == true && resting == false) {
	sprite_index = spr_bahaman_walk;
}
#endregion

#region Hit Timer
if (hit == true) {
	if (alarm[0] < 0) {
		alarm[0] = 20;
	}	
}
#endregion

#region Sprint Stamina

if (sprint_move && disable_movement == false) {
	stam -= 0.1;	
} 

if (!sprint_move && !global.paused && !attacking && !resting && !draw_mission_complete && !draw_mission_failed) {
	if (stam <= max_stam) stam += 0.025;
	else stam = max_stam;
}
#endregion

#region Player Faces Mouse
var playerAngle;
playerAngle = point_direction(mouse_x,mouse_y,x,y);

if  (((playerAngle >= 0) and (playerAngle <= 90)) or ((playerAngle >= 270) and (playerAngle <= 360)))  {
	if (!disable_movement) image_xscale = 1;
	player_direction = "left";
}
else {
	if (!disable_movement) image_xscale = -1;
	player_direction = "right";
}

#endregion

#region Movement
if (disable_movement == false) {
	
	if (!death) {
		ysp += 0.1;
		xsp = 0;
	}
	
	if (left_move && resting == false) {
		if (sprint_move) {
			xsp -= 2;
			x -= 0.01;
		}
		else xsp -= 1;	
	} else if (right_move && resting == false) {
		if (sprint_move) {
			xsp += 2;
			x += 0.01;
		}
		else xsp += 1;
	}

	if (sprint_move && resting == false) {
		image_speed = 1.5;
	} else {
		image_speed = 1;
	}
	
	if (place_meeting(x, y+1, obj_block)) {
		ysp = 0;
		if (up_move && !place_meeting(x, y-40, obj_block) && resting == false) {
			//ysp=-2.5	
			ysp = lerp(ysp, -4.5, 0.9) // -3
		}
	}
	
	/*

	if (up_move) {
		if (place_meeting(x, y+1, obj_Block)) {
			vspeed = -4
		}	
	} */
	
	if (!death) {
		
		move_and_collide(xsp, ysp, obj_block)
	}
	else {
		xsp = 0;
		ysp = 0;
	}
}

//show_debug_message(string(ysp))



#endregion

#region Gravity - REMOVED

/*
if (instance_place(x, y, obj_Block))  {
	gravity = 0
}
else {
	gravity = 0.25
} */
#endregion

#region Lock Vspeed
if ysp > 5 {
	ysp = 5 
}
#endregion

#region Trigger Falling
if (ysp > 3 && attacking == false) {
	falling = true;
} else {
	falling = false;
}
#endregion

#region Punching Attack
if (mouse_check_button_pressed(mb_left) && !global.paused && attacking == false && resting == false) {
	attacking = true;
	
	stam -= 2;
	
	if (attack_ctr % 2 == 0) sprite_index = spr_attack_var1;
	else sprite_index = spr_attack_var2;
	
	if (player_direction == "right") {
		instance_create_layer(x + 5, y, "Instances", obj_bahaman_damage);
	} else if (player_direction == "left") {
		instance_create_layer(x - 5, y, "Instances", obj_bahaman_damage);
	}
	
	attack_ctr++;
	
	alarm[1] = 20;
}
#endregion

#region Wrang Attack
if (mouse_check_button_pressed(mb_right) && !global.paused && resting == false && wrang_ctr < wrang_max) {
	var shooter = instance_create_layer(x + 25, y, "Instances", obj_bahamowrang)
	shooter.target_x = mouse_x
	shooter.target_y = mouse_y
	wrang_ctr++;
}
#endregion

#region Clue Counts

global.battle_1_clues = clamp(global.battle_1_clues, 0, 3);
global.battle_2_clues = clamp(global.battle_2_clues, 0, 3);
global.battle_3_clues = clamp(global.battle_3_clues, 0, 3);

if (room == rm_Battle1) {
	clue_ctr = global.battle_1_clues;
} else if (room == rm_Battle2) {
	clue_ctr = global.battle_2_clues;
} else if (room == rm_Battle3) {
	clue_ctr = global.battle_3_clues;
}

#endregion

if (instance_exists(obj_bahamowrang_spawner)) {
if (obj_bahamowrang_spawner.mission_complete) {
	draw_mission_complete = true;	
	obj_bahamowrang_spawner.visible = false;
}
}