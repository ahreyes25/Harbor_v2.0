input();

if (kA3Pressed) {
	var currentSpell = player.spellBook[player.spellBookIndex];

	if (global.spellData[currentSpell, SP.CAN_FLIP]) {
		global.spellData[currentSpell, SP.FLIP_ORIENTATION] *= -1;
		
		// Flip on the x axis
		var config = global.spellData[currentSpell, SP.ACTIVE_CONFIG];
		var width = global.spellData[currentSpell, SP.CURSOR_ACTIVE_WIDTH] - 1;
	
		for (var i = 0; i < array_length_1d(config); i++) {
			var c = config[i];
		
			var cx = (c[0] * -1) + width;
			var cy = c[1];
			config[i] = [cx, cy];
		}
		global.spellData[currentSpell, SP.ACTIVE_CONFIG] = config;
		
		show_message(global.spellData[currentSpell, SP.ACTIVE_CONFIG]);
	}
}