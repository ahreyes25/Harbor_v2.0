switch (state) {
	case BOARD_STATE.EASE_IN:
		draw_elements();
	break;
	
	case BOARD_STATE.NAVIGATE:
		draw_elements();
		draw_cursor();
		draw_spell_book();
	break;
		
	case BOARD_STATE.SPELL_BOOK:
		draw_elements();
		draw_spell_book();
	break;
		
	case BOARD_STATE.CHARGE:
		draw_elements();
		draw_spell_book();
	break;
	
	case BOARD_STATE.WAIT:
		draw_elements();
	break;
}
