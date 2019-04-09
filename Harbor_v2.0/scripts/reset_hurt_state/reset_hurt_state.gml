// Reset Hurt State
if (!instance_exists(oSpell)) {
	state = PLAYER_STATE.WAIT;
}
else {
	if (spellInst != noone)
		state = PLAYER_STATE.CASTING;
}