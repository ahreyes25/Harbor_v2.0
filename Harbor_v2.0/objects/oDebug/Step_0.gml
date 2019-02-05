if (keyboard_check_pressed(vk_escape))
	game_end();
	
if (keyboard_check(vk_control)) {
	if (keyboard_check_pressed(vk_right))
		room_goto_next();
	if (keyboard_check_pressed(vk_left))
		room_goto_previous();
	if (keyboard_check_pressed(ord("F")))
		window_set_fullscreen(!window_get_fullscreen());
	if (keyboard_check_pressed(ord("R")))
		room_restart();
}