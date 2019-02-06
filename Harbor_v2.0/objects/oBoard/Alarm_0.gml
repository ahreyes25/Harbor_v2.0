/// @description White Pieces
for (var i = 0; i < gridW; i++) {
	for (var j = 0; j < gridH; j++) {
		if (ds_grid_get(grid, i, j) >= 10 && ds_grid_get(grid, i, j) < 20) {
			image_index = 0;
			ds_grid_set(grid, i, j, ds_grid_get(grid, i, j) + 10);	
		}
	}
}

// Time in animation
if (alarm[1] == -1)
	alarm[1] = 20;