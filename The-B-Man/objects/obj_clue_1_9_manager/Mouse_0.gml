/// @description Insert description here
// You can write your code in this editor

if (clickable) {
	draw_thing = true;

	obj_clue_manager.selected_clue = clue_number;

	layer_set_visible("Display", true);
	
	obj_decrypter_A.clicked = false;
	obj_decrypter_B.clicked = false;
	obj_decrypter_C.clicked = false;
	obj_decrypter_D.clicked = false;
}




//show_debug_message("Question Number: " + string(question_number));