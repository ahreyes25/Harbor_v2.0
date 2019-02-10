switch (moves) {
	case DIR.UP:
		y -= moveSpeed;
		if (y < -100)
			instance_destroy();
		break;
		
	case DIR.RIGHT:
		x += moveSpeed;
		if (x > room_width + 100)
			instance_destroy();
		break;
		
	case DIR.LEFT:
		x -= moveSpeed;
		if (x < -100)
			instance_destroy();
		break;
		
	case DIR.DOWN:
		y += moveSpeed;
		if (y > room_height + 100)
			instance_destroy();
		break;
}