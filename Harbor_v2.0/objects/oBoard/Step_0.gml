switch (state) {
	case BOARD_STATE.EASE_IN:
		board_ease_in();
		break;
	
	case BOARD_STATE.NAVIGATE:
		move_cursor();
		check_spell_forms();
		check_for_spell_book_toggle();
		cursor_out_of_water();
		play_smoke_flood_loop();
		break;
		
	case BOARD_STATE.SPELL_BOOK:
		navigate_spell_book();
		flip_spell();
		rotate_spell();
		play_smoke_flood_loop();
		break;
	
	case BOARD_STATE.CHARGE:
		// Check That We Are Not in the Middle of Another Action Before Triggering Charge
		if (alarm[0] == -1 && alarm[1] == -1 && alarm[2] == -1 && alarm[3] == -1 && alarm[4] == -1 && alarm[5] == -1)
			alarm[0] = 5;
		if (player.state = PLAYER_STATE.WAIT)
			player.state = PLAYER_STATE.CHARGE;
		
		play_smoke_flood_loop();
		break;
}

spellIconImageSpeed += 0.03;