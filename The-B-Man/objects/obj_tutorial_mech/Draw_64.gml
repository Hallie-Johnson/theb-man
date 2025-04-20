/// @description Insert description here
// You can write your code in this editor

var step_text = "";



if (tutorial_step == 1)
	step_text = "Welcome to the B-MECH Tutorial!"
else if (tutorial_step == 2)
	step_text = "Press [D] to move RIGHT."
else if (tutorial_step == 3)
	step_text = "Press [A] to move LEFT."
else if (tutorial_step == 4)
	step_text = "Press [W] to JUMP."
else if (tutorial_step == 5)
	step_text = "Press and hold [SHIFT] to activate JET BOOST."
else if (tutorial_step == 6) 
	step_text = "JET BOOSTING use stamina.\nTry not to run out or you will fall down."
else if (tutorial_step == 7) 
	step_text = "Use the [LEFT MOUSE BUTTON - LMB] to FIRE."
else if (tutorial_step == 8) 
	step_text = "Use the [RIGHT MOUSE BUTTON - RMB] to throw a GOLDEN B-WRANG."
else if (tutorial_step == 9) 
	step_text = "GOLDEN B-WRANGS can block bullets from the Jester's weapon."
else if (tutorial_step == 10) 
	step_text = "Master this training by defeating these enemies within the timeframe.";
else if (tutorial_step == 11) 
	step_text = "Press [ESC] to PAUSE the game at any time."


if (!global.paused && tutorial_step < 12 && !obj_mech.draw_mission_failed && !obj_mech.draw_mission_complete) {

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