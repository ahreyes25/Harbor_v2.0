if (owner != noone) {
	if (instance_exists(owner)) {
		
		// Flood?
		if (global.spellData[owner.boardInst.cursor, SP.FLOOD_CHANCE] != noone) {
			if (chance(global.spellData[owner.boardInst.cursor, SP.FLOOD_CHANCE])) {
				if (instance_exists(owner.enemy)) {
					var height = irandom_range(global.spellData[owner.boardInst.cursor, SP.FLOOD_AMOUNT_LO], global.spellData[owner.boardInst.cursor, SP.FLOOD_AMOUNT_HI]);
					flood(owner.enemy.boardInst, height);
				}
			}
		}
	
		// Smoke?
		if (global.spellData[owner.boardInst.cursor, SP.SMOKE_CHANCE] != noone) {
			if (chance(global.spellData[owner.boardInst.cursor, SP.SMOKE_CHANCE])) {
				if (instance_exists(owner.enemy)) {
					var time = global.spellData[owner.boardInst.cursor, SP.SMOKE_TIME];
					smoke(owner.enemy.boardInst, time);
				}
			}
		}
		
		// Deal Damage
		if (owner.enemy != noone) {
			if (instance_exists(owner.enemy)) {
				var dLo = global.spellData[owner.boardInst.cursor, SP.DAMAGE_LOW];
				var dHi = global.spellData[owner.boardInst.cursor, SP.DAMAGE_HIGH];
				owner.enemy.life -= irandom_range(dLo, dHi);
			}
		}
	
		// Clear Values & Progress State Machine
		owner.state = PLAYER_STATE.WAIT;
		owner.spellInst = noone;
		owner.boardInst.state = BOARD_STATE.SPELL_BOOK;
		owner.playedSpellSound = false;
	}
	else
		owner = noone;
}