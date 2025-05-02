/// @description Insert description here
// You can write your code in this editor

time += 0.1;
y = initial_y + sin(time) * 5;


var room_check = room == rm_IconBoss || room == rm_IconHelp || room == rm_IconHome || room == rm_IconSettings || room == rm_IconIndex

//show_debug_message(string(room_check) + "   " + string (global.upgrade_points > 0));

if (room_check) {
	if (global.upgrade_points > 0) visible = true;
	else visible = false;
} else {
	visible = false;	
}