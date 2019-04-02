if (owner != noone) {
	// Flood?
	if (global.spellData[owner.boardInst.cursor, SP.FLOOD_CHANCE] != noone) {
		if (chance(global.spellData[owner.boardInst.cursor, SP.FLOOD_CHANCE])) {
			if (instance_exists(owner.enemy)) {
				var height = irandom_range(global.spellData[owner.boardInst.cursor, SP.FLOOD_AMOUNT_LO], global.spellData[owner.boardInst.cursor, SP.FLOOD_AMOUNT_HI]);
				flood(owner.enemy.boardInst, height);
			}
		}
	}
	
	// Clear Values & Progress State Machine
	if (instance_exists(owner)) {
		owner.state = PLAYER_STATE.WAIT;
		owner.spellInst = noone;
		owner.boardInst.state = BOARD_STATE.SPELL_BOOK;
	}
	else
		owner = noone;
}