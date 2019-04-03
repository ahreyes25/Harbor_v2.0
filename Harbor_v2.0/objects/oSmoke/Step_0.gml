if (boardInst == noone)
	instance_destroy();
else
	if (!instance_exists(boardInst))
		instance_destroy();

switch (state) {
	case SMOKE_STATE.FADE_IN:
		if (alpha < 1)
			alpha += 0.05;
		else {
			alpha = 1;
			state = SMOKE_STATE.SIT;
		}
	break;
	
	case SMOKE_STATE.SIT:
		if (timer == 0)
			state = SMOKE_STATE.FADE_OUT;
	break
	
	case SMOKE_STATE.FADE_OUT:
		if (alpha > 0)
			alpha -= 0.01;
		else
			instance_destroy();
	break;
}