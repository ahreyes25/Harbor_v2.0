/// @param boardInst
/// @param rowIndex
/// @param element

var _boardInst	= argument0;
var _row		= argument1;
var _element	= argument2;

if (!instance_exists(_boardInst)) return;
if (_boardInst.grid == noone) return;
if (!ds_exists(_boardInst.grid, ds_type_grid)) return;
	
// Convert
for (var i = 0; i < _boardInst.gridW; i++)
	ds_grid_set(_boardInst.grid, i, _row, _element);	