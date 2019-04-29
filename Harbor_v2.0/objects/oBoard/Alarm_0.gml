/// @description Animation

image_index = 0;

// Time in animation
alarm[1] = 20;

if (ds_exists(grid, ds_type_grid)) {
	for (var i = 0; i < gridW; i++) {
		for (var j = 0; j < gridH; j++) {
			if (ds_grid_get(grid, i, j) >= 10 && ds_grid_get(grid, i, j) < 20) {
				ds_grid_set(grid, i, j, ds_grid_get(grid, i, j) + 10);	
			
				// Play Sound Effect On Element Delete from Board
				var _sound = global.spellData[SPELL.BASIC, SP.SOUND];
				if (_sound != noone) {
					
					// Check That Current Spell Element is Not ELEMENT.ALL
					if (currentSpellElement == ELEMENT.ALL) {
						if (!audio_is_playing(_sound[random_element()]))
							audio_play_sound(_sound[random_element()], 0, 0);	
					}
					else {
						if (!audio_is_playing(_sound[currentSpellElement]))
							audio_play_sound(_sound[currentSpellElement], 0, 0);	
					}
				}
			}
		}
	}
}