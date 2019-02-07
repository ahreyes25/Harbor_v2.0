switch (state) {
	#region Ease In
	case BOARD_STATE.EASE_IN:
		if (y < yRest)
			y += 3;
		else {
			y = yRest;
			state = BOARD_STATE.SPELL_BOOK;
		}
	break;
	#endregion
	
	#region Navigate
	case BOARD_STATE.NAVIGATE:
		flip_spell();
		rotate_spell();
		move_cursor();
		check_spell_forms();
		check_for_spell_book_toggle();
		
		break;
		#endregion
		
	#region Spell Book
	case BOARD_STATE.SPELL_BOOK:
		navigate_spell_book();
		
		break;
		#endregion
	
	#region Cast
	case BOARD_STATE.CAST:
		if (alarm[0] == -1)
			alarm[0] = 5;
		state = BOARD_STATE.WAIT;
		
		break;
		#endregion
}