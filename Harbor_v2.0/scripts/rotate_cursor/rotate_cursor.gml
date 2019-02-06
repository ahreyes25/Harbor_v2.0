input();

if (kA3Pressed) {
	var currentSpell = player.spellBook[player.spellBookIndex];

	if (global.spellData[currentSpell, SP.CAN_ROTATE]) {
		//global.spellData[currentSpell, SP.ROTATION] *= -1;
		
		var rot = global.spellData[currentSpell. SP.ROTATION];
		
		// Rotate
		//...
		
		global.spellData[currentSpell, SP.ROTATION] = rot;
	}
}