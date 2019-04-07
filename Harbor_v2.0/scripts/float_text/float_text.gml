/// @param x
/// @param y
/// @param text
/// @param random

var t = instance_create_layer(argument0 + random_range(-argument3, argument3), argument1 + random_range(-argument3, argument3), "Boards", oText);
t.text = argument2;

if (instance_exists(oPuzzleController))
	t.depth = oPuzzleController.depth - 1;
	
return t;