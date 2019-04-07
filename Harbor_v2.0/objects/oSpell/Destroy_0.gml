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
				var dam = irandom_range(dLo, dHi)
				
				// Add Chain Damage
				if (global.spellData[owner.boardInst.cursor, SP.CHAIN_PIECE] != ELEMENT.NONE)
					dam += compute_chain_damage(owner.boardInst);
				
				owner.enemy.life -= dam;
				float_text(owner.enemy.x, owner.enemy.y, -dam, 0);
			}
		}
	
		// Clear Values & Progress State Machine
		owner.state = PLAYER_STATE.WAIT;
		owner.spellInst = noone;
		owner.boardInst.state = BOARD_STATE.SPELL_BOOK;
		owner.playedSpellSound = false;
		owner.boardInst.cursorI = owner.boardInst.gridW / 2;
		owner.boardInst.cursorJ = owner.boardInst.gridH / 2;
	}
	else
		owner = noone;
}