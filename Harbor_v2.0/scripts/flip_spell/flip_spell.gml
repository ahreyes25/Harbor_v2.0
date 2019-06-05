input();

if (kFlipPressed) {
	var _currentSpell = player.spellBook[player.spellBookIndex];

	if (global.spellData[_currentSpell, SP.CAN_FLIP]) {
		cursorF *= -1;
		
		// Flip on the x axis
		for (var i = 0; i < array_length_1d(config); i++) {
			var c = config[i];
		
			var cx = (c[0] * -1) + (cursorW - 1);
			var cy = (c[1]);
			
			audio_play_sound(sfx_spell_flip, 0, 0);
			
			// Store new config values
			config[i] = [cx, cy];
		}
	}
}
