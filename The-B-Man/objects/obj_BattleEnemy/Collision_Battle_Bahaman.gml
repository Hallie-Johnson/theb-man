/// @description Insert description here
// You can write your code in this editor

#region Knockback

if ((Battle_Bahaman.state != BattleState.Attacking) || (Battle_Bahaman.state == BattleState.Attacking && Battle_Bahaman.attack_type == 1)) {
	
	// Against Player
	if (angleDifference <= -135 || angleDifference >= 135) {
		Battle_Bahaman.x -= knockback_effect;
	} else {
		Battle_Bahaman.x += knockback_effect;  
	}
	
	Battle_Bahaman.hp = Battle_Bahaman.hp - 50
	
} else {
	
	// Against Enemy
	if (angleDifference <= -135 || angleDifference >= 135) {
		x += knockback_effect;
	} else {
		x -= knockback_effect; 
	}
	
	hp = hp - 100
	
	move_speed = 0;

	if (alarm[1] < 0) {
		alarm[1] = hit_cooldown;
	}
	
	
}


#endregion


#region OLD CODE
/*if (angleDifference > 45 && angleDifference < 135) Battle_Bahaman.y -= knockback_effect;
	else if (angleDifference > -135 && angleDifference < -45) Battle_Bahaman.y += knockback_effect;
	else*/ 

/* if (angleDifference > 45 && angleDifference < 135) y += knockback_effect;
	else if (angleDifference > -135 && angleDifference < -45) y -= knockback_effect;
	else*/ 
#endregion
	