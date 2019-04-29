input();

if (kRotateLeftPressed || kRotateRightPressed) {
	
	var _currentSpell = player.spellBook[player.spellBookIndex];

	if (global.spellData[_currentSpell, SP.CAN_ROTATE]) {
		
		// Update rotation
		if (kRotateLeftPressed) {
			if (cursorR < 270)
				cursorR += 90;
			else
				cursorR = 0;
		}
		else if (kRotateRightPressed) {
			if (cursorR > 0)
				cursorR -= 90;
			else
				cursorR = 360;
		}
			
		audio_play_sound(sfx_spell_rotate, 0, 0);
			
		// Swap Width & Height 
		var tw = cursorW;
		cursorW = cursorH;
		cursorH = tw;
		
		// Rotate Config
		for (var i = 0; i < array_length_1d(config); i++) {
			var c = config[i];
		
			if (cursorR == 90 || cursorR == 270) {
				var cx = c[1];
				var cy = (c[0] * -1) + max(1, (cursorH - 1));
			}
			else {
				var cx = c[1];
				var cy = (c[0] * -1) + max(1, (cursorH - 1));
			}
			
			// Store new config
			config[i] = [cx, cy];
		}
	}
}

