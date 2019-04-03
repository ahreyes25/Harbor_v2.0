// Cleanup Data Structures
if (ds_exists(grid, ds_type_grid))
	ds_grid_destroy(grid);
if (ds_exists(floodInst, ds_type_list))
	ds_list_destroy(floodInst);
if (ds_exists(smokeInst, ds_type_list))
	ds_list_destroy(smokeInst);