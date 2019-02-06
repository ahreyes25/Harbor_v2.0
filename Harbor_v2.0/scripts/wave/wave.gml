/// @description Uses a priority grid/graph to recursively check for connecting chain pieces.
//  @param WaveIteration
//  @param PieceToChain

var w = argument0;
var c = argument1; // piece to chain

var ww = gridW;
var hh = gridH;

waveCounter++;

var cont = false;

for (var i = 0; i < ww; i++) {
	for (var j = 0; j < hh; j++) {
		if (ds_grid_get(pGrid, i, j) == (w - 1)) {
			// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
			// Check left
			if (i - 1 >= 0) { // check for index out of bounds
				if (ds_grid_get(pGrid, i - 1, j) == -1 && // check for no priority
					ds_grid_get(grid,  i - 1, j) == c) {  // check for right chain
						ds_grid_set(pGrid, i - 1, j, w);	
						cont = true;
				}
			}
			
			// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
			// Check right
			if (i + 1 <= gridW - 1) { // check for index out of bounds
				if (ds_grid_get(pGrid, i + 1, j) == -1 && // check for no priority
					ds_grid_get(grid,  i + 1, j) == c) {  // check for right chain
						ds_grid_set(pGrid, i + 1, j, w);
						cont = true;
				}
			}
			
			// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
			// Check up
			if (j - 1 >= 0) { // check for index out of bounds
				if (ds_grid_get(pGrid, i, j - 1) == -1 && // check for no priority
					ds_grid_get(grid,  i, j - 1) == c) {  // check for right chain
						ds_grid_set(pGrid, i, j - 1, w);
						cont = true;
				}
			}
			
			// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
			// Check down
			if (j + 1 <= gridH - 1) { // check for index out of bounds
				if (ds_grid_get(pGrid, i, j + 1) == -1 && // check for no priority
					ds_grid_get(grid,  i, j + 1) == c) {  // check for right chain
						ds_grid_set(pGrid, i, j + 1, w);	
						cont = true;
				}
			}
		}
	}
}

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
if (cont)
	wave(w + 1, c);
