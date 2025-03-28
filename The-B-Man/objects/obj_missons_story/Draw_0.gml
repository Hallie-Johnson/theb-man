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

draw_set_font(fnt_default);
draw_set_halign(fa_left);
draw_set_color(c_white);

draw_text(x + 75, y + 100, "MISSION "+ mission_title + "\n\n" + mission_type + "\n\n" + format_text(mission_text, 22));