draw_text(10, (room_height * 4) - 20, room_get_name(room));

if (instance_exists(oBoard))
	if (oBoard.pid == PLAYER.P1) {
		//draw_text(10, (room_height * 4) - 60, oBoard.alarm[7]);
		//draw_text(10, (room_height * 4) - 40, oBoard.alarm[8]);
	}