// Store Last Element Value
if (cursor == SPELL.BASIC)
	currentSpellElement = ds_grid_get(grid, cursorI, cursorJ);	
else
	currentSpellElement = global.spellData[cursor, SP.SPELL_ELEMENT];	


// Destroy Entire Row or Column
if (global.spellData[cursor, SP.CONVERT_ROW] != noone) {
	
	for (var i = 0; i < array_length_1d(global.spellData[cursor, SP.CONVERT_ROW_CONFIG]); i++) {
		
		var _configArray = global.spellData[cursor, SP.CONVERT_ROW_CONFIG];
		var _config = _configArray[i];
		
		convert_row_to(id, cursorJ + _config[0], global.spellData[cursor, SP.CONVERT_ROW]);
	
		for (var j = 0; j < gridW; j++) {
			ds_grid_set(grid, j, cursorJ + _config[0], global.spellData[cursor, SP.CONVERT_ROW] + 10);
		}
	}
}
if (global.spellData[cursor, SP.CONVERT_COLUMN] != noone) {
	
	for (var i = 0; i < array_length_1d(global.spellData[cursor, SP.CONVERT_COLUMN_CONFIG]); i++) {
		
		var _configArray = global.spellData[cursor, SP.CONVERT_COLUMN_CONFIG];
		var _config = _configArray[i];
		
		convert_column_to(id, cursorI + _config[1], global.spellData[cursor, SP.CONVERT_COLUMN]);
	
		for (var j = 0; j < gridH; j++) {
			ds_grid_set(grid, cursorI + _config[1], j, global.spellData[cursor, SP.CONVERT_COLUMN] + 10);
		}
	}
}


// Adjust Grid Values
for (var i = 0; i < array_length_1d(config); i++) {
	var c = config[i];
	ds_grid_set(grid, c[0] + cursorI, c[1] + cursorJ, ds_grid_get(grid, c[0] + cursorI, c[1] + cursorJ) + 10);	
}


// Drain Flood
drain_flood(1);


// Count Down Smoke
if (smokeInst != noone) {
	if (ds_exists(smokeInst, ds_type_list)) {
		for (var i = 0; i < ds_list_size(smokeInst); i++) {
			with (ds_list_find_value(smokeInst, i)) {
				if (timer > 0)
					timer--;	
			}
		}
	}
}


state = BOARD_STATE.CHARGE;	
audio_play_sound(sfx_spell_select, 0, 0);

// Flooding Gets Created In Spell Destroy
// Smoke Gets Created In Spell Destroy