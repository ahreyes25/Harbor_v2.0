/// @param Opacity*
/// @param Decay*

var _flashInst = instance_create_layer(0, 0, "Controllers", oFlash);

if (argument_count == 1)
	_flashInst.opacity = argument[0] * global.screenFlashMult;
else
	_flashInst.opacity = 0.6 * global.screenFlashMult;

if (argument_count == 2)
	_flashInst.decay = argument[1];
else
	_flashInst.decay = 0.05;

if (instance_exists(oPuzzleController))
	_flashInst.depth  = oPuzzleController.depth - 1;