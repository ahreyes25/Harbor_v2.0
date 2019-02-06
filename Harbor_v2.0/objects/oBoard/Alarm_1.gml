/// @description Delete & Chain

// Delete
for (var i = 0; i < gridW; i++) {
	for (var j = 0; j < gridH; j++) {
		if (ds_grid_get(grid, i, j) >= 20) {
			ds_grid_set(grid, i, j, ELEMENT.NONE);	
		}
	}
}

// Not Chaining -- Refill
if (global.spellData[cursor, SP.CHAIN_PIECE] == noone) {
	// Refill
	alarm[2] = 20;
}

// Chain
else {
	pGrid = ds_grid_create(gridW, gridH);
	
	for (var i = 0; i < gridW; i++) {
		for (var j = 0; j < gridH; j++) {
			if (ds_grid_get(grid, i, j) == 0)
				ds_grid_set(pGrid, i, j, 0);
			else
				ds_grid_set(pGrid, i, j, -1);
		}
	}

	waveCounter = 0;
	chainCounter = 1;
	wave(1, global.spellData[cursor, SP.CHAIN_PIECE]);
	
	alarm[3] = 20;
}