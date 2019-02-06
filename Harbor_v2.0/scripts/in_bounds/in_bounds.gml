/// @param grid
/// @param i
/// @param j

if (!ds_exists(argument0, ds_type_grid))
	return;

return (
	argument1 < ds_grid_width(argument0) && argument1 >= 0 && 
	argument2 < ds_grid_height(argument0) && argument2 >= 0
);