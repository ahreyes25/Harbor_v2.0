// Create Surface If Not Existing
if (!surface_exists(global.squaresSurface))
	global.squaresSurface = surface_create(room_width, room_height);
	
surface_set_target(global.squaresSurface);
draw_clear_alpha(c_black, 0);

#region Draw Tiled Background
	
image_speed = 0.1;
draw_sprite_tiled(sSquares, image_index, 0, 0);
	
#endregion
	
#region Combat Zone
	
if (ground1 != noone && ground2 != noone) {
	if (instance_exists(ground1) && instance_exists(ground2)) {
		
		var _x1 = ground1.x - 30;
		var _y1 = ground1.y - 60;
		var _x2 = ground2.x + 30;
		var _y2 = ground2.y + 5;

		gpu_set_blendmode(bm_subtract);
		draw_rectangle(_x1 + 1, _y1 + 1, _x2 - 2, _y2 - 2, false);
		gpu_set_blendmode(bm_normal);
		draw_sprite_nine(sSimpleFrame, _x1, _y1, _x2, _y2);
	}
}

#endregion

#region Subtract Puzzle

if (board1Inst != noone) {
	if (instance_exists(board1Inst)) {
		var _b1x1 = board1Inst.x - (board1Inst.space / 2);
		var _b1y1 = board1Inst.y - (board1Inst.space / 2);
		var _b1x2 = board1Inst.x + (board1Inst.gridW * board1Inst.space) + (board1Inst.space / 2);
		var _b1y2 = board1Inst.y + (board1Inst.gridH * board1Inst.space) + (board1Inst.space / 2);	
		draw_rectangle_color(_b1x1 + 2, _b1y1 + 2, _b1x2 - 2, _b1y2 - 2, c_black, c_black, c_black, c_black, false);
	}
}
if (board2Inst != noone) {
	if (instance_exists(board2Inst)) {
		var _b2x1 = board2Inst.x - (board2Inst.space / 2);
		var _b2y1 = board2Inst.y - (board2Inst.space / 2);
		var _b2x2 = board2Inst.x + (board2Inst.gridW * board2Inst.space) + (board2Inst.space / 2);
		var _b2y2 = board2Inst.y + (board2Inst.gridH * board2Inst.space) + (board2Inst.space / 2);	
		draw_rectangle_color(_b2x1 + 2, _b2y1 + 2, _b2x2 - 2, _b2y2 - 2, c_black, c_black, c_black, c_black, false);
	}
}
	
#endregion
	
#region Draw Blue Border Around Puzzle

if (board1Inst != noone) {
	if (instance_exists(board1Inst)) {
		var _b1x1 = board1Inst.x - (board1Inst.space / 2);
		var _b1y1 = board1Inst.y - (board1Inst.space / 2);
		var _b1x2 = board1Inst.x + (board1Inst.gridW * board1Inst.space) + (board1Inst.space / 2);
		var _b1y2 = board1Inst.y + (board1Inst.gridH * board1Inst.space) + (board1Inst.space / 2);	
		draw_sprite_nine(sSimpleFrame, _b1x1, _b1y1, _b1x2, _b1y2); 
	}
}
if (board2Inst != noone) {
	if (instance_exists(board2Inst)) {
		var _b2x1 = board2Inst.x - (board2Inst.space / 2);
		var _b2y1 = board2Inst.y - (board2Inst.space / 2);
		var _b2x2 = board2Inst.x + (board2Inst.gridW * board2Inst.space) + (board2Inst.space / 2);
		var _b2y2 = board2Inst.y + (board2Inst.gridH * board2Inst.space) + (board2Inst.space / 2);	
		draw_sprite_nine(sSimpleFrame, _b2x1, _b2y1, _b2x2, _b2y2); 
	}
}
	
#endregion

#region Draw Health Bar

if (player1Inst != noone) {
	if (instance_exists(player1Inst)) {
		var _xOff = 40;
		var _heartX = player1Inst.x - _xOff + ((player1Inst.x > room_width / 2) * _xOff * 2)
		var _heartRed = make_color_rgb(255, 0, 52);
		var _heartGreen = make_color_rgb(0, 241, 0);
		draw_healthbar(_heartX - 3, player1Inst.y - 55, _heartX + 3, player1Inst.y - 5, player1Inst.life / player1Inst.startingLife * 100, c_black, _heartRed, _heartGreen, 3, true, false);
		draw_sprite(sHeart, 0, _heartX, player1Inst.y);
	}
}
if (player2Inst != noone) {
	if (instance_exists(player2Inst)) {
		var _xOff = 40;
		var _heartX = player2Inst.x - _xOff + ((player2Inst.x > room_width / 2) * _xOff * 2)
		var _heartRed = make_color_rgb(255, 0, 52);
		var _heartGreen = make_color_rgb(0, 241, 0);
		draw_healthbar(_heartX - 3, player2Inst.y - 55, _heartX + 3, player2Inst.y - 5, player2Inst.life / player2Inst.startingLife * 100, c_black, _heartRed, _heartGreen, 3, true, false);
		draw_sprite(sHeart, 0, _heartX, player2Inst.y);
	}
}
	
#endregion

#region Draw Health Total
/*
if (player1Inst != noone) {
	if (instance_exists(player1Inst)) {
		var xOff = 40;
		var heartX = player1Inst.x - xOff + ((player1Inst.x > room_width / 2) * xOff * 2)
		draw_set_halign(fa_center);
		draw_text_transformed(heartX, player1Inst.y - 28, string(player1Inst.life) + "/" + string(player1Inst.startingLife), 0.2, 0.2, 0);
		draw_set_halign(fa_left);
	}
}
if (player2Inst != noone) {
	if (instance_exists(player2Inst)) {
	
	}
}
*/
#endregion

surface_reset_target();
draw_surface(global.squaresSurface, 0, 0);