if (owner != noone) {
	if (instance_exists(owner)) {
		owner.state = PLAYER_STATE.WAIT;
		owner.spellInst = noone;
		owner.boardInst.state = BOARD_STATE.SPELL_BOOK;
	}
	else
		owner = noone;
}