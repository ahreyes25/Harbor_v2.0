switch (state) {
	#region Ease In
	case BOARD_STATE.EASE_IN:
		if (y < yRest)
			y += 2;
		else {
			y = yRest;
			state = BOARD_STATE.NAVIGATE;
		}
	break;
	#endregion
	
	#region Navigate
	case BOARD_STATE.NAVIGATE:
		update_cursor_wh();
		move_cursor();
		check_spell_forms();
		
		break;
		#endregion
	
	#region Charge
	case BOARD_STATE.CHARGE:
		if (alarm[0] == -1)
			alarm[0] = 5;
		state = BOARD_STATE.CAST;
		
		break;
		#endregion
	
	#region Cast
	case BOARD_STATE.CAST:
		break;
		#endregion
}