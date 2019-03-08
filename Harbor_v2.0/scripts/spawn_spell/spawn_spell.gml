if (spellInst == noone) {
	if (global.spellData[boardInst.cursor, SP.ORIGIN] == TEAM.FRIENDLY)
		var obj = id;
	else 
		var obj = enemy;

	if (global.spellData[boardInst.cursor, SP.MOVES] != noone)
		var s = instance_create_layer(obj.x, obj.y, "Spells", oSpell);			
	else
		if (obj == id)
			var s = instance_create_layer(obj.x, obj.y - 5, "Spells", oSpell);			
	
	
	spellInst = s;
	
	// Spell Props
	s.owner = id;
	s.target = enemy;
	s.moves = global.spellData[boardInst.cursor, SP.MOVES];
	s.damageLo = global.spellData[boardInst.cursor, SP.DAMAGE_LOW];
	s.damageHi = global.spellData[boardInst.cursor, SP.DAMAGE_HIGH];
	s.accuracy = global.spellData[boardInst.cursor, SP.ACCURACY];
	
	s.sprite_index = asset_get_index("s" + string(global.spellData[boardInst.cursor, SP.SPELL_NAME]));
	
	state = PLAYER_STATE.CASTING;
}