/// @description Insert description here
// You can write your code in this editor

#region Knockback

if ((obj_Battle_Bahaman.state != Battle_State.Attacking)) {
    // Against Player
    if (angleDifference <= -135 || angleDifference >= 135) {
        obj_Battle_Bahaman.x -= knockback_effect;
    } else {
        obj_Battle_Bahaman.x += knockback_effect;  
    }

    obj_Battle_Bahaman.hp -= 50;
    alarm[1] = hit_cooldown; // Set a cooldown before taking more damage
    
} else {
    // Against Enemy
    if (angleDifference <= -135 || angleDifference >= 135) {
        x += knockback_effect;
    } else {
        x -= knockback_effect; 
    }

    hp -= obj_Battle_Bahaman.damage;
    alarm[1] = hit_cooldown; // Set a cooldown before taking more damage

    move_speed = 0;

    if (alarm[1] < 0) {
        alarm[1] = hit_cooldown;
    }
}

#endregion