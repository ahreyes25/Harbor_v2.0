/// @description Animation

image_index = 0;

for (var i = 0; i < gridW; i++) {
	for (var j = 0; j < gridH; j++) {
		if (ds_grid_get(grid, i, j) >= 10 && ds_grid_get(grid, i, j) < 20) {
			ds_grid_set(grid, i, j, ds_grid_get(grid, i, j) + 10);	
			
			// Play Sound Effect On Element Delete
			var _sound = global.spellData[SPELL.BASIC, SP.SOUND];
			if (_sound != noone) {
				if (ds_exists(grid, ds_type_grid))
					if (!audio_is_playing(_sound[currentSpellElement]))
						audio_play_sound(_sound[currentSpellElement], 0, 0);
			}
		}
	}
}

// Time in animation
alarm[1] = 20;