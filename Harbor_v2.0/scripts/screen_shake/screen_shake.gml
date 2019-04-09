/// @description Shake the screen by a given size and for a given time
// This function is the function that is called whenever we want to shake the screen
/// @param Size*
/// @param NumberOfSteps*

if (argument_count == 1)
	var s = argument[0]; // screen shake size
else
	var s = 1;
	
if (argument_count == 2)
	var t = argument[1]; // screen shake time/duration
else
	var t = 10;


if (!instance_exists(oPuzzleController))
	return;

oPuzzleController.shakeSize = s * global.screenShakeMult;
oPuzzleController.shakeScreen = true;
oPuzzleController.alarm[0] = t;
