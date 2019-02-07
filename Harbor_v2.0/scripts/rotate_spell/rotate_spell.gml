input();

if (kA3Pressed) {
	var currentSpell = player.spellBook[player.spellBookIndex];

	if (global.spellData[currentSpell, SP.CAN_ROTATE]) {
		
		// Update rotation
		if (cursorR < 270)
			cursorR += 90;
		else
			cursorR = 0;
			
		// Swap Width & Height 
		var tw = cursorW;
		cursorW = cursorH;
		cursorH = tw;
		
		// Rotate Config
		for (var i = 0; i < array_length_1d(config); i++) {
			var c = config[i];
		
			if (cursorR == 90 || cursorR == 270) {
				var cx = c[1];
				var cy = (c[0] * -1) + (cursorH - 1);
			}
			else {
				var cx = c[1];
				var cy = (c[0] * -1) + (cursorH - 1);
			}
			
			config[i] = [cx, cy];
		}
	}
}
