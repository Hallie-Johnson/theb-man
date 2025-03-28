/// @description Insert description here
// You can write your code in this editor

if (shaking) {
    if (shake_timer < shake_duration) {
        x = original_x + irandom_range(-2, 2);
        y = original_y + irandom_range(-2, 2);
        shake_timer++;
    } else {
        shaking = false;
        x = original_x;
        y = original_y;
    }
}


function start_shake() {
    shake_timer = 0;
    shaking = true;
}

