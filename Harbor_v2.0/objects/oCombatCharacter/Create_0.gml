enum PLAYER_STATE { 
	WAIT, CHARGE, CAST, CASTING, HURT, DEAD 
}

boardInst		= noone;
ground			= noone;
state			= PLAYER_STATE.WAIT;
spellBook		= noone;
spellBookIndex	= 0;
pid				= noone;
enemy			= noone;
skin			= "";
spellInst		= noone;
startingLife	= noone;
life			= noone;
maxLife			= noone;

playedHurtSound			= false;
playedSpellSound		= false;

image_xscale = 1 + (-2 * (x > room_width / 2));

lastingEffects = ds_list_create();
appliedEffects = false;