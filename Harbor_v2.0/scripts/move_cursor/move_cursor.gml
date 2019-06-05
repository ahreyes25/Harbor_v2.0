input();	

// Navigation
if (kRightDown) {
	if (alarm[7] <= 0) {
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
		
		alarm[7] = global.playerData[player.pid, PP.AUTO_SCROLL_DELAY];
	}
}	
if (kLeftDown) {
	if (alarm[7] <= 0) {
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
		
		alarm[7] = global.playerData[player.pid, PP.AUTO_SCROLL_DELAY];
	}
}	
if (kUpDown) {
	if (alarm[7] <= 0) {
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
		
		alarm[7] = global.playerData[player.pid, PP.AUTO_SCROLL_DELAY];
	}
}	
if (kDownDown) {
	if (alarm[7] <= 0) {
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
		
		alarm[7] = global.playerData[player.pid, PP.AUTO_SCROLL_DELAY];
	}
}	

// Reset Auto Scroll
if (!kLeftDown && !kRightDown && !kUpDown && !kDownDown) {
	alarm[7] = -1;
	alarm[8] = -1;
}