/// @description Move Cursor Slower Through Water
if (cursor_in_water()) {
		
	// Get Next Value In Queue
	if (floodMoveNext != noone) {
		switch (floodMoveNext) {
			case "i++":
				if (in_bounds(grid, cursorI + cursorW, cursorJ))
					cursorI++;
				else
					cursorI = 0;
				audio_play_sound(sfx_cursor_move, 0, 0);
			break;
			case "i--":
				if (in_bounds(grid, cursorI - 1, cursorJ))
					cursorI--;
				else
					cursorI = gridW - cursorW;
				audio_play_sound(sfx_cursor_move, 0, 0);
			break;
			case "j++":
				if (in_bounds(grid, cursorI, cursorJ + cursorH))
					cursorJ++;
				else
					cursorJ = 0;
				audio_play_sound(sfx_cursor_move, 0, 0);
			break;
			case "j--":
				if (in_bounds(grid, cursorI, cursorJ - 1))
					cursorJ--;
				else
					cursorJ = gridH - cursorH;
				audio_play_sound(sfx_cursor_move, 0, 0);
			break;
		}
	}
	else
		floodMoveNext = noone;
}
else
	floodMoveNext = noone;