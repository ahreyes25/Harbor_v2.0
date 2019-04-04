/// @param boardInst
/// @param rowIndex
/// @param element

var board	= argument0;
var row		= argument1;
var element	= argument2;

if (!instance_exists(board))
	return;
if (board.grid == noone)
	return;
if (!ds_exists(board.grid, ds_type_grid))
	return;
	
// Convert
for (var i = 0; i < board.gridW; i++)
	ds_grid_set(board.grid, i, row, element);	