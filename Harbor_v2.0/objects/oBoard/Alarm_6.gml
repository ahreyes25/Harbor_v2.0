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
			break;
			case "i--":
				if (in_bounds(grid, cursorI - 1, cursorJ))
					cursorI--;
				else
					cursorI = gridW - cursorW;
			break;
			case "j++":
				if (in_bounds(grid, cursorI, cursorJ + cursorH))
					cursorJ++;
				else
					cursorJ = 0;
			break;
			case "j--":
				if (in_bounds(grid, cursorI, cursorJ - 1))
					cursorJ--;
				else
					cursorJ = gridH - cursorH;
			break;
		}
	}
	else
		floodMoveNext = noone;
}
else
	floodMoveNext = noone;