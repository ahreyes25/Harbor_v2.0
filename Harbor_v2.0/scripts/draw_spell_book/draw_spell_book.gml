input();

var ww = ((gridW - 1) * space);
var hh = ((gridH + 1) * space) + 2;

// Draw Arrows
if ((kLeft && state == BOARD_STATE.SPELL_BOOK) || state != BOARD_STATE.SPELL_BOOK)
	draw_sprite_ext(sLeftArrow, 0, x, y + hh, 1, 1, 0, make_color_rgb(29, 43, 83), 1);
else
	draw_sprite_ext(sLeftArrow, 0, x, y + hh, 1, 1, 0, c_white, 1);
	
if ((kRight && state == BOARD_STATE.SPELL_BOOK) || state != BOARD_STATE.SPELL_BOOK)
	draw_sprite_ext(sRightArrow, 0, x + ww, y + hh, 1, 1, 0, make_color_rgb(29, 43, 83), 1);
else 
	draw_sprite_ext(sRightArrow, 0, x + ww, y + hh, 1, 1, 0, c_white, 1);

// Draw Inactive Spell
if (state != BOARD_STATE.NAVIGATE && state != BOARD_STATE.SPELL_BOOK) {
	draw_sprite_ext(
		asset_get_index("sInactive" + global.spellData[cursor, SP.SPELL_NAME]), image_index / 30, 
		x + ww / 4 + 5, 
		y + hh + 3.5, 
		cursorF, 1, cursorR, c_white, 1
	);
}
else {
	// Draw Spell Icon
	draw_sprite_ext(
		asset_get_index("sIcon" + global.spellData[cursor, SP.SPELL_NAME]), image_index / 30, 
		x + ww / 4 + 5, 
		y + hh + 3.5, 
		cursorF, 1, cursorR, c_white, 1
	); 	
}

// Draw Spell Frame
if (state == BOARD_STATE.SPELL_BOOK) {
	draw_sprite_ext(
		asset_get_index("sFrame" + global.spellData[cursor, SP.SPELL_NAME]), image_index / 30, 
		x + ww / 4 + 5, 
		y + hh + 3.5, 
		cursorF, 1, cursorR, c_white, 1
	);
}

// Draw Text
if (state == BOARD_STATE.SPELL_BOOK)
	draw_set_color(c_white);
else
	draw_set_color(make_color_rgb(29, 43, 83));

draw_text_transformed(x + (ww / 2) + 4, y + hh - 2, global.spellData[cursor, SP.SPELL_NAME], 0.3, 0.3, 0);
draw_text_transformed(x + (ww / 2) + 4, y + hh + 4, global.spellData[cursor, SP.SPELL_INFO], 0.3, 0.3, 0);	
draw_set_color(c_white);