enum FLOOD_STATE {
	EASE_IN, STILL, FLUCTUATE, FADE_OUT, DRAIN
}

boardInst		= noone;
sprite_index	= sFlood;
alpha			= 0.7;
fillSpeed		= 0.1;
target			= noone;
newTarget		= target;
waveSpeed		= 15;
waveRange		= 0.2;
state			= FLOOD_STATE.EASE_IN;
playedSound		= false;