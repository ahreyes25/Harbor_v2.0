if (newTarget == noone)
	newTarget = target;
if (boardInst == noone)
	instance_destroy();
else
	if (!instance_exists(boardInst))
		instance_destroy();
	
switch(state) {
	case FLOOD_STATE.EASE_IN:
		if (image_yscale < target + 0.2) {
			image_yscale += fillSpeed;
			y -= fillSpeed;
		}
		else {
			state = FLOOD_STATE.FLUCTUATE;
			alarm[0] = waveSpeed;
		}
		
		if (!playedSound) {
			if (!audio_is_playing(sfx_flood)) { 
				audio_play_sound(sfx_flood, 0, 0);
				playedSound = true;
			}
		}
	break;
	
	case FLOOD_STATE.STILL:
		image_yscale = target;
		playedSound = false;
	break;
	
	case FLOOD_STATE.FLUCTUATE:
		if (newTarget != noone) {
			if (image_yscale < newTarget) {
				image_yscale += 0.01;
				y -= 0.01;
			}
			if (image_yscale > newTarget) {
				image_yscale -= 0.01;
				y += 0.01;
			}
		}
		playedSound = false;
	break;
	
	case FLOOD_STATE.FADE_OUT:
		if (alpha > 0)
			alpha -= 0.01;
		else
			instance_destroy();
	break;
	
	case FLOOD_STATE.DRAIN:
		target = 0;
		if (image_yscale > target) {
			image_yscale -= fillSpeed;
			y += fillSpeed;
		}
		else
			state = FLOOD_STATE.FADE_OUT;
			
		if (!playedSound) {
			if (!audio_is_playing(sfx_flood)) { 
				audio_play_sound(sfx_flood, 0, 0);
				playedSound = true;
			}
		}
	break;
}
	
// Hide Smoke Behind Water
if (instance_exists(oSmoke))
	depth = oSmoke.depth - 1;