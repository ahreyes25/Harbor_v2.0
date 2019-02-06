input();

var cast = false;
var configuration = [];

if (kA1Pressed) {

	switch (cursor) {
		
		#region Basic
		case SPELL.BASIC:
			
			var config = global.spellData[cursor, SP.CONFIG];
			cast = true;
			configuration = config;
			
			break;
			#endregion
		
		#region Fireball
		case SPELL.FIREBALL:
		
			var config = global.spellData[cursor, SP.CONFIG];

			// Check For All Fires
			var pass = true;
			for (var i = 0; i < array_length_1d(config); i++){
				var c = config[i];
				if (ds_grid_get(grid, cursorI + c[0], cursorJ + c[1]) != 1) {
					pass = false;
					break;
				}
			}	
			cast = pass;
			configuration = config;
			
			break;
			#endregion
	}
}

// Valid spell found
if (cast) {
	for (var i = 0; i < array_length_1d(configuration); i++) {
		var c = config[i];
		ds_grid_set(grid, c[0] + cursorI, c[1] + cursorJ, ds_grid_get(grid, c[0] + cursorI, c[1] + cursorJ) + 10);	
	}
	
	state = BOARD_STATE.CHARGE;
}