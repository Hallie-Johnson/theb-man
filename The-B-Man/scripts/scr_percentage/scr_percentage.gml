// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function calculate_completion_percentage(save_data) {
    var total = 0;
    var complete = 0;

    var keys = variable_struct_get_names(save_data);
    var key_count = array_length(keys);

    for (var i = 0; i < key_count; i++) {
        var key = keys[i];

        // Skip excluded fields
        if (
            key == "timestamp" || 
            key == "fullscreen" || 
            key == "sound_effects" || 
            key == "sound_music" || 
            key == "clues" || 
			key == "upgrade_points" || 
            key == "clues_unlocked"
        ) {
            continue;
        }

        //total += 1;
        var val = save_data[$ key]; // Use [$ key] to access struct fields dynamically

        if (string_pos("upgrade", key) > 0 || string_pos("clues", key) > 0) {
            if (val == 3) {
                //complete += 1;
            }
			complete += val;
			total += 3;
        } else {
            if (val == true) {
                complete += 1;
            }
			total += 1;
        }
		
		show_debug_message(string(val) + "   " + string(key) + "   " + string(total) + "   " + string(complete));
		
    }

    var percentage = (total > 0) ? (complete / total) * 100 : 0;
	
    return percentage;
}