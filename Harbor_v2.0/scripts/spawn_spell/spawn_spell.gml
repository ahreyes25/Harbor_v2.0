/// @param CombatCharacter*

#region Read Parameters

	if (argument_count == 1)
		var cc = argument[0];
	else
		var cc = id;
		
#endregion

#region Check Exit Conditions

if (!instance_exists(cc))
		return;
	if (!instance_exists(cc.boardInst))
		return;

#endregion

if (cc.spellInst == noone) {
		
	#region Check Where to Spawn Spell
	
		var origin = global.spellData[cc.boardInst.cursor, SP.ORIGIN];
		if (!is_array(origin))
			var o = origin;
		else
			var o = origin[cc.boardInst.currentSpellElement];

		if (o == TEAM.FRIENDLY)
			var obj = id;
		else
			var obj = enemy;
		
	#endregion
	
	#region Create Spell Instance
	
		if (global.spellData[cc.boardInst.cursor, SP.MOVES] == noone && o == TEAM.FRIENDLY)
			var s = instance_create_layer(obj.x, obj.y - 5, "Spells", oSpell);		
		else
			var s = instance_create_layer(obj.x, obj.y, "Spells", oSpell);		
			
	#endregion
	
	#region Set Spell Props
	
		s.owner = id;
		s.target = cc.enemy;
		s.moves = global.spellData[cc.boardInst.cursor, SP.MOVES];
		s.damageLo = global.spellData[cc.boardInst.cursor, SP.DAMAGE_LOW];
		s.damageHi = global.spellData[cc.boardInst.cursor, SP.DAMAGE_HIGH];
		s.accuracy = global.spellData[cc.boardInst.cursor, SP.ACCURACY];
		
		// Set Spell Animation
		var anim = global.spellData[cc.boardInst.cursor, SP.SPRITE_ANIMATION];
		if (!is_array(anim))
			s.sprite_index = anim;
		else
			s.sprite_index = anim[cc.boardInst.currentSpellElement];
			
	#endregion
		
	// Set Player State & SpellInst
	cc.spellInst = s;
	cc.state = PLAYER_STATE.CASTING;
}