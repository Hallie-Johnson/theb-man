/// @description Insert description here
// You can write your code in this editor

draw_self();

function format_text(text, max_length) {
    var formatted_text = "";
    var current_line = "";

    // Split the text into words
    var words = string_split(text, " ");

    // Loop through the words and build the lines
    for (var i = 0; i < array_length(words); i++) {
        var word = words[i];

        // Check if adding the next word exceeds the max line length
        if (string_length(current_line) + string_length(word) + 1 > max_length) {
            // Add the current line to the formatted text with a "\n"
            formatted_text += current_line + "\n";
            current_line = word; // Start a new line with the current word
        } else {
            // Add the word to the current line
            if (current_line != "") {
                current_line += " ";
            }
            current_line += word;
        }
    }

    // Add any remaining text as the last line
    if (current_line != "") {
        formatted_text += current_line;
    }

    return formatted_text;
}






if (draw_index) {
	
	draw_set_halign(fa_left);
	draw_set_color(c_white)
	
	if (object_index == obj_index) {
		draw_text(room_width - 500, 175, name + "\n"
		+ "\n" + 
		 + format_text(catchphrase, 24) + "\n"
		+ "\n" + 
		+ " " + format_text(bio, 24) + "\n");
		
	} else {
		draw_text(room_width - 500, 175, name + "\n"
		+ "\n" + 
		+ "\"" + format_text(catchphrase, 24) + "\"" + "\n"
		+ "\n" + 
		+ "Bio: " + format_text(bio, 24) + "\n");
	
		if (visual != noone) {
			draw_sprite_ext(spr_index_shade, 0, room_width/2 + 200, room_height/2 - 100, 1, 1, 0, c_white, 1);
			if (object_index == obj_index_juul_fighter or object_index == obj_index_juul_ranged or object_index == obj_index_juul_tank or object_index == obj_index_cost_flighter or object_index == obj_index_obstacle) {
				draw_sprite_ext(visual, 0, room_width/2 + 200, room_height/2 - 100, 10, 10, 0, c_white, 1);
			} else if (object_index == obj_index_bahamowrang) {
				draw_sprite_ext(visual, 7, room_width/2 + 200, room_height/2 - 100, 10, 10, 0, c_white, 1);
			} else if (object_index == obj_index_bahamobile) {
				draw_sprite_ext(visual, 0, room_width/2 + 200, room_height/2 - 175, 5, 5, 0, c_white, 1);
			} else if (object_index == obj_index_bahamowing) {
				draw_sprite_ext(visual, 0, room_width/2 + 200, room_height/2 - 125, 4, 4, 0, c_white, 1);
			} else if (object_index == obj_index_boost) {
				draw_sprite_ext(visual, 3, room_width/2 + 160, room_height/2 - 100, 15, 15, 0, c_white, 1);
			} else if (object_index == obj_index_health) {
				draw_sprite_ext(visual, 3, room_width/2 + 200, room_height/2 - 100, 15, 15, 0, c_white, 1);
			}
			else {
				draw_sprite_ext(visual, 0, room_width/2 + 200, room_height/2 - 100, 15, 15, 0, c_white, 1);
			}
		}
	}
	
	
}