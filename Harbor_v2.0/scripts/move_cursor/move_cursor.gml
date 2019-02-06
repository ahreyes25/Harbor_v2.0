input();

if (kRightPressed) {
	if (in_bounds(grid, cursorI + cursorW, cursorJ))
		cursorI++;
	else
		cursorI = 0;
}	
if (kLeftPressed) {
	if (in_bounds(grid, cursorI - 1, cursorJ))
		cursorI--;
	else
		cursorI = gridW - cursorW;
}	
if (kUpPressed) {
	if (in_bounds(grid, cursorI, cursorJ - 1))
		cursorJ--;
	else
		cursorJ = gridH - cursorH;
}	
if (kDownPressed) {
	if (in_bounds(grid, cursorI, cursorJ + cursorH))
		cursorJ++;
	else
		cursorJ = 0;
}	