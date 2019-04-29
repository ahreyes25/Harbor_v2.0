/// @param combatCharacter*

if (argument_count == 1)
	var _combatCharacter = argument[0];
else
	var _combatCharacter = id;
	
if (_combatCharacter.appliedEffects) return;
if (!instance_exists(_combatCharacter)) return;
if (!ds_exists(_combatCharacter.lastingEffects, ds_type_list)) return;
if (ds_list_size(_combatCharacter.lastingEffects) <= 0) return;

for (var i = 0; i < ds_list_size(_combatCharacter.lastingEffects); i++) {
		
	// Get Current Effect Instance
	var _lastingEffect = ds_list_find_value(_combatCharacter.lastingEffects, i);
		
	// Make Sure Effect Instance Exists
	if (_lastingEffect != noone) {
		if (instance_exists(_lastingEffect)) {
				
			// Do Effect Stuff
			switch (_lastingEffect.type) {
					
				case ELEMENT.FIRE:
					heal_damage(_combatCharacter, -1, true);
					_combatCharacter.state = PLAYER_STATE.HURT;
					break;
			
				case ELEMENT.WATER:
					break;
			
				case ELEMENT.GRASS:
					heal_damage(_combatCharacter, -2, true);	
					_combatCharacter.state = PLAYER_STATE.HURT;
				
					if (_combatCharacter.enemy != noone)
						if (instance_exists(_combatCharacter.enemy))
							heal_damage(_combatCharacter.enemy, 2, true);
					break;
			
				case ELEMENT.ELECTRIC:
					break;
			}
		}
	}
}
_combatCharacter.appliedEffects = true;