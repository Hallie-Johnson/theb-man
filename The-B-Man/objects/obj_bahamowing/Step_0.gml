/// @description Insert description here
// You can write your code in this editor

if (draw_mission_complete) draw_mission_failed = false;
if (draw_mission_failed) draw_mission_complete = false;

if (draw_mission_complete || draw_mission_failed) {
	cursor_sprite = spr_cursor;	
} else {
	cursor_sprite = spr_blank;	
}

if (global.paused || draw_mission_complete || draw_mission_failed) {
	disable_movement = true;	
} else {
	disable_movement = false;	
}

global.flying_1_clues = clamp(global.flying_1_clues, 0, 3);
global.flying_2_clues = clamp(global.flying_2_clues, 0, 3);
global.flying_3_clues = clamp(global.flying_3_clues, 0, 3);

if (room == rm_Air1) {
	clue_ctr = global.flying_1_clues;
} else if (room == rm_Air2) {
	clue_ctr = global.flying_2_clues;
} else if (room == rm_Air3) {
	clue_ctr = global.flying_3_clues;
}

#region Player Movement

if (!disable_movement) {
	if (right) x += idle_speed;
	else x -= idle_speed;
}

if ((keyboard_check(vk_left) || keyboard_check(ord("A"))) && !disable_movement) {
	if (keyboard_check(vk_shift) && stam > 0) {
		if (global.sound_effects && sound_boost == false) {
			sound_boost = true;
			boost = audio_play_sound(snd_sfx_boost, 1, false);
			audio_sound_gain(boost, 1, 0);
		}
		x -= boost_speed;
		stam -= 0.5;
		part_particles_create(part_sys, x + 15, y + 4.5, part_trail, 10);
		part_particles_create(part_sys, x + 15, y + 4.5, part_trail, 10);
	}
    else {
		x -= normal_speed;
		sound_boost = false;
		audio_sound_gain(boost, 0, 1000);
	}
    sprite_index = spr_bahamowing_left;
	right = false;
} 
if ((keyboard_check(vk_right) || keyboard_check(ord("D"))) && !disable_movement) {
    if (keyboard_check(vk_shift) && stam > 0) {
		if (global.sound_effects && sound_boost == false) {
			sound_boost = true;
			boost = audio_play_sound(snd_sfx_boost, 1, false);
			audio_sound_gain(boost, 1, 0);
		}
		x += boost_speed;
		stam -= 0.5;
		part_particles_create(part_sys, x - 15, y + 4.5, part_trail, 10);
		part_particles_create(part_sys, x - 15, y + 4.5, part_trail, 10);
	}
	else {
		x += normal_speed;
		sound_boost = false;
		audio_sound_gain(boost, 0, 1000);
	}
    sprite_index = spr_bahamowing_right;
	right = true;
} 

if (keyboard_check(vk_shift) && stam > 0 && !disable_movement) {
	image_angle = 0;
} else {
	if ((keyboard_check(vk_up) || keyboard_check(ord("W"))) && !disable_movement) {
		y -= normal_speed;
		image_angle = 5;
	} else if ((keyboard_check(vk_down) || keyboard_check(ord("S"))) && !disable_movement) {
		y += normal_speed; 
		image_angle = -5;
	} else {
		image_angle = 0;
	}
}



x = clamp(x, 50, room_width - 50)
y = clamp(y, 50, room_height - 50)

#endregion

#region Shooting
if (canShoot && mouse_check_button_pressed(mb_left)) {
    canShoot = false;
    alarm[0] = 30;
	
	
	var view_x = camera_get_view_x(view_camera[0]);
	var view_width = camera_get_view_width(view_camera[0]);
	var x_bullet = x - 7;
	
	show_debug_message(string(display_mouse_get_x()));

	if (display_mouse_get_x() > 700 && right) {
		// Right
		x_bullet = x + 7;
		if (right) {
			var bullet = instance_create_layer(x_bullet, y + 7, "Instances", obj_bahamowing_bullet);
			bullet.direction = point_direction(x, y, mouse_x, mouse_y);
		}
	} else if (display_mouse_get_x() < 1200 && !right) {
		// Left
		if (!right) {
			var bullet = instance_create_layer(x_bullet, y + 7, "Instances", obj_bahamowing_bullet);
			bullet.direction = point_direction(x, y, mouse_x, mouse_y);
		}
	}    
}
#endregion

if (hp <= 0 || (timer <= 0 && instance_number(obj_cost_flighter) > 0)) {
	draw_mission_failed = true;
} 

if (instance_number(obj_cost_flighter) <= 0 && room != rm_Air0) {
	draw_mission_complete = true;	
}


#region Mission Failed
if (draw_mission_failed) {
    disable_movement = true;
    var gui_width = display_get_gui_width(); // Get GUI width dynamically
    if (rectangle_width > gui_width) {
        rectangle_width = gui_width;
    } else {
        rectangle_width += rectangle_speed;
    }
}

#endregion

 #region Mission Completed
if (draw_mission_complete) {
	disable_movement = true;
    var gui_width = display_get_gui_width(); // Use GUI width for animation
    if (rectangle_width1 > gui_width) {
        rectangle_width1 = gui_width;
    } else {
        rectangle_width1 += rectangle_speed1;
    }
}

#endregion

#region Radar Animation
radar_frame += radar_speed;
// Wrap animation frame if needed
if (radar_frame >= sprite_get_number(radar_sprite)) {
    radar_frame = 0;
}
#endregion