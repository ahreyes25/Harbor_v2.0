// float upwards
y = y - 0.1;

// fade out
if (image_alpha > 0)
	image_alpha -= 0.015;
	
// delete
if (image_alpha <= 0)
	instance_destroy();

if (instance_exists(oBoard))
	depth = oBoard.depth - 1;