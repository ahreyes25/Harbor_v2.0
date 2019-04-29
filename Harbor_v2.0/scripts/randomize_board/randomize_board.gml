/// @param boardInst

var _boardInst = argument0;

if (!instance_exists(_boardInst)) return;
if (_boardInst.grid == noone) return;
if (!ds_exists(_boardInst.grid, ds_type_grid)) return;

var _grid  = _boardInst.grid;
var _gridW = ds_grid_width(_grid);
var _gridH = ds_grid_height(_grid);

for (var i = 0; i < _gridW; i++) {
	for (var j = 0; j < _gridH; j++) {
		ds_grid_set(_grid, i, j, random_element());
	}
}