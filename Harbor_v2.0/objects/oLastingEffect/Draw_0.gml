switch (type) {
	case ELEMENT.WATER:
		sprite_index = sEffectDrip;
		image_speed = 0.1;
		draw_self();
	break;
	
	case ELEMENT.FIRE:
		sprite_index = sEffectBurn;
		image_speed = 0.4;
		draw_self();
	break;
	
	case ELEMENT.ELECTRIC:
		sprite_index = sEffectStatic;
		image_speed = 0.1;
		draw_self();
	break;
	
	case ELEMENT.GRASS:
		sprite_index = sEffectPlant;
		image_speed = 0.1;
		draw_self();
	break;
}