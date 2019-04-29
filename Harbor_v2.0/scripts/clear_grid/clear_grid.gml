/// @param ds_grid

if (!ds_exists(argument0, ds_type_grid)) return;

var _dsGrid = argument0;
var _gridW	= ds_grid_width(_dsGrid);
var _gridH	= ds_grid_height(_dsGrid);

for (var i = 0; i < _gridW; i++) {
	for (var j = 0; j < _gridH; j++) {
		ds_grid_set(_dsGrid, i, j, ELEMENT.NONE);
	}
}