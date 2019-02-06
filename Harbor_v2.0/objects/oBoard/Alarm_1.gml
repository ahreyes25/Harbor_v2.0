/// @description Piece Animation
for (var i = 0; i < gridW; i++) {
	for (var j = 0; j < gridH; j++) {
		if (ds_grid_get(grid, i, j) >= 20) {
			ds_grid_set(grid, i, j, ELEMENT.NONE);	
		}
	}
}

// Time to refill
alarm[2] = 30;