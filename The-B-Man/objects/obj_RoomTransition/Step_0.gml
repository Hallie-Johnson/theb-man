if (transition) {
    var gui_height = display_get_gui_height();

    // Gradually fill the top and bottom rectangles
    if (draw_height_top < gui_height / 2) {
        draw_height_top += fill_speed;
    }

    if (draw_height_bottom < gui_height / 2) {
        draw_height_bottom += fill_speed;
    }

    // Rotate the sprite
    rotation += rotation_speed;

    // Transition complete: Change room when rotation exceeds the limit
    if (rotation > 1000) {
		audio_stop_all();
        room_goto(target_room);
        transition = false;
    }
} else {
    // Gradually shrink the rectangles when the transition ends
    if (draw_height_top > 0) {
        draw_height_top -= fill_speed;
    }

    if (draw_height_bottom > 0) {
        draw_height_bottom -= fill_speed;
    } else {
        instance_destroy();
    }
}
