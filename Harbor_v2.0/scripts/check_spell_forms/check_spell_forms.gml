input();

var _castSpell = false;
var _swap = false;

if (kSelectPressed) {
	switch (cursor) {
		
		#region Swap
		case SPELL.SWAP:
			_swap = true;
			break;
		#endregion
		
		#region Basic
		case SPELL.BASIC:
			_castSpell = true;
			break;
		#endregion
		
		#region Fireball
		case SPELL.FIREBALL:
			// Check For All Fires
			var _passedConfig = true;
			for (var i = 0; i < array_length_1d(config); i++){
				var c = config[i];
				if (ds_grid_get(grid, cursorI + c[0], cursorJ + c[1]) != ELEMENT.FIRE) {
					_passedConfig = false;
					break;
				}
			}	
			_castSpell = _passedConfig;
			break;
		#endregion
		
		#region ElectricBolt
		case SPELL.ELECTRIC_BOLT:
			// Check For All Electric
			var _passedConfig = true;
			for (var i = 0; i < array_length_1d(config); i++){
				var c = config[i];
				if (ds_grid_get(grid, cursorI + c[0], cursorJ + c[1]) != ELEMENT.ELECTRIC) {
					_passedConfig = false;
					break;
				}
			}	
			_castSpell = _passedConfig;
			break;
		#endregion
			
		#region Elemental
		case SPELL.ELEMENTAL:
			// Check Spell: check for one of each
			var _red    = false;
			var _blue   = false;
			var _green  = false;
			var _yellow = false;
			var _passedConfig = false;
			
			for (var i = 0; i < array_length_1d(config); i++){
				var c = config[i];
				if (ds_grid_get(grid, cursorI + c[0], cursorJ + c[1]) == ELEMENT.FIRE)
					_red = true;
				else if (ds_grid_get(grid, cursorI + c[0], cursorJ + c[1]) == ELEMENT.WATER)
					_blue = true;
				else if (ds_grid_get(grid, cursorI + c[0], cursorJ + c[1]) == ELEMENT.GRASS)
					_green = true;
				else if (ds_grid_get(grid, cursorI + c[0], cursorJ + c[1]) == ELEMENT.ELECTRIC)
					_yellow = true;
			}	
			
			// If Valid
			if (_red && _blue && _green && _yellow) {
				_passedConfig = true;
			}
			_castSpell = _passedConfig;
			break;
		#endregion
		
		#region Tsunami 
		case SPELL.TSUNAMI:
			// Check For All Waters
			var _passedConfig = true;
			for (var i = 0; i < array_length_1d(config); i++){
				var c = config[i];
				if (ds_grid_get(grid, cursorI + c[0], cursorJ + c[1]) != ELEMENT.WATER) {
					_passedConfig = false;
					break;
				}
			}	
			_castSpell = _passedConfig;
			break;
		#endregion
		
		#region Sprout 
		case SPELL.SPROUT:
			// Check For All Grass
			var _passedConfig = true;
			for (var i = 0; i < array_length_1d(config); i++){
				var c = config[i];
				if (ds_grid_get(grid, cursorI + c[0], cursorJ + c[1]) != ELEMENT.GRASS) {
					_passedConfig = false;
					break;
				}
			}	
			_castSpell = _passedConfig;
			break;
		#endregion
		
		#region Brushfire 
		case SPELL.BRUSHFIRE:
			// Check Spell: check for fire grass fire
			var _passedConfig = false;
			
			var c = config[0];
			if (ds_grid_get(grid, cursorI + c[0], cursorJ + c[1]) == ELEMENT.FIRE) { 
				c = config[1];
				if (ds_grid_get(grid, cursorI + c[0], cursorJ + c[1]) == ELEMENT.GRASS) {
					c = config[2];
					if (ds_grid_get(grid, cursorI + c[0], cursorJ + c[1]) == ELEMENT.FIRE) {
						_passedConfig = true;
					}
				}
			}
			_castSpell = _passedConfig;
			break;
		#endregion
	}
}

// Valid spell found
if (_castSpell)
	cast_spell();
if (_swap)
	swap();