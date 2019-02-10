switch(state) {
	case PLAYER_STATE.WAIT:
		image_speed = 0.3;
		sprite_index = asset_get_index("s" + string(skin) + "Idle");
		draw_self();
		break;
		
	case PLAYER_STATE.NAVIGATE:
		image_speed = 0.3;
		sprite_index = asset_get_index("s" + string(skin) + "Idle");
		draw_self();
		break;
		
	case PLAYER_STATE.CHARGE:
		image_speed = 0;
		sprite_index = asset_get_index("s" + string(skin) + "Cast");
		draw_self();
		break;
		
	case PLAYER_STATE.CAST:
		image_speed = 0;
		sprite_index = asset_get_index("s" + string(skin) + "Cast");
		draw_self();
		break;
		
	case PLAYER_STATE.HURT:
		image_speed = 0.3;
		sprite_index = asset_get_index("s" + string(skin) + "Hurt");
		draw_self();
		break;
		
	case PLAYER_STATE.DEAD:
		image_speed = 0.3;
		sprite_index = asset_get_index("s" + string(skin) + "Hurt");
		draw_self();
		break;
}