/// @description Swap Two Pieces

if (array_length_1d(config) < 2) return;

var _c1 = config[0];
var _piece_one = ds_grid_get(grid, cursorI + _c1[0], cursorJ + _c1[1]);

var _c2 = config[1];
var _piece_two = ds_grid_get(grid, cursorI + _c2[0], cursorJ + _c2[1]);

ds_grid_set(grid, cursorI + _c1[0], cursorJ + _c1[1], _piece_two);
ds_grid_set(grid, cursorI + _c2[0], cursorJ + _c2[1], _piece_one);