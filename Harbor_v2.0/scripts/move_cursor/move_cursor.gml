input();

if (kRightPressed) {
	if (!cursor_in_water()) {
		if (in_bounds(grid, cursorI + cursorW, cursorJ))
			cursorI++;
		else
			cursorI = 0;
		audio_play_sound(sfx_cursor_move, 0, 0);
	}
	// Move Cursor Slower Through Water
	else {
		if (alarm[6] < 0)
			alarm[6] = 30;
		floodMoveNext = "i++";
	}
}	
if (kLeftPressed) {
	if (!cursor_in_water()) {
		if (in_bounds(grid, cursorI - 1, cursorJ))
			cursorI--;
		else
			cursorI = gridW - cursorW;
		audio_play_sound(sfx_cursor_move, 0, 0);
	}
	// Move Cursor Slower Through Water
	else {
		if (alarm[6] < 0)
			alarm[6] = 30;
		floodMoveNext = "i--";
	}
}	
if (kUpPressed) {
	if (!cursor_in_water()) {
		if (in_bounds(grid, cursorI, cursorJ - 1))
			cursorJ--;
		else
			cursorJ = gridH - cursorH;
		audio_play_sound(sfx_cursor_move, 0, 0);
	}
	// Move Cursor Slower Through Water
	else {
		if (alarm[6] < 0)
			alarm[6] = 30;
		floodMoveNext = "j--";
	}
}	
if (kDownPressed) {
	if (!cursor_in_water()) {
		if (in_bounds(grid, cursorI, cursorJ + cursorH))
			cursorJ++;
		else
			cursorJ = 0;
		audio_play_sound(sfx_cursor_move, 0, 0);
	}
	// Move Cursor Slower Through Water
	else {
		if (alarm[6] < 0)
			alarm[6] = 30;
		floodMoveNext = "j++";
	}
}	