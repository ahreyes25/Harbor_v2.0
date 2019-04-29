// Set grid to slide values down
for (var i = gridW - 1; i >= 0; i--){ // loop through grid
	for (var j = gridH - 1; j >= 0; j--){
		if (ds_grid_get(grid, i, j) == 0){ // empty in current index
			// check for all emptys above current index
			var _emptyAbove = true;
			var k = j - 1;
			var l;
			while (k >= 0){ // search for pieces above
				if (ds_grid_get(grid, i, k) != 0){ // if there is a piece above
					_emptyAbove = false;
					l = k; // store index where non-empty piece exists
					break;
				}
				else
					k--;
			}
			k = j; // reset k to current index
			if (!_emptyAbove){ // shift everything down
				while (l >= 0){
					ds_grid_set(grid, i, k, ds_grid_get(grid, i, l));	 // set k to l
					ds_grid_set(grid, i, l, random_element()); // set l to random
					l--;
					k--;
				}
			}
			else{ // if empty, fill all above with randoms
				while (k >= 0){
					ds_grid_set(grid, i, k, random_element());
					k--;
				}
			}
		}
	}
}