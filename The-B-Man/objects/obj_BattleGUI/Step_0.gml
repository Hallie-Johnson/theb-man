/// @description Insert description here
// You can write your code in this editor

bahamarang_ctr = 3 - Battle_Bahaman.bahamawrangs


animation_frame += animation_speed;

// Wrap animation frame if needed
if (animation_frame >= sprite_get_number(animated_sprite)) {
    animation_frame = 0;
}

go_animation_frame += go_animation_speed;

// Wrap animation frame if needed
if (go_animation_frame >= sprite_get_number(go_animation)) {
    go_animation_frame = 0;
}

if (Battle_Bahaman.hp <= 500) {
	health_warning = 1 - (Battle_Bahaman.hp / 500)
}
