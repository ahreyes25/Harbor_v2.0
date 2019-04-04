/// @param CombatCharacter*

// *** If spell does not have a charge sound, then the rest of the sound is played in the oSpell Object *** //

if (argument_count == 1)
	var cc = argument[0];
else
	var cc = id;

// Play sound effect
if (!cc.playedSpellSound) {
	if (instance_exists(cc)) {
		if (instance_exists(cc.boardInst)) {
			
			// Has Charge Sound
			if (global.spellData[cc.boardInst.cursor, SP.SOUND_CHARGE] != noone) {
			
				var soundCharge = global.spellData[cc.boardInst.cursor, SP.SOUND_CHARGE];
				if (soundCharge != noone)
					audio_play_sound(soundCharge, 0, 0);
			}
			// Has No Charge Sound, so Just Play Normal Spell Sound
			else {
				var sound = global.spellData[cc.boardInst.cursor, SP.SOUND];
				if (sound != noone) {
					if (!is_array(sound))
						audio_play_sound(sound, 0, 0);
					else {
						if (ds_exists(cc.boardInst.grid, ds_type_grid))
							audio_play_sound(sound[cc.boardInst.currentSpellElement], 0, 0);
					}
				}
			}
			cc.playedSpellSound = true;
		}
	}			
}
