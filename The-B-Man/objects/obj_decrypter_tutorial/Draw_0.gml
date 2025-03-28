/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_set_font(fnt_default)

draw_set_halign(fa_center)

draw_set_color(c_black)
draw_text(room_width / 2, room_height - 320, instructions[index]);
draw_text(room_width/2, room_height/2 - 450 + 10, "['A' OR 'D'] TO NAVIGATE");

draw_set_color(c_white)
draw_text(room_width / 2, room_height - 325, instructions[index]);
draw_text(room_width/2, room_height/2 - 450 + 5, "['A' OR 'D'] TO NAVIGATE");
