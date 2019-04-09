/// @param combatCharacter*

if (argument_count == 1)
	var o = argument[0];
else
	var o = id;
	
if (o.appliedEffects)
	return;
if (!instance_exists(o))
	return;
if (!ds_exists(o.lastingEffects, ds_type_list))
	return;

if (ds_list_size(o.lastingEffects) > 0) {
	for (var i = 0; i < ds_list_size(o.lastingEffects); i++) {
		
		// Get Current Effect Instance
		var effect = ds_list_find_value(o.lastingEffects, i);
		
		// Make Sure Effect Instance Exists
		if (effect != noone) {
			if (instance_exists(effect)) {
				
				// Do Effect Stuff
				switch (effect.type) {
					
					case ELEMENT.FIRE:
						heal_damage(o, -1, true);
						o.state = PLAYER_STATE.HURT;
					break;
			
					case ELEMENT.WATER:
					break;
			
					case ELEMENT.GRASS:
						heal_damage(o, -2, true);	
						o.state = PLAYER_STATE.HURT;
				
						if (o.enemy != noone)
							if (instance_exists(o.enemy))
								heal_damage(o.enemy, 2, true);
					break;
			
					case ELEMENT.ELECTRIC:
					break;
				}
			}
		}
	}
	o.appliedEffects = true;
}