switch(state) {
	case PLAYER_STATE.WAIT:
		check_spell_hit();
		break;
	
	// Hold For Chaining and Board State Change
	case PLAYER_STATE.CHARGE:
		check_spell_hit();
		apply_lasting_effects();
		break;
		
	case PLAYER_STATE.CAST:
		play_spell_sound();
		check_spell_hit();
		spawn_spell();
		break;
	
	// Lasting: While Spell Instance Exists
	case PLAYER_STATE.CASTING:
		check_spell_hit();
		break;
		
	case PLAYER_STATE.HURT:
		hurt_sound();
		reset_hurt_state();
		break;
		
	case PLAYER_STATE.DEAD:
		instance_destroy();
		break;
} 

if (state != PLAYER_STATE.HURT)
	playedHurtSound = false;
if (state == PLAYER_STATE.CASTING)
	appliedEffects = false;
if (life <= 0)
	state = PLAYER_STATE.DEAD;
