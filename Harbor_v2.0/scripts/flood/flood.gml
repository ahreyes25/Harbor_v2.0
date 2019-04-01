/// @param BoardInst
/// @param height

var board = argument0;
var height = argument1;

// Exit
if (!instance_exists(board))
	return;	
if (!ds_exists(board.grid, ds_type_grid))
	return;
if (board.grid == noone)
	return;
	
// Create Flood Grid
if (board.floodGrid == noone)
	board.floodGrid = ds_grid_create(board.gridW, board.gridH);
if (!ds_exists(board.floodGrid, ds_type_grid))
	board.floodGrid = ds_grid_create(board.gridW, board.gridH);

// Populate Flood Grid, Set Flood Timer
if (alarm[6] == -1) {
	
	for (var i = 0; i < board.gridW; i++) {
		for (var j = 0; j < height; j++) {
			ds_grid_set(board.floodGrid, i, board.gridH - 1 - j, 1);
		}
	}
	alarm[6] = floodTimer;
}