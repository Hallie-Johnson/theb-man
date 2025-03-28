/// @description Insert description here
// You can write your code in this editor

if (draw_mission_complete) {
	draw_mission_failed = false;
}
if (draw_mission_failed) {
	draw_mission_complete = false;
}

if (draw_mission_complete || draw_mission_failed) {
	cursor_sprite = spr_cursor;	
} else {
	cursor_sprite = spr_blank;	
}

#region Player Movement

// Check input for movement
var left_move = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
var right_move = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
var up_move = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
var down_move = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
var sprint_move = keyboard_check(vk_shift);


if (!draw_mission_complete && !draw_mission_failed && disable_movement == false) {
	
	// Change lane index based on input
	if (!global.paused && down_move) {
		lane++;
		if (lane > 2) {
			lane = 2;	
		} else {
			if (global.sound_effects && sound_move == false) {
				sound_move = true;
				move = audio_play_sound(snd_sfx_bahamobile_movement, 1, false);	
			}	
		}
		sound_move = false;
	}

	if (!global.paused && up_move) {
		lane--;
		if (lane < 0) {
			lane = 0;	
		} else {
			if (global.sound_effects && sound_move == false) {
				sound_move = true;
				move = audio_play_sound(snd_sfx_bahamobile_movement, 1, false);	
			}	
		}
		sound_move = false;
	}

	// Smoothly interpolate toward the target lane position
	var target_y = lanes[lane]; // Target y position based on lane
	var smooth_factor = 0.2; // Adjust this for speed of smoothing (0.1 = slow, 0.5 = fast)
	y = lerp(y, target_y, smooth_factor);

	if (!global.paused) {
		angle += slide_speed; // Increment the angle
		x = origin_x + amplitude * sin(angle); // Smooth sliding using sine wave
	}


	if (!global.paused && sprint_move && stam > 0) {
		boost = true;
		
		if (global.sound_effects && sound_boost == false) {
			sound_boost = true;
			boost = audio_play_sound(snd_sfx_boost, 1, false);
			audio_sound_gain(boost, 1, 0);
		}
		
		layer_hspeed(back_layer, car_speed - 2);
		layer_hspeed(back_decor_layer, car_speed - 2);
		part_particles_create(part_sys, x - 30, y + 10, part_trail, 1);
		if (stam > 0) stam -= 0.5;
		catch_up_points += 1;
	} else {
		if (!global.paused) {
			sound_boost = false;
			//audio_sound_gain(boost, 0, 1000);
			
			layer_hspeed(back_layer, car_speed - 0);
			layer_hspeed(back_decor_layer, car_speed - 0);
		} else {
			layer_hspeed(back_layer, 0);
			layer_hspeed(back_decor_layer, 0);
		}
		boost = false;
	}

}

#endregion

#region Mission Failed
if (draw_mission_failed) {
	disable_movement = true;
	if (rectangle_width > room_width) {
		rectangle_width = room_width;
	} else {
		rectangle_width = rectangle_width + rectangle_speed;
	}
}
#endregion

if (catch_up_points >= catch_up_points_max) {
	draw_mission_complete = true;
	disable_movement = true;
	
}

if (draw_mission_complete) {
	if (rectangle_width1 > room_width) {
		rectangle_width1 = room_width;
	} else {
		rectangle_width1 = rectangle_width1 + rectangle_speed1;
	}
}

if (draw_mission_complete == false && draw_mission_failed == false && !global.paused) catch_up_points += idle_rate;


if (keyboard_check(vk_enter)) tracker_pos += 1; // 450
if (keyboard_check(vk_backspace)) tracker_pos -= 1; // 1450


if (catch_up_points <= 0) catch_up_points = 0;

if (clue_ctr >= 3) {
	with (obj_bahamobile_clue) {
		instance_destroy();
	}
}


global.driving_1_clues = clamp(global.driving_1_clues, 0, 3);
global.driving_2_clues = clamp(global.driving_2_clues, 0, 3);
global.driving_3_clues = clamp(global.driving_3_clues, 0, 3);

if (room == rm_Road1) {
	clue_ctr = global.driving_1_clues;
} else if (room == rm_Road2) {
	clue_ctr = global.driving_2_clues;
} else if (room == rm_Road3) {
	clue_ctr = global.driving_3_clues;
}
