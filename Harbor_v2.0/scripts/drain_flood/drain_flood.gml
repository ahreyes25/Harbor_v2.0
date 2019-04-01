/// @param Amount

if (floodGrid == noone)
	return;
if (!ds_exists(floodGrid, ds_type_grid))
	return;

var floodLevel = noone;

// Find Water Level
for (var i = 0; i < gridW; i++) {
	for (var j = 0; j < gridH; j++) {
		if (ds_grid_get(floodGrid, i, j) == 1) {
			floodLevel = j;
			break;
		}
	}
	if (floodLevel != noone)
		break;
}

if (floodLevel != noone) {

	// Clear x number of layers off top of water
	for (var i = 0; i < gridW; i++) {
		for (var j = 0; j < argument0; j++) {
			if (floodLevel + j < gridH) {
				ds_grid_set(floodGrid, i, floodLevel + j, 0);	
			}
		}
	}
}
else {
	// Stop Draining & Destroy Grid
	alarm[6] = -1;
	
	if (ds_exists(floodGrid, ds_type_grid))
		ds_grid_destroy(floodGrid)
	
	floodGrid = noone;
}