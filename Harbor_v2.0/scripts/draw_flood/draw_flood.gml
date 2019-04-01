if (!ds_exists(floodGrid, ds_type_grid))
	return;
if (floodGrid == noone)
	return;

for (var i = 0; i < gridW; i++) {
	for (var j = 0; j < gridH; j++) {
		if (ds_grid_get(floodGrid, i, j) == 1) {
			draw_sprite_ext(sFlood, 0, x + (i * space), y + (j * space), scale, scale, 0, c_white, 0.5);
		}
	}
}