if (instance_exists(oChainSign)) return;

var _chainSignInst = instance_create_layer(argument0 + random_range(-5, 5) + 2, argument1 + random_range(-5, 5) + 3, "Boards", oChainSign);

if (instance_exists(oPuzzleController))
	_chainSignInst.depth = oPuzzleController.depth - 1;
	
// Set chain sign sprite index
switch(global.spellData[cursor, SP.SPELL_ELEMENT]) {	

	case ELEMENT.FIRE:
		_chainSignInst.sprite_index = sChainR;
		break;
	case ELEMENT.WATER:
		_chainSignInst.sprite_index = sChainB;
		break;
	case ELEMENT.GRASS:
		_chainSignInst.sprite_index = sChainG;
		break;
	case ELEMENT.ELECTRIC:
		_chainSignInst.sprite_index = sChainY;
		break;
}