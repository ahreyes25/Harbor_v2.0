if (ds_exists(grid, ds_type_grid)) {
	for (var i = 0; i < gridW; i++) {
		for (var j = 0; j < gridH; j++) {
			
			switch (ds_grid_get(grid, i, j)) {
				
				// Fire
				case ELEMENT.FIRE:
					draw_sprite_ext(sFire, 0, x + (i * space), y + (j * space), scale, scale, 0, c_white, 1);
					break;
				case 11:
					draw_sprite_ext(sFire, 1, x + (i * space), y + (j * space), scale, scale, 0, c_white, 1);
					break;
				case 21:
					image_speed = 0.2;
					draw_sprite_ext(sFireAnim, image_index, x + (i * space) - 4, y + (j * space) - 8, scale, scale, 0, c_white, 1);
					break;
					
				// Water
				case ELEMENT.WATER:
					draw_sprite_ext(sWater, 0, x + (i * space), y + (j * space), scale, scale, 0, c_white, 1);
					break;
				case 12:
					draw_sprite_ext(sWater, 1, x + (i * space), y + (j * space), scale, scale, 0, c_white, 1);
					break;
				case 22:
					image_speed = 0.2;
					draw_sprite_ext(sWaterAnim, image_index, x + (i * space) - 6, y + (j * space) - 4, scale, scale, 0, c_white, 1);
					break;
					
				// Grass
				case ELEMENT.GRASS:
					draw_sprite_ext(sGrass, 0, x + (i * space), y + (j * space), scale, scale, 0, c_white, 1);
					break;
				case 13:
					draw_sprite_ext(sGrass, 1, x + (i * space), y + (j * space), scale, scale, 0, c_white, 1);
					break;
				case 23:
					image_speed = 0.2;
					draw_sprite_ext(sGrassAnim, image_index, x + (i * space) - 5, y + (j * space) - 4, scale, scale, 0, c_white, 1);
					break;
					
				// Electric
				case ELEMENT.ELECTRIC:
					draw_sprite_ext(sElectric, 0, x + (i * space), y + (j * space), scale, scale, 0, c_white, 1);
					break;
				case 14:
					draw_sprite_ext(sElectric, 1, x + (i * space), y + (j * space), scale, scale, 0, c_white, 1);
					break;
				case 24:
					image_speed = 0.2;
					draw_sprite_ext(sElectric, 1, x + (i * space), y + (j * space), scale, scale, 0, c_white, 1);
					draw_sprite_ext(sElectricAnim, image_index, x + (i * space) + 3, y + (j * space) + 2, scale, scale, 0, c_white, 1);
					break;
			}
		}
	}
}