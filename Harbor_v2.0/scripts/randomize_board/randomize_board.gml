/// @param boardInst

var board = argument0;

if (!instance_exists(board))
	return;
if (board.grid == noone)
	return;
if (!ds_exists(board.grid, ds_type_grid))
	return;

var g = board.grid;
var gw = ds_grid_width(g);
var gh = ds_grid_height(g);

for (var i = 0; i < gw; i++) {
	for (var j = 0; j < gh; j++) {
		ds_grid_set(g, i, j, random_element());
	}
}