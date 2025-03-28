/// @description Insert description here
// You can write your code in this editor

#region Battle Icon Attack 1
draw_sprite_ext(
    BattleIconAttack1,							// sprite
    0,											// sub-image
    x_pos - 250,									// x position
    y_pos,										// y position
    scale_x,									// x scale
    scale_y,									// y scale
    0,											// rotation
    c_white,									// color
    1											// alpha
);

#endregion

#region Battle Icon Attack 2
draw_sprite_ext(
    BattleIconAttack2,							// sprite
    0,											// sub-image
    x_pos - 85,								// x position
    y_pos,										// y position
    scale_x,									// x scale
    scale_y,									// y scale
    0,											// rotation
    c_white,									// color
    1											// alpha
);

#endregion

#region Battle Icon Block
draw_sprite_ext(
    BattleIconBlock,							// sprite
    0,											// sub-image
    x_pos + 85,									// x position
    y_pos,										// y position
    scale_x,									// x scale
    scale_y,									// y scale
    0,											// rotation
    c_white,									// color
    1											// alpha
);

#endregion

#region Battle Icon Dash
draw_sprite_ext(
    BattleIconDash,							// sprite
    0,											// sub-image
    x_pos + 250,								// x position
    y_pos,										// y position
    scale_x,									// x scale
    scale_y,									// y scale
    0,											// rotation
    c_white,									// color
    1											// alpha
);

#endregion

#region Attack Select

if (Battle_Bahaman.attack_type == 2) {
	attack_pos = x_pos - 85
} else {
	attack_pos = x_pos - 250
}

draw_sprite_ext(
    animated_sprite,          // sprite
    floor(animation_frame),  // sub-image (round down to nearest integer)
    attack_pos,             // x position
    y_pos - 30,             // y position
    scale_x + 1,                    // x scale
    scale_y + 1,                    // y scale
    0,                    // rotation
    c_white,              // color
    1                     // alpha
);

#endregion

#region Status Bars (Health / Stamina)

draw_sprite_ext(
    spr_bahaman_health_effect,							// sprite
    0,											// sub-image
    0,									// x position
    0,										// y position
    scale_x + 7,									// x scale
    scale_y + 7,									// y scale
    0,											// rotation
    c_white,									// color
    health_warning											// alpha
);

var hppc;
hppc = (Battle_Bahaman.hp / Battle_Bahaman.max_hp) * 100;
//draw_healthbar(120, 27, 445, 70, hppc, c_black, bahaman_light_red, bahaman_dark_red, 0, true, true)
draw_healthbar(170, 27, 630, 95, hppc, c_black, bahaman_light_red, bahaman_dark_red, 0, true, true)

var stampc;
stampc = (Battle_Bahaman.stam / Battle_Bahaman.max_stam) * 100
//draw_healthbar(120, 72, 425, 90, stampc, c_black, bahaman_dark_white, bahaman_white, 0, true, true)
draw_healthbar(170, 125, 605, 100, stampc, c_black, bahaman_dark_white, bahaman_white, 0, true, true)

draw_sprite_ext(
    spr_bahaman_healthbar,							// sprite
    0,											// sub-image
    10,									// x position
    10,										// y position
    scale_x + 1,									// x scale
    scale_y + 1,									// y scale
    0,											// rotation
    c_white,									// color
    1											// alpha
);

#endregion

#region GO! Indicator

if (activate_go) {
draw_sprite_ext(
    go_animation,          // sprite
    floor(go_animation_frame),  // sub-image (round down to nearest integer)
    room_width - 500,             // x position
    50,             // y position
    scale_x,                    // x scale
    scale_y,                    // y scale
    0,                    // rotation
    c_white,              // color
    1                     // alpha
);
}

#endregion

//draw_text(x_pos - 185, y_pos + 10, bahamarang_ctr);
draw_set_halign(fa_left);
draw_set_color(c_white)
draw_text_transformed(x_pos - 225, y_pos + 15, bahamarang_ctr, 1.5, 1.5, 0);

draw_text(100, 100, Battle_Bahaman.enemy_ctr);