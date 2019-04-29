/// @description Chain

image_index = 0;

if (waveCounter > 0) {
	for (var i = 0; i < gridW; i++) {
		for (var j = 0; j < gridH; j++) {
			
			// Piece to Chain and Spell Type Match
			if (global.spellData[cursor, SP.CHAIN_PIECE] == global.spellData[cursor, SP.SPELL_ELEMENT]) {
				if (ds_grid_get(pGrid, i, j) == chainCounter) {
					ds_grid_set(grid,  i, j, ds_grid_get(grid, i, j) + 20);
					
					screen_shake();
					float_text(board_to_world(id, i, "x"), board_to_world(id, j, "y"), 1, 5);
					chain_sign(board_to_world(id, i, "x"), board_to_world(id, j, "y"));
					
					// Play Sound Effect On Element Delete
					var _sound = global.spellData[SPELL.BASIC, SP.SOUND];
					if (_sound != noone) {
						if (ds_exists(grid, ds_type_grid))
							audio_play_sound(_sound[currentSpellElement], 0, 0);
					}
				}
			}
			// piece to chain and type dont match
			else {
				if (ds_grid_get(pGrid, i, j) == chainCounter) {
					ds_grid_set(grid, i, j, global.spellData[cursor, SP.SPELL_ELEMENT] + 20);
					
					screen_shake();
					float_text(board_to_world(id, i, "x"), board_to_world(id, j, "y"), 1, 5);
					chain_sign(board_to_world(id, i, "x"), board_to_world(id, j, "y"));
					
					// Play Sound Effect On Element Delete
					var _sound = global.spellData[SPELL.BASIC, SP.SOUND];
					if (_sound != noone) {
						if (ds_exists(grid, ds_type_grid))
							audio_play_sound(_sound[currentSpellElement], 0, 0);
					}
				}
			}
		}
	}
	chainCounter++;
	waveCounter--;
	
	// Trigger the next iteration of the chain
	alarm[3] = 20;
}
// Delete
else {
	alarm[4] = 10; 	
}
alarm[5] = 20;