/// @description Insert description here
// You can write your code in this editor

draw_self();

if (clicked) {
	
	// draw_sprite_ext( sprite, subimg, x, y, xscale, yscale, rot, colour, alpha );
	
	draw_sprite_ext(spr_mission_panel, 0, room_width/2, room_height/2 - 50, 10, 10, 0, c_white, 1);
	draw_sprite_ext(spr_mission_panel, 0, room_width/2 - 500, room_height/2 - 50, 10, 10, 0, c_white, 1);
	draw_sprite_ext(spr_mission_panel, 0, room_width/2 + 500, room_height/2 - 50, 10, 10, 0, c_white, 1);
	
	
	
	draw_set_halign(fa_center);
	
	draw_set_color(c_black);
	
	draw_text(room_width/2, room_height/2 - 450 + 5, "['A' OR 'D'] TO SELECT  |  [SPACE] TO START  |  [SHIFT] TO EXIT");
	
	draw_text(room_width/2 - 500, room_height/2 - 250 + 5, "MISSION 1");
	draw_text(room_width/2, room_height/2 - 250 + 5, "MISSION 2");
	draw_text(room_width/2 + 500, room_height/2 - 250 + 5, "MISSION 3");
	
	draw_set_color(c_white);
	
	draw_text(room_width/2, room_height/2 - 450, "['A' OR 'D'] TO SELECT  |  [SPACE] TO START  |  [SHIFT] TO EXIT");
	
	draw_text(room_width/2 - 500, room_height/2 - 250, "MISSION 1");
	draw_text(room_width/2, room_height/2 - 250, "MISSION 2");
	draw_text(room_width/2 + 500, room_height/2 - 250, "MISSION 3");
	
	draw_set_halign(fa_right);
	
	draw_sprite_ext(spr_icon_bahamowrang, 0, room_width/2, room_height/2 - 50, 10, 10, 0, c_white, 1);
	draw_sprite_ext(spr_icon_bahamowrang, 7, room_width/2 - 500, room_height/2 - 50, 10, 10, 0, c_white, 1);
	draw_sprite_ext(spr_icon_bahamowrang, 0, room_width/2 + 500, room_height/2 - 50, 10, 10, 0, c_white, 1);
	
	
	
	if (instance_exists(obj_missions_selector)) {
		return;
	}
	else {
		instance_create_layer(room_width/2 - 500, room_height/2 - 50, "Instances_1", obj_missions_selector);
	}
	

} else {
	
	instance_destroy(obj_missions_selector);	
}