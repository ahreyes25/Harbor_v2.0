switch (cursor) {
	case SPELL.BASIC:
		var sp = sCursorBasic;
		break;
	case SPELL.FIREBALL:
		var sp = sCursorFireball;
		break;
}
		
draw_sprite(sp, 0, x + (cursorI * space) - 2, y + (cursorJ * space) - 2);