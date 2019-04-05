// Draw Stuff
switch(state) {
	case PLAYER_STATE.WAIT:
		image_speed = 0.3;
		sprite_index = asset_get_index("s" + string(skin) + "Idle");
	break;
		
	case PLAYER_STATE.CHARGE:
		if (instance_exists(oSpell)) {
			image_speed = 0;
			sprite_index = asset_get_index("s" + string(skin) + "Cast");
		}
	break;
		
	case PLAYER_STATE.CAST:
		image_speed = 0;
		sprite_index = asset_get_index("s" + string(skin) + "Cast");
	break;
	
	case PLAYER_STATE.CASTING:
		image_speed = 0;
		sprite_index = asset_get_index("s" + string(skin) + "Cast");
	break;
		
	case PLAYER_STATE.HURT:
		image_speed = 0.5;
		sprite_index = asset_get_index("s" + string(skin) + "Hurt");
	break;
		
	case PLAYER_STATE.DEAD:
		image_speed = 0.3;
		sprite_index = asset_get_index("s" + string(skin) + "Hurt");
	break;
}

// Draw Self
if (state != noone)
	draw_self();

// Draw Heart & Health Bar in oPuzzleController