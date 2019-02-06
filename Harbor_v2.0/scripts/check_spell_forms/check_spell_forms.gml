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
	}
}

// Valid spell found
if (cast) {
	for (var i = 0; i < array_length_1d(config); i++) {
		var c = config[i];
		ds_grid_set(grid, c[0] + cursorI, c[1] + cursorJ, ds_grid_get(grid, c[0] + cursorI, c[1] + cursorJ) + 10);	
	}
	
	state = BOARD_STATE.CAST;	
}