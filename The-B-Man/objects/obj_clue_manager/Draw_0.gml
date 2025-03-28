/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_right)) {
    current_question = (current_question + 1) % array_length(questions); // Next question
}
if (keyboard_check_pressed(vk_left)) {
    current_question = (current_question - 1 + array_length(questions)) % array_length(questions); // Previous question
}



if (array_length(questions) > current_question) {
    var q = questions[current_question];

    ////draw_text(100, 50, "Q" + string(q.question_number) + ": " + q.question_text);
   // draw_text(100, 100, "A: " + q.answer_a);
    //draw_text(100, 130, "B: " + q.answer_b);
   // draw_text(100, 160, "C: " + q.answer_c);
   // draw_text(100, 190, "D: " + q.answer_d);
}

