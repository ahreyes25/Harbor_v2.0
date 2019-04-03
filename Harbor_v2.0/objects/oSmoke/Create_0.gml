enum SMOKE_STATE {
	FADE_IN, FADE_OUT, SIT
}

sprite_index	= sSmoke;
image_speed		= random_range(0.1, 0.4);
image_index		= irandom_range(0, 3);
image_xscale	= random_range(1.2, 1.5);
image_yscale	= image_xscale;

boardInst	= noone;
timer		= 0;
state		= SMOKE_STATE.FADE_IN;
ii			= noone;
jj			= noone;
alpha		= 0;