if (owner != noone) {
	if (instance_exists(owner)) {
		if (owner.boardInst != noone) {
			if (instance_exists(owner.boardInst)) {
				if (owner.enemy != noone) {
					if (instance_exists(owner.enemy)) {
		
						#region Flood?
						if (global.spellData[owner.boardInst.cursor, SP.FLOOD_CHANCE] != noone) {
							if (chance(global.spellData[owner.boardInst.cursor, SP.FLOOD_CHANCE])) {
								var height = irandom_range(global.spellData[owner.boardInst.cursor, SP.FLOOD_AMOUNT_LO], global.spellData[owner.boardInst.cursor, SP.FLOOD_AMOUNT_HI]);
								flood(owner.enemy.boardInst, height);
							}
						}
						#endregion
	
						#region Smoke?
						if (global.spellData[owner.boardInst.cursor, SP.SMOKE_CHANCE] != noone) {
							if (chance(global.spellData[owner.boardInst.cursor, SP.SMOKE_CHANCE])) {
								var time = global.spellData[owner.boardInst.cursor, SP.SMOKE_TIME];
								smoke(owner.enemy.boardInst, time);
							}
						}
						#endregion
					
						#region Lasting Effects
						if (chance(global.spellData[owner.boardInst.cursor, SP.EFFECT_CHANCE])) {
							var e = instance_create_layer(owner.enemy.x, owner.enemy.y, "Instances", oLastingEffect);
							e.owner = owner.enemy;
							e.depth = e.owner.depth - 1;
							e.type = global.spellData[owner.boardInst.cursor, SP.EFFECT_TYPE];
							
							if (ds_exists(e.owner.lastingEffects, ds_type_list))
								ds_list_add(e.owner.lastingEffects, e);
						}
						#endregion
		
						#region Deal Damage
						var dLo = global.spellData[owner.boardInst.cursor, SP.DAMAGE_LOW];
						var dHi = global.spellData[owner.boardInst.cursor, SP.DAMAGE_HIGH];
						var dam = irandom_range(dLo, dHi)
				
						// Add Chain Damage
						if (global.spellData[owner.boardInst.cursor, SP.CHAIN_PIECE] != ELEMENT.NONE)
							dam += compute_chain_damage(owner.boardInst);
				
						if (chance(global.spellData[owner.boardInst.cursor, SP.ACCURACY]))
							heal_damage(owner.enemy, -dam, true);
						else
							float_text(owner.enemy.x, owner.enemy.y, 0, 0);
						#endregion
	
						#region Clear Values & Progress State Machine
						owner.state = PLAYER_STATE.WAIT;
						owner.spellInst = noone;
						owner.boardInst.state = BOARD_STATE.SPELL_BOOK;
						owner.playedSpellSound = false;
						owner.boardInst.cursorI = owner.boardInst.gridW / 2;
						owner.boardInst.cursorJ = owner.boardInst.gridH / 2;
						#endregion
					}
					else
						owner.enemy = noone;
				}
			}
			else
				owner.boardInst = noone;
		}
	}
	else
		owner = noone;
}