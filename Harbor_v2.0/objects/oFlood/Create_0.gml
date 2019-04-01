enum FLOOD_STATE {
	EASE_IN, STILL, FLUCTUATE, FADE_OUT
}

boardInst = noone;
sprite_index = sFlood;
alpha = 0.5;

fillSpeed = 0.1;
target = noone;
newTarget = noone;
waveSpeed = 15;
waveRange = 0.2;
state = FLOOD_STATE.EASE_IN;