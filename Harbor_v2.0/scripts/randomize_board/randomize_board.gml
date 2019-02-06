/// @param ds_grid

if (!ds_exists(argument0, ds_type_grid))
	return;

var g = argument0;
var gw = ds_grid_width(g);
var gh = ds_grid_height(g);

for (var i = 0; i < gw; i++) {
	for (var j = 0; j < gh; j++) {
		ds_grid_set(g, i, j, random_element());
	}
}