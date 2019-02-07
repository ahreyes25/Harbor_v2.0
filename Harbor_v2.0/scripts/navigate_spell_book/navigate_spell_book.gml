input();

// Back out
if (kA2Pressed) {
	state = BOARD_STATE.NAVIGATE;
}

if (kRightPressed) {
	if (player.spellBookIndex < array_length_1d(player.spellBook) - 1)
		player.spellBookIndex++;	
	else
		player.spellBookIndex = 0;
	update_spell_data();
}
if (kLeftPressed) {
	if (player.spellBookIndex > 0)
		player.spellBookIndex--;
	else
		player.spellBookIndex = array_length_1d(player.spellBook) - 1;
	update_spell_data();
}