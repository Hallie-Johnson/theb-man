/// @description Insert description here
// You can write your code in this editor

draw_self();

if (obj_clue_manager.selected_clue == clue_number) {

	var q = questions[question_number];
	
	// Maximum characters per line
	var max_characters = 65;

	// Wrap the question text
	var wrapped_text = wrap_text(q.question_text, max_characters);

	global.correct_answer = q.correct_answer;
	
	//show_debug_message(global.correct_answer + " " + string(global.correct_answer == "b"));
	
	draw_set_color(c_white);

	draw_text(obj_decrypter_question.x + 75, obj_decrypter_question.y + 50, "CLUE" + string(q.question_number) + ": " + wrapped_text);
	draw_text(obj_decrypter_A.x + 50, obj_decrypter_A.y + 30, "A: " + q.answer_a);
	draw_text(obj_decrypter_B.x + 50, obj_decrypter_B.y + 30, "B: " + q.answer_b);
	draw_text(obj_decrypter_C.x + 50, obj_decrypter_C.y + 30, "C: " + q.answer_c);
	draw_text(obj_decrypter_D.x + 50, obj_decrypter_D.y + 30, "D: " + q.answer_d);

}



function wrap_text(text, max_characters) {
    var wrapped_text = "";     // Final wrapped text
    var current_line = "";     // Current line being built
    var words = string_split(text, " "); // Split the text into words by spaces

    // Loop through each word
    for (var i = 0; i < array_length(words); i++) {
        var word = words[i];

        // Check if adding the word exceeds the max characters for the line
        if (string_length(current_line) + string_length(word) + 1 > max_characters) {
            // Add current line to wrapped text and start a new line
            wrapped_text += current_line + "\n";
            current_line = word;
        } else {
            // Add the word to the current line
            if (string_length(current_line) > 0) current_line += " ";
            current_line += word;
        }
    }

    // Add the last line
    if (string_length(current_line) > 0) {
        wrapped_text += current_line;
    }

    return wrapped_text;
}