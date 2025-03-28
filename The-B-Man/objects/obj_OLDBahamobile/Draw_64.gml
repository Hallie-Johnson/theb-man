/// @description Insert description here
// You can write your code in this editor


if (draw_mission_complete) {
	
	if (room == rm_Street1) room_goto(rm_Street2);
	if (room == rm_Street2) room_goto(rm_Street3);
	if (room == rm_Street3) room_goto(rm_Street1);
	
	/*
	if (room = rm_Street1) {
		global.battle_level1_complete = true;
	} else if (room = rm_Street2) {
		global.battle_level2_complete = true;
	} else if (room = rm_Street3) {
		global.battle_level3_complete = true;
	} 
	
	if (display) {
		
	draw_set_alpha(0.25);
	draw_set_color(c_black);
	draw_rectangle(0, 0, room_width, room_height, false)
	
	draw_set_alpha(0.75);
	draw_set_color(c_black);
	draw_rectangle(0, 200, rectangle_width, room_height - 225, false)
	
	draw_set_alpha(1);
	draw_set_color(#BB1100);
	draw_rectangle(0, 0 + 200, rectangle_width, 225, false)
	draw_rectangle(0, room_height - 200, rectangle_width, room_height - 225, false)
	}
	
	if (rectangle_width >= room_width - 100 && display) {
		draw_sprite_ext(spr_mission_complete, 0, room_width/2, room_height/2 - 100, 4, 4, 0, c_white, 1);
		draw_sprite_ext(spr_mission_button, 0, display_get_gui_width()/2, display_get_gui_height()/2 + 200, 5, 5, 0, c_white, 1);
	}
	
	draw_set_alpha(0.75);
	//draw_rectangle(room_width/2 - 150, room_height/2 + 125,  room_width/2 + 150, room_height/2 + 275, false)
	
	// Variables for the rectangle coordinates
	var x1 = room_width / 2 - 150;
	var y1 = room_height / 2 + 125;
	var x2 = room_width / 2 + 150;
	var y2 = room_height / 2 + 275;

	// Get the mouse position in GUI coordinates
	var mouse_x1 = device_mouse_x_to_gui(0);  // 0 is the first mouse
	var mouse_y1 = device_mouse_y_to_gui(0);

	// Check if the mouse is inside the rectangle when clicking
	if (mouse_x1 > x1 && mouse_x1 < x2 && mouse_y1 > y1 && mouse_y1 < y2) {
		if (mouse_check_button_pressed(mb_left)) {
			// Perform an action when the rectangle is clicked
			display = false;
			obj_Battle_Bahaman.visible = false;
			instance_create_layer(0, 0, "Instances", obj_RoomTransition);
			obj_RoomTransition.target_room = rm_IconHome;	
		}
	} */
	
	
	draw_set_alpha(1);
	draw_set_color(c_white);
	
}
