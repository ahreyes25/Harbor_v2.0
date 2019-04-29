/// @param CombatCharacter*

// *** If spell does not have a charge sound, then the rest of the sound is played in the oSpell Object *** //

if (argument_count == 1)
	var _combatCharacter = argument[0];
else
	var _combatCharacter = id;
	
if (!instance_exists(_combatCharacter)) return;
if (!instance_exists(_combatCharacter.boardInst)) return;

// Play sound effect
if (!_combatCharacter.playedSpellSound) {
	
	// Has Charge Sound
	if (global.spellData[_combatCharacter.boardInst.cursor, SP.SOUND_CHARGE] != noone) {
		var _soundCharge = global.spellData[_combatCharacter.boardInst.cursor, SP.SOUND_CHARGE];
		if (_soundCharge != noone)
			audio_play_sound(_soundCharge, 0, 0);
	}
	// Has No Charge Sound, so Just Play Normal Spell Sound
	else {
		var _sound = global.spellData[_combatCharacter.boardInst.cursor, SP.SOUND];
		if (_sound != noone) {
			if (!is_array(_sound))
				audio_play_sound(_sound, 0, 0);
			else {
				if (ds_exists(_combatCharacter.boardInst.grid, ds_type_grid))
					audio_play_sound(_sound[_combatCharacter.boardInst.currentSpellElement], 0, 0);
			}
		}
	}
	_combatCharacter.playedSpellSound = true;
}