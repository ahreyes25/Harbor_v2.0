switch (cursor) {
	case SPELL.BASIC:
		var sp = sCursorBasic;
		break;
	case SPELL.FIREBALL:
		var sp = sCursorFireball;
		break;
	case SPELL.ELECTRIC_BOLT:
		var sp = sCursorElectricBolt;
		break;
}
		
if (cursorF == 1) {
	draw_sprite_ext(sp, 0, 
		x + (cursorI * space) - 2, 
		y + (cursorJ * space) - 2, 
		1, 
		image_yscale, 
		0, c_white, 1
	);
}
else if (cursorF == -1) {
	draw_sprite_ext(sp, 0, 
		x + ((cursorI + cursorW) * space), 
		y + (cursorJ * space) - 2, 
		-1, 
		image_yscale, 
		0, c_white, 1
	);
}