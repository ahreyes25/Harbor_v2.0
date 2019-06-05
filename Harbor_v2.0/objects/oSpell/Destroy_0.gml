#region Exit Conditions
if (owner == noone) return;
if (!instance_exists(owner)) return;
if (owner.boardInst == noone) return;
if (!instance_exists(owner.boardInst)) return;
if (owner.enemy == noone) return;
if (!instance_exists(owner.enemy)) return;
#endregion
		
// Flood?						
if (global.spellData[owner.boardInst.cursor, SP.FLOOD_CHANCE] != noone) {
	if (chance(global.spellData[owner.boardInst.cursor, SP.FLOOD_CHANCE])) {
		var _floodHeight = irandom_range(global.spellData[owner.boardInst.cursor, SP.FLOOD_AMOUNT_LO], global.spellData[owner.boardInst.cursor, SP.FLOOD_AMOUNT_HI]);
		flood(owner.enemy.boardInst, _floodHeight);
	}
}

// Smoke?						
if (global.spellData[owner.boardInst.cursor, SP.SMOKE_CHANCE] != noone) {
	if (chance(global.spellData[owner.boardInst.cursor, SP.SMOKE_CHANCE])) {
		var _smokeTime = global.spellData[owner.boardInst.cursor, SP.SMOKE_TIME];
		smoke(owner.enemy.boardInst, _smokeTime);
	}
}
					
// Lasting Effects						
if (chance(global.spellData[owner.boardInst.cursor, SP.EFFECT_CHANCE])) {
	var _effectInst = instance_create_layer(owner.enemy.x, owner.enemy.y, "Instances", oLastingEffect);
	_effectInst.owner = owner.enemy;
	_effectInst.depth = _effectInst.owner.depth - 1;
	_effectInst.type = global.spellData[owner.boardInst.cursor, SP.EFFECT_TYPE];
							
	if (ds_exists(_effectInst.owner.lastingEffects, ds_type_list))
		ds_list_add(_effectInst.owner.lastingEffects, _effectInst);
}
		
// Deal Damage					
var _damageLo = global.spellData[owner.boardInst.cursor, SP.DAMAGE_LOW];
var _damageHi = global.spellData[owner.boardInst.cursor, SP.DAMAGE_HIGH];
var _damage = irandom_range(_damageLo, _damageHi)
				
// Add Chain Damage
if (global.spellData[owner.boardInst.cursor, SP.CHAIN_PIECE] != ELEMENT.NONE && global.spellData[owner.boardInst.cursor, SP.CHAIN_PIECE] != noone)
	_damage += compute_chain_damage(owner.boardInst);
				
if (chance(global.spellData[owner.boardInst.cursor, SP.ACCURACY]))
	heal_damage(owner.enemy, -_damage, true);
else
	float_text(owner.enemy.x, owner.enemy.y, 0, 0);
	
// Clear Values & Progress State Machine						
owner.state = PLAYER_STATE.WAIT;
owner.spellInst = noone;
owner.boardInst.state = BOARD_STATE.SPELL_BOOK;
owner.playedSpellSound = false;
owner.boardInst.cursorI = owner.boardInst.gridW / 2;
owner.boardInst.cursorJ = owner.boardInst.gridH / 2;