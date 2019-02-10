if (!instance_exists(oSpell) || oSpell.owner.id != id) {
	if (global.spellData[boardInst.cursor, SP.ORIGIN] == TEAM.FRIENDLY)
		var obj = id;
	else 
		var obj = enemy;

	var s = instance_create_layer(obj.x, obj.y, "Instances", oSpell);	
	s.owner = id;
	s.moves = global.spellData[boardInst.cursor, SP.MOVES];
	s.sprite_index = asset_get_index("s" + string(global.spellData[boardInst.cursor, SP.SPELL_NAME]));
}