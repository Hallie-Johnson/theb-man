/// @description Insert description here
// You can write your code in this editor

var step_text = "";



if (tutorial_step == 1)
	step_text = "Welcome to the B-MOBILE Tutorial!"
else if (tutorial_step == 2)
	step_text = "Press [W] to move UP."
else if (tutorial_step == 3)
	step_text = "Press [S] to move DOWN."
else if (tutorial_step == 4)
	step_text = "Press and hold [SHIFT] to BOOST."
else if (tutorial_step == 5)
	step_text = "BOOSTING uses stamina."
else if (tutorial_step == 6)
	step_text = "Items will spawn on the road."
else if (tutorial_step == 7)
	step_text = "These are pickups that will replenish your boost."
else if (tutorial_step == 8)
	step_text = "At the bottom of the screen, there is a bar that shows\nyou how far you are from your target destination."
else if (tutorial_step == 9)
	step_text = "You must use your boost whenever you can\nto reach the target before time runs out. "
else if (tutorial_step == 10)
	step_text = "Obstacles like traffic cones will be on the road.\nAvoid these as these obstacles will increase your distance between you and your target."
else if (tutorial_step == 11)
	step_text = "Cat Traps will spawn on the road too.\nAvoid these obstacles as this will decrease your health. If you hit too many you will fail the mission."
else if (tutorial_step == 12) 
	step_text = "You can collect health pickups to replenish your health."
else if (tutorial_step == 13)
	step_text = "Master this training by getting to the target destination within the timeframe."
else if (tutorial_step == 14)
	step_text = "Press [ESC] to PAUSE the game at any time."


if (!global.paused && tutorial_step < 15 && !obj_bahamobile.draw_mission_failed && !obj_bahamobile.draw_mission_complete) {

draw_set_alpha(0.5)
draw_set_color(c_red)
draw_rectangle(150, 750, display_get_gui_width() - 150, 900, false)

draw_set_alpha(1)
draw_set_halign(fa_center);

draw_set_color(c_black);
draw_text(display_get_gui_width()/2, 805 - 10, step_text);

draw_set_color(c_white);
draw_text(display_get_gui_width()/2, 800 - 10, step_text);

}

draw_set_alpha(1)
draw_set_color(c_white)
draw_set_halign(fa_left);