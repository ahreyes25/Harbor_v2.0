/// @param Opacity*
/// @param Decay*

var f = instance_create_layer(0, 0, "Controllers", oFlash);

if (argument_count == 1)
	f.opacity = argument[0] * global.screenFlashMult;
else
	f.opacity = 0.6 * global.screenFlashMult;

if (argument_count == 2)
	f.decay = argument[1];
else
	f.decay = 0.05;

if (instance_exists(oPuzzleController))
	f.depth  = oPuzzleController.depth - 1;