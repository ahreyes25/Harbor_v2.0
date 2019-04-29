var _spellSprite = asset_get_index("sCursor" + string(global.spellData[cursor, SP.SPELL_NAME]));
	
if (cursorF == 1) {
	if (cursorR == 0)
		draw_sprite_ext(_spellSprite, 0, x + (cursorI * space) - 2, y + (cursorJ * space) - 2, 1, image_yscale, 0, c_white, 1);
	else if (cursorR == 90)
		draw_sprite_ext(_spellSprite, 1, x + (cursorI * space) - 3, y + ((cursorJ + 3) * space) + 1, 1, image_yscale, 90, c_white, 1);
	else if (cursorR == 180)
		draw_sprite_ext(_spellSprite, 0, x + ((cursorI + 3) * space), y + ((cursorJ + 2) * space) + 1, 1, image_yscale, 180, c_white, 1);
	else if (cursorR == 270)
		draw_sprite_ext(_spellSprite, 1, x + ((cursorI + 2) * space) + 1, y + (cursorJ * space) - 2, 1, image_yscale, 270, c_white, 1);
}
else if (cursorF == -1) {
	if (cursorR == 0)
		draw_sprite_ext(_spellSprite, 0, x + ((cursorI + cursorW) * space), y + (cursorJ * space) - 2, -1, image_yscale, cursorR, c_white, 1);
	else if (cursorR == 90)
		draw_sprite_ext(_spellSprite, 1, x + (cursorI * space) - 3, y + ((cursorJ) * space) - 2, -1, image_yscale, 90, c_white, 1);
	else if (cursorR == 180)
		draw_sprite_ext(_spellSprite, 0, x + ((cursorI) * space) - 2, y + ((cursorJ + 2) * space) + 1, -1, image_yscale, 180, c_white, 1);
	else if (cursorR == 270)
		draw_sprite_ext(_spellSprite, 1, x + ((cursorI + 2) * space) + 1, y + ((cursorJ + 3) * space) + 1, -1, image_yscale, 270, c_white, 1);
}