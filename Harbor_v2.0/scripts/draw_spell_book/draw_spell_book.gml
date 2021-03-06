input();

var _ww = ((gridW - 1) * space);
var _hh = ((gridH + 1) * space) + 2;

// Draw Arrows
if ((kLeftDown && state == BOARD_STATE.SPELL_BOOK) || state != BOARD_STATE.SPELL_BOOK)
	draw_sprite_ext(sLeftArrow, 0, x, y + _hh, 1, 1, 0, make_color_rgb(29, 43, 83), 1);
else
	draw_sprite_ext(sLeftArrow, 0, x, y + _hh, 1, 1, 0, c_white, 1);
	
if ((kRightDown && state == BOARD_STATE.SPELL_BOOK) || state != BOARD_STATE.SPELL_BOOK)
	draw_sprite_ext(sRightArrow, 0, x + _ww, y + _hh, 1, 1, 0, make_color_rgb(29, 43, 83), 1);
else 
	draw_sprite_ext(sRightArrow, 0, x + _ww, y + _hh, 1, 1, 0, c_white, 1);

// Draw Inactive Spell
if (state != BOARD_STATE.NAVIGATE && state != BOARD_STATE.SPELL_BOOK) {
	draw_sprite_ext(
		asset_get_index("sInactive" + global.spellData[cursor, SP.SPELL_NAME]), 0, 
		x + _ww / 4 + 5, 
		y + _hh + 3.5, 
		cursorF, 1, cursorR, c_white, 1
	);
}
else {
	// Draw Spell Icon
	draw_sprite_ext(
		asset_get_index("sIcon" + global.spellData[cursor, SP.SPELL_NAME]), spellIconImageSpeed, 
		x + _ww / 4 + 5, 
		y + _hh + 3.5, 
		cursorF, 1, cursorR, c_white, 1
	); 	
}

// Draw Spell Frame
if (state == BOARD_STATE.SPELL_BOOK) {
	draw_sprite_ext(
		asset_get_index("sFrame" + global.spellData[cursor, SP.SPELL_NAME]), 0, 
		x + _ww / 4 + 5, 
		y + _hh + 3.5, 
		cursorF, 1, cursorR, c_white, 1
	);
}

// Draw Text
if (state == BOARD_STATE.SPELL_BOOK)
	draw_set_color(c_white);
else
	draw_set_color(make_color_rgb(29, 43, 83));

draw_text_transformed(x + (_ww / 2) + 4, y + _hh - 2, global.spellData[cursor, SP.SPELL_NAME], 0.3, 0.3, 0);
draw_text_transformed(x + (_ww / 2) + 4, y + _hh + 4, global.spellData[cursor, SP.SPELL_INFO], 0.3, 0.3, 0);	
draw_set_color(c_white);