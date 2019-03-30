if (!surface_exists(global.puzzleSurface))
	global.puzzleSurface = surface_create(room_width, room_height);
	
surface_set_target(global.puzzleSurface);
draw_clear_alpha(c_black, 0);

// Draw Stuff
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

surface_reset_target();
draw_surface(global.puzzleSurface, 0, 0);