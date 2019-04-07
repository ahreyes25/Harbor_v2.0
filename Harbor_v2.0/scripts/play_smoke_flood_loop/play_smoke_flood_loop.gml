// Flood Sounds
if (floodInst != noone) {
	if (ds_exists(floodInst, ds_type_list)) {
		if (ds_list_size(floodInst) > 0) {
			if (!audio_is_playing(sfx_flood_loop)) {
				if (chance(0.001)) {
					audio_play_sound(sfx_flood_loop, 0, 0);	
				}
			}
		}
	}
}

// Smoke Sounds
if (smokeInst != noone) {
	if (ds_exists(smokeInst, ds_type_list)) {
		if (ds_list_size(smokeInst) > 0) {
			if (!audio_is_playing(sfx_smoke_loop)) {
				if (chance(0.001)) {
					audio_play_sound(sfx_smoke_loop, 0, 0);	
				}
			}
		}
	}
}