if (spellInst == noone) {
	// Check Where to Spawn Spell
	if (global.spellData[boardInst.cursor, SP.ORIGIN] == TEAM.FRIENDLY)
		var obj = id;
	else 
		var obj = enemy;

	// Set Spell Vertical Position To Be Relative To Player Casting
	if (global.spellData[boardInst.cursor, SP.MOVES] != noone)
		var s = instance_create_layer(obj.x, obj.y, "Spells", oSpell);			
	else
		var s = instance_create_layer(obj.x, obj.y - 5, "Spells", oSpell);	
	
	if (instance_exists(s)) {
		
		spellInst = s;
	
		s.owner = id;
		s.target = enemy;
		s.moves = global.spellData[boardInst.cursor, SP.MOVES];
		s.damageLo = global.spellData[boardInst.cursor, SP.DAMAGE_LOW];
		s.damageHi = global.spellData[boardInst.cursor, SP.DAMAGE_HIGH];
		s.accuracy = global.spellData[boardInst.cursor, SP.ACCURACY];
		s.sprite_index = asset_get_index("s" + string(global.spellData[boardInst.cursor, SP.SPELL_NAME]));
		
		state = PLAYER_STATE.CASTING;
	}
}