/// @param x
/// @param y
/// @param text
/// @param random

var _textInst  = instance_create_layer(argument0 + random_range(-argument3, argument3), argument1 + random_range(-argument3, argument3), "Boards", oText);
_textInst.text = argument2;

if (instance_exists(oPuzzleController))
	_textInst.depth = oPuzzleController.depth - 1;
	
return _textInst;