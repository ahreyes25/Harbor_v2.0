/// @param boardInst
/// @param coord value to convert
/// @param xOrY if value is an x or y coordinate

var b		= argument0;
var coord	= argument1;
var xOrY	= argument2; 

if (!instance_exists(b))
	return;

if (xOrY == "x")
	return ((coord * b.space) + b.x);
else if (xOrY == "y")
	return ((coord * b.space) + b.y);
