input();

var cast = false;
var c = [];

if (kA1Pressed) {

	switch (cursor) {
		
		case SPELL.BASIC:
			cast = true;
			break;
		
		case SPELL.FIREBALL:
			var config = [[1, 0], [0, 1], [1, 1], [2, 1], [1, 2]];

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
			c = config
			break;
	}
}

// Valid spell found
if (cast) {
	state = BOARD_STATE.CHARGE;
	
	for (var i = 0; i < array_length_1d(config); i++) {
		var c = config[i];
		ds_grid_set(grid, c[0] + cursorI, c[1] + cursorJ, ds_grid_get(grid, c[0] + cursorI, c[1] + cursorJ) + 10);	
	}
}