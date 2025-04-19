/// @description Insert description here
// You can write your code in this editor

if (y <= 32) y = 32;

#region Check Movement Keys
left_move = disable_turning == false && (keyboard_check(vk_left) || keyboard_check(ord("A"))) && !place_meeting(x - 5, y, obj_block);
right_move = disable_turning == false && (keyboard_check(vk_right) || keyboard_check(ord("D"))) && !place_meeting(x + 5, y, obj_block);
up_move = disable_turning == false && (keyboard_check(vk_up) || keyboard_check(ord("W")))
down_move = keyboard_check(vk_down) || keyboard_check(ord("S"))
sprint_move = keyboard_check(vk_shift)
fire = mouse_check_button(mb_left);

var moving = left_move || right_move || up_move || down_move;

#endregion

#region Prevent Player Getting Stuck
global.prev_x = x;
global.prev_y = y;

if (global.prev_y == y && global.prev_x == x && !global.paused) {
	if (left_move) {
        x -= 0.5;
    } else if (right_move) {
        x += 0.5;
    } else if (up_move) {
		y -= 0.5;
	}	
}
#endregion

#region Fire Golden Wrang Attack
if (mouse_check_button_pressed(mb_right) && !global.paused && wrang_ctr < wrang_max) {
	var shooter = instance_create_layer(x, y, "Instances", obj_bahamowrang)
	shooter.target_x = mouse_x
	shooter.target_y = mouse_y
	wrang_ctr++;
}
#endregion

#region Mega Mech Bullet Attack
if (fire && fired == false && !global.paused) {
	fired = true;
	var bullet_x = x - 10;
	if (image_xscale == 1) bullet_x = x + 10;
	var bullet = instance_create_layer(bullet_x, y + 5, "Instances", obj_mech_bullet);
	alarm[0] = game_get_speed(gamespeed_fps)/2;
}
#endregion

/*
if (sprint_move && stam > 0) {
	if (stam > 0) stam -= 1;
	grav = 0
	part_particles_create(part_sys, x, y, part_trail, 1);
} else {	
	grav = 0.4
	if (stam < max_stam) stam += 2;
} */

#region Sprite Management
if (fired == false) {
	if (moving && !global.paused) {
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

if (global.paused) {
	sprite_index = spr_mech_idle;	
}

#endregion

#region Platformer Code
var move = -left_move + right_move; 
hsp = move * moveSpeed;

if (vsp < 10) { 
	vsp += grav; 
}

/*
if (place_meeting(x, y + 1, obj_block)) { 
	vsp = (up_move || sprint_move) * -jumpSpeed 
} */

if (place_meeting(x, y + 1, obj_block)) {
    if (up_move) {
        vsp = -jumpSpeed;
    }
}

// Jetpack effect: Hold Shift to go up
if (sprint_move && stam > 0 && stam_recharge == false && !global.paused) {
    vsp = -3; // jetpack thrust
    stam -= 0.5;
    grav = 0; // no gravity while boosting
    part_particles_create(part_sys, x, y + 16, part_trail, 1); // jetpack particles
} else {
    grav = 0.4;
	if (stam < max_stam) stam += 0.5;
}

if (stam <= 0) {
	stam_recharge = true;	
}

if (stam_recharge) {
	if (stam < max_stam) stam += 1;
	if (stam == max_stam) stam_recharge = false;
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
#endregion

#region Radar Animation
radar_frame += radar_speed;
// Wrap animation frame if needed
if (radar_frame >= sprite_get_number(radar_sprite)) {
    radar_frame = 0;
}
#endregion

#region Mission Failed Criteria
if (timer == 0 || hp <= 0) {
	if (draw_mission_failed == false) effect_create_above(ef_explosion, x, y, 1, c_red);
	sprite_index = spr_empty;
	draw_mission_failed = true;	
}
#endregion

#region Wave Completion
if (wave_1_complete == false && juul_hp == 600 && instance_exists(obj_mech_spawner1) && obj_mech_spawner1.enemy_timer == -1 && instance_number(obj_juul_enemy) == 0 && timer > 0) {
	instance_destroy(obj_mech_spawner1);
	instance_create_layer(10, 10, "Instances", obj_mech_spawner2);
	timer = 120 * 60;
	wave_1_complete = true;
}

if (wave_2_complete == false && juul_hp == 300 && instance_exists(obj_mech_spawner2) && obj_mech_spawner2.enemy_timer == -1 && instance_number(obj_juul_enemy) == 0 && timer > 0) {
	instance_destroy(obj_mech_spawner2);
	instance_create_layer(10, 10, "Instances", obj_mech_spawner3);
	timer = 180 * 60;
	wave_2_complete = true;
}
#endregion

effect_juul_hit -= 0.005;
effect_hit -= 0.01;

