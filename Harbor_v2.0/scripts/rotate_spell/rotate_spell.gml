input();

if (kRotateLeftPressed || kRotateRightPressed) {
	
	var _currentSpell = player.spellBook[player.spellBookIndex];

	if (global.spellData[_currentSpell, SP.CAN_ROTATE]) {
		
		// Update rotation
		if (kRotateLeftPressed) {
			if (cursorR < 270)
				cursorR += 90;
			else
				cursorR = 0;
				
			var _theta = -90;
		}
		else if (kRotateRightPressed) {
			if (cursorR > 0)
				cursorR -= 90;
			else
				cursorR = 270;
				
			var _theta = 90;
		}
		
		// Swap Width & Height 
		var _tempWidth = cursorW;
		cursorW = cursorH;
		cursorH = _tempWidth;
		
		// Rotate Config Points
		for (var i = 0; i < array_length_1d(config); i++) {
			
			var _config = config[i];
			
			// Rotate Coordinates
			var _x = _config[0] - (cursorW / 2);
			var _y = _config[1] - (cursorH / 2);
			
			var _xPrime = (_x * cos(degtorad(_theta))) - (_y * sin(degtorad(_theta)));
			var _yPrime = (_x * sin(degtorad(_theta))) + (_y * cos(degtorad(_theta)));
			
			// Shift Coordinates Back to Center
			// Rotate Right
			if (_theta == 90) {
				if (cursorH == 1 && cursorW mod 2 == 0) {
					var _xShift = floor(_xPrime) + floor(cursorW / 2);
					var _yShift = floor(_yPrime) + 1;
				}
				else if (cursorH == 1 && cursorW mod 2 == 1) {
					var _xShift = floor(_xPrime) + floor(cursorW / 2) + 1;
					var _yShift = floor(_yPrime) + 2;
				}
				else if (cursorH mod 2 == 0 && cursorW == 1) {
					var _xShift = floor(_xPrime) - 1;
					var _yShift = floor(_yPrime) + floor(cursorH / 2);
				}
				else if (cursorH mod 2 == 1 && cursorW == 1) {
					var _xShift = floor(_xPrime) - 1;
					var _yShift = floor(_yPrime) + floor(cursorH / 2);
				}
				// Even Height & Even Width
				else if (cursorH mod 2 == 0 && cursorW mod 2 == 0) {
					var _xShift = floor(_xPrime);
					var _yShift = floor(_yPrime) + floor(cursorH / 2);
				}
				// Odd Height & Even Width
				else if (cursorH mod 2 == 1 && cursorW mod 2 == 0) {
					var _xShift = floor(_xPrime);
					var _yShift = floor(_yPrime) + floor(cursorH / 2);
				}
				// Even Height & Odd Width
				else if (cursorH mod 2 == 0 && cursorW mod 2 == 1) {
					var _xShift = floor(_xPrime) + floor(cursorW / 2);
					var _yShift = floor(_yPrime) + floor(cursorH / 2) + 1;
				}
				// Odd Height & Odd Width
				else if (cursorH mod 2 == 1 && cursorW mod 2 == 1) {
					var _xShift = floor(_xPrime);
					var _yShift = floor(_yPrime);
				}
			}
			// Rotate Left
			else {
				if (cursorH == 1 && cursorW mod 2 == 0) {
					var _xShift = floor(_xPrime) + floor(cursorW / 2);
					var _yShift = floor(_yPrime) - 1;
				}
				else if (cursorH == 1 && cursorW mod 2 == 1) {
					var _xShift = floor(_xPrime) + floor(cursorW / 2);
					var _yShift = floor(_yPrime) - 1;
				}
				else if (cursorH mod 2 == 0 && cursorW == 1) {
					var _xShift = floor(_xPrime) + 1;
					var _yShift = floor(_yPrime) + floor(cursorH / 2);
				}
				else if (cursorH mod 2 == 1 && cursorW == 1) {
					var _xShift = floor(_xPrime) + 2;
					var _yShift = floor(_yPrime) + floor(cursorH / 2) + 1;
				}
				// Even Height & Even Width
				else if (cursorH mod 2 == 0 && cursorW mod 2 == 0) {
					var _xShift = floor(_xPrime) + floor(cursorW / 2);
					var _yShift = floor(_yPrime);
				}
				// Odd Height & Even Width
				else if (cursorH mod 2 == 1 && cursorW mod 2 == 0) {
					var _xShift = floor(_xPrime) + floor(cursorW / 2) + 1;
					var _yShift = floor(_yPrime) + floor(cursorH / 2);
				}
				// Even Height & Odd Width
				else if (cursorH mod 2 == 0 && cursorW mod 2 == 1) {
					var _xShift = floor(_xPrime) + floor(cursorW / 2);
					var _yShift = floor(_yPrime);
				}
				// Odd Height & Odd Width
				else if (cursorH mod 2 == 1 && cursorW mod 2 == 1) {
					var _xShift = floor(_xPrime);
					var _yShift = floor(_yPrime) + floor(cursorH / 2);
				}
			}

			// Store New Coordinates
			config[i] = [_xShift, _yShift];
		}
		
		// Center Cursor in Grid
		cursorI = floor(ds_grid_width(grid) / 2);
		cursorJ = floor(ds_grid_height(grid) / 2);
		
		audio_play_sound(sfx_spell_rotate, 0, 0);
	}
}

