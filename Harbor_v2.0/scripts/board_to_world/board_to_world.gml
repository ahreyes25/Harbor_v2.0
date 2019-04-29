/// @param boardInst
/// @param coord value to convert
/// @param xOrY if value is an x or y coordinate

var _boardInst	= argument0;
var coord		= argument1;
var xOrY		= argument2; 

if (!instance_exists(_boardInst)) return;

if (xOrY == "x")
	return ((coord * _boardInst.space) + _boardInst.x);
else if (xOrY == "y")
	return ((coord * _boardInst.space) + _boardInst.y);
