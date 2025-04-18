/// @description Insert description here
// You can write your code in this editor

global.prev_x = x;
global.prev_y = y;

var left_move = disable_turning == false && (keyboard_check(vk_left) || keyboard_check(ord("A"))) && !place_meeting(x - 5, y, obj_block);
var right_move = disable_turning == false && (keyboard_check(vk_right) || keyboard_check(ord("D"))) && !place_meeting(x + 5, y, obj_block);
var up_move = disable_turning == false && (keyboard_check(vk_up) || keyboard_check(ord("W")))
var down_move = keyboard_check(vk_down) || keyboard_check(ord("S"))
var sprint_move = keyboard_check(vk_shift)
var fire = mouse_check_button(mb_left);

var moving = left_move || right_move || up_move || down_move;

//show_debug_message(string(image_index))

if (global.prev_y == y && global.prev_x == x) {
	if (left_move) {
        x -= 0.5;
    } else if (right_move) {
        x += 0.5;
    } else if (up_move) {
		y -= 0.5;
	}	
}


if (fire && fired == false) {
	fired = true;
	var bullet_x = x - 10;
	if (image_xscale == 1) bullet_x = x + 10;
	var bullet = instance_create_layer(bullet_x, y + 5, "Instances", obj_mech_bullet);
	alarm[0] = game_get_speed(gamespeed_fps)/2;
}

if (sprint_move && stam > 0) {
	if (stam > 0) stam -= 1;
	grav = 0
	part_particles_create(part_sys, x, y, part_trail, 1);
} else {	
	grav = 0.4
	if (stam < max_stam) stam += 0.1;
}

if (fired == false) {
	if (moving) {
		if (up_move || sprint_move) {
			sprite_index = spr_mech_jump; 
		} else {
			sprite_index = spr_mech_walk;
		}
		if (left_move) {
			image_xscale = 1;
		}
		if (right_move) {
			image_xscale = -1;	
		}
	} else {
		if (image_index >= 3 && sprite_index == spr_mech_walk) {
			sprite_index = spr_mech_idle;	
	    }
		if (image_index >= 1.8 && sprite_index == spr_mech_jump) {
			sprite_index = spr_mech_idle;	
	    }
	}
}




var move = -left_move + right_move; 
hsp = move * moveSpeed;

if (vsp < 10) { 
	vsp += grav; 
}

if (place_meeting(x, y + 1, obj_block)) { 
	vsp = (up_move || sprint_move) * -jumpSpeed 
}

// H Collisions 
if (place_meeting(x + hsp, y, obj_block)) { 
	while (!place_meeting(x + sign(hsp), y, obj_block)) { 
		x += sign(hsp); 
	} 
	hsp = 0; 
} 
x += hsp;

// v Collisions 
if (place_meeting(x, y + vsp, obj_block)) { 
	while (!place_meeting(x, y + sign(vsp), obj_block)) { 
		y += sign(vsp); 
	} 
	vsp = 0;
} 
y += vsp;