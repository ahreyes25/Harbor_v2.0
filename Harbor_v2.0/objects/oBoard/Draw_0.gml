if (!surface_exists(global.puzzleSurface))
	global.puzzleSurface = surface_create(room_width, room_height);

//surface_set_target(global.puzzleSurface);
//draw_clear_alpha(c_black, 0);

// Draw Border & Black Background Around Elements
var x1 = x - (space / 2);
var y1 = y - (space / 2);
var x2 = x + (gridW * space) + (space / 2);
var y2 = y + (gridH * space) + (space / 2);
draw_rectangle_color(x1 + 2, y1 + 2, x2 - 2, y2 - 2, c_black, c_black, c_black, c_black, false);
draw_sprite_nine(sSimpleFrame, x1, y1, x2, y2); 

// Draw Stuff
switch (state) {
	case BOARD_STATE.EASE_IN:
		draw_elements();
	break;
	
	case BOARD_STATE.NAVIGATE:
		draw_elements();
		draw_cursor();
		draw_spell_book();
		draw_flood();
	break;
		
	case BOARD_STATE.SPELL_BOOK:
		draw_elements();
		draw_spell_book();
		draw_flood();
	break;
		
	case BOARD_STATE.CHARGE:
		draw_elements();
		draw_spell_book();
		draw_flood();
	break;
	
	case BOARD_STATE.WAIT:
		draw_elements();
		draw_flood();
	break;
}

//surface_reset_target();
//draw_surface(global.puzzleSurface, 0, 0);
