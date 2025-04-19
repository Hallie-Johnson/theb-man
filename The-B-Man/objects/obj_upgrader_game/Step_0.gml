/// @description Insert description here
// You can write your code in this editor


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

if (is_moving && (x == global.prev_x) && !resting && !death) {
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

#region Sprite Manager
if (falling == false && attacking == false && is_moving == false && resting == false) {
	sprite_index = spr_bahaman_idle;
} else if (falling == true && attacking == false && resting == false) {
	sprite_index = spr_bahaman_falling;
} else if (!global.paused && falling == false && attacking == false && is_moving == true && resting == false) {
	sprite_index = spr_bahaman_walk;
}
#endregion

//#region Player Faces Mouse
//var playerAngle;
//playerAngle = point_direction(mouse_x,mouse_y,x,y);

//if  (((playerAngle >= 0) and (playerAngle <= 90)) or ((playerAngle >= 270) and (playerAngle <= 360)))  {
//	image_xscale = 5;
//	player_direction = "left";
//}
//else {
//	image_xscale = -5;
//	player_direction = "right";
//}

//#endregion

#region Movement
if (1 == 1) {
	
	if (!death) {
		ysp += 0.1;
		xsp = 0;
	}
	
	if (left_move && resting == false) {
		image_xscale = 5;
		player_direction = "left";
		if (sprint_move) {
			xsp -= move_speed + move_speed;
			x -= 0.01;
		}
		else xsp -= move_speed;	
	} else if (right_move && resting == false) {
		image_xscale = -5;
		player_direction = "right";
		if (sprint_move) {
			xsp += move_speed + move_speed;
			x += 0.01;
		}
		else xsp += move_speed;
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
