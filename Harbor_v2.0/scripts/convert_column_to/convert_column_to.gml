/// @param boardInst
/// @param columnIndex
/// @param element

var _boardInst	= argument0;
var _column		= argument1;
var _element	= argument2;

if (!instance_exists(_boardInst)) return;
if (_boardInst.grid == noone) return;
if (!ds_exists(_boardInst.grid, ds_type_grid)) return;
	
// Convert
for (var j = 0; j < _boardInst.gridH; j++)
	ds_grid_set(_boardInst.grid, _column, j, _element);	