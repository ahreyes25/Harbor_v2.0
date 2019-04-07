/// @param BoardInst

var board = argument0;

// Exit
if (!instance_exists(board))
	return;
if (board.grid == noone)
	return;
if (!ds_exists(board.grid, ds_type_grid))
	return;
	
var count = 0;
for (var i = 0; i < board.gridW; i++) {
	for (var j = 0; j < board.gridH; j++) {
		if (ds_grid_get(board.grid, i, j) == 0)
			count++;
	}
}

return count - array_length_1d(board.config);