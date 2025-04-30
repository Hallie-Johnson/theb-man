/// @description Insert description here
// You can write your code in this editor

global.debug = false;

global.paused = false;

global.timestamp = "N/A";

global.fullscreen = true;

#region Sound
global.sound_effects = true;
global.sound_music = true;
#endregion

#region Clues

global.clues = 0;
global.upgrade_points = 0;
global.clues_unlocked = [0, 
				0, 0, 0, 0, 0, 0, 0, 0, 0, 
				0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0];

#endregion

#region Bahamowrangs

global.upgrade_wrang_health = 0;
global.upgrade_wrang_damage = 0;
global.upgrade_wrang_count = 0;

global.battle_level1_complete = false;
global.battle_level2_complete = false;
global.battle_level3_complete = false;
global.battle_level4_complete = false;
global.battle_level5_complete = false;

global.battle_1_clues = 0;
global.battle_2_clues = 0;
global.battle_3_clues = 0;

#endregion

#region Bahamobile

global.upgrade_mobile_health = 0;
global.upgrade_mobile_boost = 0;
global.upgrade_mobile_speed = 0;

global.driving_level1_complete = false;
global.driving_level2_complete = false;
global.driving_level3_complete = false;
global.driving_level4_complete = false;

global.driving_1_clues = 0;
global.driving_2_clues = 0;
global.driving_3_clues = 0;

#endregion

#region Bahamowing

global.upgrade_wing_health = 0;
global.upgrade_wing_damage = 0;
global.upgrade_wing_speed = 0;

global.flying_level1_complete = false;
global.flying_level2_complete = false;
global.flying_level3_complete = false;
global.flying_level4_complete = false;

global.flying_1_clues = 0;
global.flying_2_clues = 0;
global.flying_3_clues = 0;

#endregion

#region Tutorials
global.tutorial_battle_complete = false;
global.tutorial_driving_complete = false;
global.tutorial_flying_complete = false;
global.tutorial_decrypter_complete = false;
#endregion

draw_set_font(fnt_default);

//room_goto(rm_Intro);
//room_goto(rm_IconHome);