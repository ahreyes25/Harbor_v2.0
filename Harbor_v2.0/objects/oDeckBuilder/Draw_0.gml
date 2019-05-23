#region Book Object Instance

var _rot = 5;
switch(state) {
	
	#region Drop In
	
	case SPELL_BOOK_STATE.DROP_IN:
		draw_sprite_ext(sSpellBookInside, 0, x, y, imageScale, imageScale, _rot, c_white, alpha);
		draw_sprite_ext(sSpellBookCover, 0, x, y, imageScale, imageScale, _rot, c_white, alpha);
		break;
		
	#endregion
	
	#region Drop Out
	
	case SPELL_BOOK_STATE.DROP_OUT:
		draw_sprite_ext(sSpellBookInside, 0, x, y, imageScale, imageScale, 0, c_white, alpha);
		draw_sprite_ext(sSpellBookCover, 0, x, y, imageScale, imageScale, 0, c_white, alpha);
		break;
		
	#endregion
	
	#region Opening
	
	case SPELL_BOOK_STATE.OPEN:
		draw_sprite_ext(sSpellBookInside, 0, x, y, imageScale, imageScale, 0, c_white, alpha);
		
		// Transition From Showing Cover to Front Inside
		if (openXScale >= 0)
			draw_sprite_ext(sSpellBookCover, 0, x, y, clamp(openXScale, -imageScale, imageScale), imageScale, 0, c_white, alpha);
		else
			draw_sprite_ext(sSpellBookInside, 0, x, y, clamp(openXScale, -imageScale, imageScale), imageScale, 0, c_white, alpha);
		break;
		
	#endregion
	
	#region Open
	
	case SPELL_BOOK_STATE.OPEN_IDLE:
		draw_sprite_ext(sSpellBookInside, 0, x, y, imageScale, imageScale, 0, c_white, alpha);
		draw_sprite_ext(sSpellBookInside, 0, x, y, -imageScale, imageScale, 0, c_white, alpha);
		//draw_sprite_ext(sSpellBookMini, 0, x - 8, y, 0.5,  0.5, 0, c_white, 1);
		//draw_sprite_ext(sSpellBookMini, 0, x + 8, y, -0.5, 0.5, 0, c_white, 1);
		draw_set_color(c_black);
		draw_line(x, 0, x, room_height);
		draw_set_color(c_white);
		
		// Draw Player Spells & Enemy Spells
		if (!surface_exists(invisibleFrame))
			invisibleFrame = surface_create(room_width, room_height);
			
		surface_set_target(invisibleFrame);
		draw_clear_alpha(c_black, 0);
		
		if (player1Collection != noone) {
			for (var i = 0; i < array_length_1d(player1Collection); i++) {
				var _spellIndex = player1Collection[i];
				var _spellName = global.spellData[_spellIndex, SP.SPELL_NAME];
				var _spellSprite = asset_get_index("sIcon" + _spellName);
				draw_sprite(
					_spellSprite, 0, 
					x - (sprite_get_width(sSpellBookInside) * 0.6), 
					spellIconsOffset + (spellIconsSpacing * i) + (scrollSpeed * player1Scroll)
				);		
			}
		}
		
		gpu_set_blendmode(bm_subtract);
		draw_rectangle(0, 0, room_width, 16, false);
		draw_rectangle(0, room_height - 18, room_width, room_height, false);
		gpu_set_blendmode(bm_normal);
		surface_reset_target();
		draw_surface(invisibleFrame, 0, 0);

		// Draw Player 2
		break;
		
	#endregion
		
	#region Closing
	
	case SPELL_BOOK_STATE.CLOSE:
		draw_sprite_ext(sSpellBookInside, 0, x, y, imageScale, imageScale, 0, c_white, alpha);
		
		// Transition From Showing Cover to Front Inside
		if (openXScale >= 0)
			draw_sprite_ext(sSpellBookCover, 0, x, y, clamp(openXScale, -imageScale, imageScale), imageScale, 0, c_white, alpha);
		else
			draw_sprite_ext(sSpellBookInside, 0, x, y, clamp(openXScale, -imageScale, imageScale), imageScale, 0, c_white, alpha);
		break;
		
	#endregion
		
	#region Close
	
	case SPELL_BOOK_STATE.CLOSE_IDLE:
		draw_sprite_ext(sSpellBookInside, 0, x, y, imageScale, imageScale, 0, c_white, alpha);
		draw_sprite_ext(sSpellBookCover, 0, x, y, imageScale, imageScale, 0, c_white, alpha);
		break;
		
	#endregion
}

#endregion