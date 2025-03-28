/// @description Insert description here
// You can write your code in this editor

var step_text = "";



if (tutorial_step == 1)
	step_text = "Welcome to the B-WRANG Tutorial!"
else if (tutorial_step == 2)
	step_text = "Press [D] to move RIGHT."
else if (tutorial_step == 3)
	step_text = "Press [A] to move LEFT."
else if (tutorial_step == 4)
	step_text = "Press [W] to JUMP."
else if (tutorial_step == 5)
	step_text = "Press [A] or [D] and press [SHIFT] to SPRINT."
else if (tutorial_step == 6)
	step_text = "Use the [LEFT MOUSE BUTTON - LMB] to PUNCH."
else if (tutorial_step == 7)
	step_text = "SPRINTING and PUNCHING use stamina.\nTry not to run out or you will need to rest and be vulnerable to attacks."
else if (tutorial_step == 8)
	step_text = "Use the [RIGHT MOUSE BUTTON - RMB] to throw a B-WRANG."
else if (tutorial_step == 9)
	step_text = "The B-WRANG will go wherever the mouse is."
else if (tutorial_step == 10)
	step_text = "Enemies will spawn shortly. Keep track of your health.\nIf you lose it all, you will fail the mission."
else if (tutorial_step == 11)
	step_text = "The first enemy is a Jester Fighter Bot.\nIt will damage you if you touch it. Defeat the Fighter Bot."
else if (tutorial_step == 12)
	step_text = "The second enemy is a Jester Ranged Bot.\nIt will damage you if you touch it and it shoots at you. Defeat the Ranged Bot."
else if (tutorial_step == 13)
	step_text = "The third enemy is a Jester Tank Bot.\nIt will do massive damage if you touch it. Defeat the Tank Bot."
else if (tutorial_step == 14)
	step_text = "Master this training by defeating this wave of enemies."
else if (tutorial_step == 15)
	step_text = "Press [ESC] to PAUSE the game at any time."


if (!global.paused && tutorial_step < 17 && !obj_tutorial_bahamowrang_bahaman.draw_mission_failed && !obj_tutorial_bahamowrang_bahaman.draw_mission_complete) {

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