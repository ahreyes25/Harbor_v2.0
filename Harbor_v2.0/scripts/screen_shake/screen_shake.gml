/// @description Shake the screen by a given size and for a given time
// This function is the function that is called whenever we want to shake the screen

/// @param Size*
/// @param NumberOfSteps*

if (!instance_exists(oPuzzleController)) return;

if (argument_count == 1)
	var _screenShakeSize = argument[0];
else
	var _screenShakeSize = 1;
	
if (argument_count == 2)
	var _screenShakeTime = argument[1];
else
	var _screenShakeTime = 10;

oPuzzleController.shakeSize		= _screenShakeSize * global.screenShakeMult;
oPuzzleController.shakeScreen	= true;
oPuzzleController.alarm[0]		= _screenShakeTime;