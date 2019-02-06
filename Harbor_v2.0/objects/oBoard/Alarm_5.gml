/// @description Chain Delete Old Links

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Delete old links in the chain
for (var i = 0; i < gridW; i++) {
	for (var j = 0; j < gridH; j++) {
		if (ds_grid_get(grid, i, j) >= 20) {
			ds_grid_set(grid, i, j, 0);	
		}
	}
}
