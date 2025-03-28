/// @description Insert description here
// You can write your code in this editor

var step_text = "";



if (tutorial_step == 1)
	step_text = "Welcome to the B-WING Tutorial!"
else if (tutorial_step == 2)
	step_text = "Press [D] to move RIGHT."
else if (tutorial_step == 3)
	step_text = "Press [A] to move LEFT."
else if (tutorial_step == 4)
	step_text = "Press [W] to move UP."
else if (tutorial_step == 5)
	step_text = "Press [S] to move DOWN."
else if (tutorial_step == 6)
	step_text = "Press [A] or [D] and press [SHIFT] to BOOST."
else if (tutorial_step == 7)
	step_text = "Because of the high speed, you cannot move up or down \nwhen boosting. BOOSTING also uses stamina."
else if (tutorial_step == 8)
	step_text = "Aim on the screen with your mouse and use [LEFT MOUSE BUTTON - LMB] to fire."
else if (tutorial_step == 9)
	step_text = "If the crosshair is WHITE or YELLOW, you are in range and can fire.\nIf the crosshair is GRAY, then you are not in range and cannot fire."
else if (tutorial_step == 10)
	step_text = "Make sure to face the enemy when shooting in order to take it down."
else if (tutorial_step == 11)
	step_text = "Enemies will spawn shortly. Keep track of your health.\nIf you lose it all, you will fail the mission."
else if (tutorial_step == 12)
	step_text = "One enemy claims the sky: the Frost Fighter.\nWhen in range, these bots will shoot at you. Defeat the Frost Fighter."
else if (tutorial_step == 13)
	step_text = "Upon defeating a Frost Fighter, a pickup to\nreplenish health or your boost has a chance of being dropped."
else if (tutorial_step == 14) 
	step_text = "Master this training by defeating these enemies within the timeframe.";
else if (tutorial_step == 15) 
	step_text = "Press [ESC] to PAUSE the game at any time."


if (!global.paused && tutorial_step < 16 && !obj_bahamowing.draw_mission_failed && !obj_bahamowing.draw_mission_complete) {

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