draw_text(10, (room_height * 4) - 20, room_get_name(room));

if (instance_exists(oBoard))
	draw_text(10, 10, oBoard.state);
	
