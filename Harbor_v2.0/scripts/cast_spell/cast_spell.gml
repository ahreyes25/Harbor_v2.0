// Adjust Grid Values
for (var i = 0; i < array_length_1d(config); i++) {
	var c = config[i];
	ds_grid_set(grid, c[0] + cursorI, c[1] + cursorJ, ds_grid_get(grid, c[0] + cursorI, c[1] + cursorJ) + 10);	
}

// Drain Flood
drain_flood(1);

// Progress Board State
state = BOARD_STATE.CHARGE;	

// Flooding Occurs In Spell Destroy