input();

// Back out
if (kSelectPressed) {
	state = BOARD_STATE.NAVIGATE;
}

if (kRightPressed) {
	if (player.spellBookIndex < array_length_1d(player.spellBook) - 1)
		player.spellBookIndex++;	
	else
		player.spellBookIndex = 0;
	update_spell_data();
	audio_play_sound(sfx_spellBook_page, 0, 0);
}
if (kLeftPressed) {
	if (player.spellBookIndex > 0)
		player.spellBookIndex--;
	else
		player.spellBookIndex = array_length_1d(player.spellBook) - 1;
	update_spell_data();
	audio_play_sound(sfx_spellBook_page, 0, 0);
}