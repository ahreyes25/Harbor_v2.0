/// @param boardInst
/// @param columnIndex
/// @param element

var board	= argument0;
var column	= argument1;
var element	= argument2;

if (!instance_exists(board))
	return;
if (board.grid == noone)
	return;
if (!ds_exists(board.grid, ds_type_grid))
	return;
	
// Convert
for (var j = 0; j < board.gridH; j++)
	ds_grid_set(board.grid, column, j, element);	