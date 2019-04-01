/// @param x
/// @param y
/// @param text

var t = instance_create_layer(argument0 + random_range(-5, 5), argument1 + random_range(-5, 5), "Boards", oText);
t.text = argument2;

if (instance_exists(oPuzzleController))
	t.depth = oPuzzleController.depth - 1;