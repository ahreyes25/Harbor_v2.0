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
		move_cursor();
		check_spell_forms();
		check_for_spell_book_toggle();
		
		break;
		#endregion
		
	#region Spell Book
	case BOARD_STATE.SPELL_BOOK:
		navigate_spell_book();
		flip_spell();
		rotate_spell();
		
		break;
		#endregion
	
	#region Charge
	case BOARD_STATE.CHARGE:
		if (alarm[0] == -1 && alarm[1] == -1 && alarm[2] == -1 && alarm[3] == -1 && alarm[4] == -1 && alarm[5] == -1)
			alarm[0] = 5;
		player.state = PLAYER_STATE.CHARGE;
		
		break;
		#endregion
		
	#region Cast
	case BOARD_STATE.CAST:
		player.state = PLAYER_STATE.CAST;
		
		break;
		#endregion
}