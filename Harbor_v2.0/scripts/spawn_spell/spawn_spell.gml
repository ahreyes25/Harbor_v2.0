/// @param CombatCharacter*

if (argument_count == 1)
	var _combatCharacter = argument[0];
else
	var _combatCharacter = id;

// Exit
if (!instance_exists(_combatCharacter)) return;
if (!instance_exists(_combatCharacter.boardInst)) return;

if (_combatCharacter.spellInst == noone) {
		
	#region Check Where to Spawn Spell
	
	var _spellOriginProp = global.spellData[_combatCharacter.boardInst.cursor, SP.ORIGIN];
	if (!is_array(_spellOriginProp))
		var _spellOrigin = _spellOriginProp;
	else
		var _spellOrigin = _spellOriginProp[_combatCharacter.boardInst.currentSpellElement];

	if (_spellOrigin == TEAM.FRIENDLY)
		var _spellOriginObj = id;
	else
		var _spellOriginObj = enemy;
		
	#endregion
	
	#region Create Spell Instance
	
	if (global.spellData[_combatCharacter.boardInst.cursor, SP.MOVES] == noone && _spellOrigin == TEAM.FRIENDLY)
		var _spellInst = instance_create_layer(_spellOriginObj.x, _spellOriginObj.y - 5, "Spells", oSpell);		
	else
		var _spellInst = instance_create_layer(_spellOriginObj.x, _spellOriginObj.y, "Spells", oSpell);		
		
	#endregion
	
	#region Set Spell Props
	
	_spellInst.owner	= id;
	_spellInst.target	= _combatCharacter.enemy;
	_spellInst.moves	= global.spellData[_combatCharacter.boardInst.cursor, SP.MOVES];
	_spellInst.damageLo = global.spellData[_combatCharacter.boardInst.cursor, SP.DAMAGE_LOW];
	_spellInst.damageHi = global.spellData[_combatCharacter.boardInst.cursor, SP.DAMAGE_HIGH];
	_spellInst.accuracy = global.spellData[_combatCharacter.boardInst.cursor, SP.ACCURACY];
		
	// Set Spell Animation
	var anim = global.spellData[_combatCharacter.boardInst.cursor, SP.SPRITE_ANIMATION];
	if (!is_array(anim))
		_spellInst.sprite_index = anim;
	else
		_spellInst.sprite_index = anim[_combatCharacter.boardInst.currentSpellElement];
		
	#endregion
		
	// Set Player State & SpellInst
	_combatCharacter.spellInst = _spellInst;
	_combatCharacter.state = PLAYER_STATE.CASTING;
}