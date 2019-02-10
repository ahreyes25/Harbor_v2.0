enum PLAYER_STATE { WAIT, NAVIGATE, CHARGE, CAST, HURT, DEAD }

boardInst		= noone;
ground			= noone;
state			= PLAYER_STATE.WAIT;
spellBook		= noone;
spellBookIndex	= 0;
pid				= noone;
enemy			= noone;

skin	= "";

image_xscale = 1 + (-2 * (x > room_width / 2));