switch(state) {
	case PLAYER_STATE.WAIT:
		check_spell_hit();
	break;
	
	case PLAYER_STATE.CHARGE:
		check_spell_hit();
	break;
		
	case PLAYER_STATE.CAST:
		play_spell_sound();
		check_spell_hit();
		spawn_spell();
	break;
	
	case PLAYER_STATE.CASTING:
		check_spell_hit();
	break;
		
	case PLAYER_STATE.HURT:
		hurt_sound();
		reset_hurt_state();
	break;
		
	case PLAYER_STATE.DEAD:
	break;
} 

// Reset Hurt Check Var
if (state != PLAYER_STATE.HURT)
	playedHurtSound = false;