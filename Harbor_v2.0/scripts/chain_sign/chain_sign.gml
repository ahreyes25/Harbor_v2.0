if (!instance_exists(oChainSign)) {

	var cs = instance_create_layer(argument0 + random_range(-5, 5) + 2, argument1 + random_range(-5, 5) + 3, "Controllers", oChainSign);

	if (instance_exists(oPuzzleController))
		cs.depth = oPuzzleController.depth - 1;
	
	// Set chain sign sprite index
	switch(global.spellData[cursor, SP.SPELL_ELEMENT]) {	

		case ELEMENT.FIRE:
			cs.sprite_index = sChainR;
			break;
		case ELEMENT.WATER:
			cs.sprite_index = sChainB;
			break;
		case ELEMENT.GRASS:
			cs.sprite_index = sChainG;
			break;
		case ELEMENT.ELECTRIC:
			cs.sprite_index = sChainY;
			break;
	}
}