/// @description Insert description here
// You can write your code in this editor

// Draw GUI Event
//draw_set_halign(fa_left);
//draw_set_valign(fa_top);
//draw_text(100, 100, "Wave: " + string(current_wave) + " / " + string(total_waves));

if (time_left > 0) {
    var minutes = floor(time_left / 60);
    var seconds = floor(time_left) mod 60;
    //draw_text(100, 300, "Starting in: " + string(minutes) + ":" + string(seconds));
} else {
    var minutes = floor(wave_timer / 60);
    var seconds = floor(wave_timer) mod 60;
    ///draw_text(100, 300, "Next wave in: " + string(minutes) + ":" + string(seconds));
}


// Display timer
if (wave_timer >= 0) {
draw_set_halign(fa_left);
draw_set_color(c_black);

if (room != rm_Battle5) draw_text(205, 129, "WAVE " + string(current_wave) + "/" + string(total_waves) + "\nNEXT WAVE IN " + string(seconds));
else draw_text(205, 129, "DEFEAT THE JESTER" + "\nNEXT WAVE IN " + string(seconds));

draw_set_color(c_white);

if (room != rm_Battle5) draw_text(200, 129, "WAVE " + string(current_wave) + "/" + string(total_waves) + "\nNEXT WAVE IN " + string(seconds));
else draw_text(200, 129,  "DEFEAT THE JESTER" + "\nNEXT WAVE IN " + string(seconds));

draw_set_halign(fa_left);

} else {
	draw_set_halign(fa_left);
	draw_set_color(c_black);
	
	if (room != rm_Battle5) draw_text(205, 129, "WAVE " + string(current_wave) + "/" + string(total_waves) + "\nNEXT WAVE IN -");
	else draw_text(205, 129,  "DEFEAT THE JESTER" + "\nNEXT WAVE IN -");
	
	draw_set_color(c_white);
	
	if (room != rm_Battle5) draw_text(200, 129, "WAVE " + string(current_wave) + "/" + string(total_waves) + "\nNEXT WAVE IN -");
	else draw_text(200, 129,  "DEFEAT THE JESTER" + "\nNEXT WAVE IN -");
	
	draw_set_halign(fa_left);
}