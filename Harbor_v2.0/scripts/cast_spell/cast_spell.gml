// Adjust Grid Values
for (var i = 0; i < array_length_1d(config); i++) {
	var c = config[i];
	ds_grid_set(grid, c[0] + cursorI, c[1] + cursorJ, ds_grid_get(grid, c[0] + cursorI, c[1] + cursorJ) + 10);	
}

// Drain Flood
drain_flood(1);

// Count Down Smoke
if (smokeInst != noone) {
	if (ds_exists(smokeInst, ds_type_list)) {
		for (var i = 0; i < ds_list_size(smokeInst); i++) {
			with (ds_list_find_value(smokeInst, i)) {
				if (timer > 0)
					timer--;	
			}
		}
	}
}

// Progress Board State
state = BOARD_STATE.CHARGE;	

// Flooding Occurs In Spell Destroy