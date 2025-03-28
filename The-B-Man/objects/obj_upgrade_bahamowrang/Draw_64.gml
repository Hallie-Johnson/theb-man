/// @description Insert description here
// You can write your code in this editor

if (draw_upgrades) {
	
	var mousex = device_mouse_x_to_gui(0); // Adjust to `mouse_x` if not using GUI
	var mousey = device_mouse_y_to_gui(0);
	
	//draw_rectangle(170, 250, 500, 375, false)
	//draw_rectangle(170, 450, 500, 575, false)
	//draw_rectangle(170, 650, 500, 775, false)
	
	#region Health Upgrade
	
	draw_text(175, 200, "HEALTH LVL. " + string(global.upgrade_wrang_health) + "/3");
	
	if (global.upgrade_points > 0) {
		if (global.upgrade_wrang_health == 0) {
			draw_sprite_ext(spr_upgrade_button, 0, 170, 250, 7, 7, 0, c_white, 1);
		} else if (global.upgrade_wrang_health == 1) {
			draw_sprite_ext(spr_upgrade_button, 1, 170, 250, 7, 7, 0, c_white, 1);
		} else if (global.upgrade_wrang_health == 2) {
			draw_sprite_ext(spr_upgrade_button, 2, 170, 250, 7, 7, 0, c_white, 1);
		}
	} else {
		if (global.upgrade_wrang_health == 0) {
			draw_sprite_ext(spr_upgrade_button, 3, 170, 250, 7, 7, 0, c_white, 1);
		} else if (global.upgrade_wrang_health == 1) {
			draw_sprite_ext(spr_upgrade_button, 4, 170, 250, 7, 7, 0, c_white, 1);
		} else if (global.upgrade_wrang_health == 2) {
			draw_sprite_ext(spr_upgrade_button, 5, 170, 250, 7, 7, 0, c_white, 1);
		}
	}
	
	if (global.upgrade_wrang_health == 3) {
		draw_sprite_ext(spr_upgrade_button, 6, 170, 250, 7, 7, 0, c_white, 1);
	}
	
	if (mousex > 170 && mousex < 500 && mousey > 250 && mousey < 375) {
		if (mouse_check_button_pressed(mb_left)) {
			
			if (global.upgrade_points > 0 && global.upgrade_wrang_health < 3) {
				if (global.sound_effects) audio_play_sound(snd_sfx_upgrade, 1, false);
				global.upgrade_points--;
				global.upgrade_wrang_health++;
				instance_create_layer(x, y, "Save", obj_Save);
			}
			
		}
	}
	
	#endregion
	
	#region Damage Upgrade
	
	draw_text(175, 400, "DAMAGE LVL. " + string(global.upgrade_wrang_damage) + "/3");
	
	if (global.upgrade_points > 0) {
		if (global.upgrade_wrang_damage == 0) {
			draw_sprite_ext(spr_upgrade_button, 0, 170, 450, 7, 7, 0, c_white, 1);
		} else if (global.upgrade_wrang_damage == 1) {
			draw_sprite_ext(spr_upgrade_button, 1, 170, 450, 7, 7, 0, c_white, 1);
		} else if (global.upgrade_wrang_damage == 2) {
			draw_sprite_ext(spr_upgrade_button, 2, 170, 450, 7, 7, 0, c_white, 1);
		}
	} else {
		if (global.upgrade_wrang_damage == 0) {
			draw_sprite_ext(spr_upgrade_button, 3, 170, 450, 7, 7, 0, c_white, 1);
		} else if (global.upgrade_wrang_damage == 1) {
			draw_sprite_ext(spr_upgrade_button, 4, 170, 450, 7, 7, 0, c_white, 1);
		} else if (global.upgrade_wrang_damage == 2) {
			draw_sprite_ext(spr_upgrade_button, 5, 170, 450, 7, 7, 0, c_white, 1);
		}
	}
	
	if (global.upgrade_wrang_damage == 3) {
		draw_sprite_ext(spr_upgrade_button, 6, 170, 450, 7, 7, 0, c_white, 1);
	}
	
	if (mousex > 170 && mousex < 500 && mousey > 450 && mousey < 575) {
		if (mouse_check_button_pressed(mb_left)) {
			
			if (global.upgrade_points > 0 && global.upgrade_wrang_damage < 3) {
				if (global.sound_effects) audio_play_sound(snd_sfx_upgrade, 1, false);
				global.upgrade_points--;
				global.upgrade_wrang_damage++;
				instance_create_layer(x, y, "Save", obj_Save);
			}
			
		}
	}
	
	#endregion
	
	#region Count Upgrade
	
	draw_text(175, 600, "COUNT LVL. " + string(global.upgrade_wrang_count) + "/3");
	
	if (global.upgrade_points > 0) {
		if (global.upgrade_wrang_count == 0) {
			draw_sprite_ext(spr_upgrade_button, 0, 170, 650, 7, 7, 0, c_white, 1);
		} else if (global.upgrade_wrang_count == 1) {
			draw_sprite_ext(spr_upgrade_button, 1, 170, 650, 7, 7, 0, c_white, 1);
		} else if (global.upgrade_wrang_count == 2) {
			draw_sprite_ext(spr_upgrade_button, 2, 170, 650, 7, 7, 0, c_white, 1);
		}
	} else {
		if (global.upgrade_wrang_count == 0) {
			draw_sprite_ext(spr_upgrade_button, 3, 170, 650, 7, 7, 0, c_white, 1);
		} else if (global.upgrade_wrang_count == 1) {
			draw_sprite_ext(spr_upgrade_button, 4, 170, 650, 7, 7, 0, c_white, 1);
		} else if (global.upgrade_wrang_count == 2) {
			draw_sprite_ext(spr_upgrade_button, 5, 170, 650, 7, 7, 0, c_white, 1);
		}
	}
	
	if (global.upgrade_wrang_count == 3) {
		draw_sprite_ext(spr_upgrade_button, 6, 170, 650, 7, 7, 0, c_white, 1);
	}
	
	if (mousex > 170 && mousex < 500 && mousey > 650 && mousey < 775) {
		if (mouse_check_button_pressed(mb_left)) {
			
			if (global.upgrade_points > 0 && global.upgrade_wrang_count < 3) {
				if (global.sound_effects) audio_play_sound(snd_sfx_upgrade, 1, false);
				global.upgrade_points--;
				global.upgrade_wrang_count++;
				instance_create_layer(x, y, "Save", obj_Save);
			}
			
		}
	}
	
	#endregion
	
	
}