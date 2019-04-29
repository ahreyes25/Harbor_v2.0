/// @description Uses a priority grid/graph to recursively check for connecting chain pieces.
//  @param WaveIteration
//  @param PieceToChain

var _waveIter	= argument0;
var _chainPiece = argument1;

var _ww = gridW;
var _hh = gridH;

waveCounter++;

var _continue = false;

for (var i = 0; i < _ww; i++) {
	for (var j = 0; j < _hh; j++) {
		if (ds_grid_get(pGrid, i, j) == (_waveIter - 1)) {
			// Check left
			if (i - 1 >= 0) { // check for index out of bounds
				if (ds_grid_get(pGrid, i - 1, j) == -1 && // check for no priority
					ds_grid_get(grid,  i - 1, j) == _chainPiece) {  // check for right chain
						ds_grid_set(pGrid, i - 1, j, _waveIter);	
						_continue = true;
				}
			}
			
			// Check right
			if (i + 1 <= gridW - 1) { // check for index out of bounds
				if (ds_grid_get(pGrid, i + 1, j) == -1 && // check for no priority
					ds_grid_get(grid,  i + 1, j) == _chainPiece) {  // check for right chain
						ds_grid_set(pGrid, i + 1, j, _waveIter);
						_continue = true;
				}
			}
			
			// Check up
			if (j - 1 >= 0) { // check for index out of bounds
				if (ds_grid_get(pGrid, i, j - 1) == -1 && // check for no priority
					ds_grid_get(grid,  i, j - 1) == _chainPiece) {  // check for right chain
						ds_grid_set(pGrid, i, j - 1, _waveIter);
						_continue = true;
				}
			}
			
			// Check down
			if (j + 1 <= gridH - 1) { // check for index out of bounds
				if (ds_grid_get(pGrid, i, j + 1) == -1 && // check for no priority
					ds_grid_get(grid,  i, j + 1) == _chainPiece) {  // check for right chain
						ds_grid_set(pGrid, i, j + 1, _waveIter);	
						_continue = true;
				}
			}
		}
	}
}
 
if (_continue)
	wave(_waveIter + 1, _chainPiece);
