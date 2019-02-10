input();

var cast = false;

if (kA1Pressed) {

	switch (cursor) {
		
		#region Basic
		case SPELL.BASIC:
			
			cast = true;
			
			break;
			#endregion
		
		#region Fireball
		case SPELL.FIREBALL:

			// Check For All Fires
			var pass = true;
			for (var i = 0; i < array_length_1d(config); i++){
				var c = config[i];
				if (ds_grid_get(grid, cursorI + c[0], cursorJ + c[1]) != ELEMENT.FIRE) {
					pass = false;
					break;
				}
			}	
			cast = pass;
			
			break;
			#endregion
		
		#region ElectricBolt
		case SPELL.ELECTRIC_BOLT:

			// Check For All Electric
			var pass = true;
			for (var i = 0; i < array_length_1d(config); i++){
				var c = config[i];
				if (ds_grid_get(grid, cursorI + c[0], cursorJ + c[1]) != ELEMENT.ELECTRIC) {
					pass = false;
					break;
				}
			}	
			cast = pass;
			
			break;
			#endregion
			
		#region Elemental
		case SPELL.ELEMENTAL:

			// Check Spell: check for one of each
			var red    = false;
			var blue   = false;
			var green  = false;
			var yellow = false;
			var pass = false;
			
			for (var i = 0; i < array_length_1d(config); i++){
				var c = config[i];
				if (ds_grid_get(grid, cursorI + c[0], cursorJ + c[1]) == ELEMENT.FIRE)
					red = true;
				else if (ds_grid_get(grid, cursorI + c[0], cursorJ + c[1]) == ELEMENT.WATER)
					blue = true;
				else if (ds_grid_get(grid, cursorI + c[0], cursorJ + c[1]) == ELEMENT.GRASS)
					green = true;
				else if (ds_grid_get(grid, cursorI + c[0], cursorJ + c[1]) == ELEMENT.ELECTRIC)
					yellow = true;
			}	
			
			// If Valid
			if (red && blue && green && yellow) {
				pass = true;
			}
			cast = pass;
			
			break;
			#endregion
		
		#region Tsunami 
		case SPELL.TSUNAMI:
		
			// Check For All Waters
			var pass = true;
			for (var i = 0; i < array_length_1d(config); i++){
				var c = config[i];
				if (ds_grid_get(grid, cursorI + c[0], cursorJ + c[1]) != ELEMENT.WATER) {
					pass = false;
					break;
				}
			}	
			cast = pass;
		
			break;
			#endregion
		
		#region Sprout 
		case SPELL.SPROUT:
		
			// Check For All Grass
			var pass = true;
			for (var i = 0; i < array_length_1d(config); i++){
				var c = config[i];
				if (ds_grid_get(grid, cursorI + c[0], cursorJ + c[1]) != ELEMENT.GRASS) {
					pass = false;
					break;
				}
			}	
			cast = pass;
		
			break;
			#endregion
		
		#region Brushfire 
		case SPELL.BRUSHFIRE:
		
			// Check Spell: check for fire grass fire
			var pass = false;
			
			var c = config[0];
			if (ds_grid_get(grid, cursorI + c[0], cursorJ + c[1]) == ELEMENT.FIRE) { 
				c = config[1];
				if (ds_grid_get(grid, cursorI + c[0], cursorJ + c[1]) == ELEMENT.GRASS) {
					c = config[2];
					if (ds_grid_get(grid, cursorI + c[0], cursorJ + c[1]) == ELEMENT.FIRE) {
						pass = true;
					}
				}
			}
			cast = pass;
		
			break;
			#endregion
	}
}

// Valid spell found
if (cast) {
	for (var i = 0; i < array_length_1d(config); i++) {
		var c = config[i];
		ds_grid_set(grid, c[0] + cursorI, c[1] + cursorJ, ds_grid_get(grid, c[0] + cursorI, c[1] + cursorJ) + 10);	
	}
	state = BOARD_STATE.CHARGE;	
}