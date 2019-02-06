draw_elements();

switch (state) {
	
	case BOARD_STATE.NAVIGATE:
		draw_cursor();
		break;
}

draw_text(x, y, global.spellData[player.spellBook[player.spellBookIndex], SP.FLIP_ORIENTATION]);