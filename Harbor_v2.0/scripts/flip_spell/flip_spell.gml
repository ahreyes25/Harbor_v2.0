input();

if (kA3Pressed) {
	var currentSpell = player.spellBook[player.spellBookIndex];

	if (global.spellData[currentSpell, SP.CAN_FLIP]) {
		cursorF *= -1;
		
		// Flip on the x axis
		for (var i = 0; i < array_length_1d(config); i++) {
			var c = config[i];
		
			var cx = (c[0] * -1) + cursorW - 1;
			var cy = c[1];
			config[i] = [cx, cy];
		}
	}
}
