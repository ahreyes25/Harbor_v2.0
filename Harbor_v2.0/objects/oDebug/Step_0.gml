if (keyboard_check_pressed(vk_escape))
	game_end();
	
if (keyboard_check(vk_shift)) {
	if (keyboard_check_pressed(vk_right))
		room_goto_next();
	if (keyboard_check_pressed(vk_left))
		room_goto_previous();
	if (keyboard_check_pressed(ord("F")))
		window_set_fullscreen(!window_get_fullscreen());
	if (keyboard_check_pressed(ord("R")))
		room_restart();
}

if (keyboard_check_pressed(ord("1"))) {
	for (var i = 0; i < oPuzzleController.board1Inst.gridW; i++) {
		for (var j = 0; j < oPuzzleController.board1Inst.gridH; j++) {
			ds_grid_set(oPuzzleController.board1Inst.grid, i, j, ELEMENT.FIRE);
		}
	}
}
if (keyboard_check_pressed(ord("2"))) {
	for (var i = 0; i < oPuzzleController.board1Inst.gridW; i++) {
		for (var j = 0; j < oPuzzleController.board1Inst.gridH; j++) {
			ds_grid_set(oPuzzleController.board1Inst.grid, i, j, ELEMENT.WATER);
		}
	}
}
if (keyboard_check_pressed(ord("3"))) {
	for (var i = 0; i < oPuzzleController.board1Inst.gridW; i++) {
		for (var j = 0; j < oPuzzleController.board1Inst.gridH; j++) {
			ds_grid_set(oPuzzleController.board1Inst.grid, i, j, ELEMENT.GRASS);
		}
	}
}
if (keyboard_check_pressed(ord("4"))) {
	for (var i = 0; i < oPuzzleController.board1Inst.gridW; i++) {
		for (var j = 0; j < oPuzzleController.board1Inst.gridH; j++) {
			ds_grid_set(oPuzzleController.board1Inst.grid, i, j, ELEMENT.ELECTRIC);
		}
	}
}