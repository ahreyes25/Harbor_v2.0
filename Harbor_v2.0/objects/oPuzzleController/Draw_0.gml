// Create Surface If Not Existing
if (!surface_exists(global.squaresSurface))
	global.squaresSurface = surface_create(room_width, room_height);
	
surface_set_target(global.squaresSurface);
draw_clear_alpha(c_black, 0);

// Draw Tiled Background
image_speed = 0.1;
draw_sprite_tiled(sSquares, image_index, 0, 0);

var x1 = player1Inst.x - 30;
var y1 = player1Inst.y - 60;
var x2 = player2Inst.x + 30;
var y2 = player2Inst.y + 5;
	
// Subtract Combat Zone
gpu_set_blendmode(bm_subtract);
draw_rectangle(x1 + 1, y1 + 1, x2 - 2, y2 - 2, false);
gpu_set_blendmode(bm_normal);

// Subtract Puzzle
if (board1Inst != noone) {
	if (instance_exists(board1Inst)) {
		var b1x1 = board1Inst.x - (board1Inst.space / 2);
		var b1y1 = board1Inst.y - (board1Inst.space / 2);
		var b1x2 = board1Inst.x + (board1Inst.gridW * board1Inst.space) + (board1Inst.space / 2);
		var b1y2 = board1Inst.y + (board1Inst.gridH * board1Inst.space) + (board1Inst.space / 2);	
		draw_rectangle_color(b1x1 + 2, b1y1 + 2, b1x2 - 2, b1y2 - 2, c_black, c_black, c_black, c_black, false);
	}
}
if (board2Inst != noone) {
	if (instance_exists(board2Inst)) {
		var b2x1 = board2Inst.x - (board2Inst.space / 2);
		var b2y1 = board2Inst.y - (board2Inst.space / 2);
		var b2x2 = board2Inst.x + (board2Inst.gridW * board2Inst.space) + (board2Inst.space / 2);
		var b2y2 = board2Inst.y + (board2Inst.gridH * board2Inst.space) + (board2Inst.space / 2);	
		draw_rectangle_color(b2x1 + 2, b2y1 + 2, b2x2 - 2, b2y2 - 2, c_black, c_black, c_black, c_black, false);
	}
}

// Draw Blue Border Around Combat Area
if (instance_exists(player1Inst) && instance_exists(player2Inst))
	draw_sprite_nine(sSimpleFrame, x1, y1, x2, y2);
	
// Draw Blue Border Around Puzzle
if (board1Inst != noone) {
	if (instance_exists(board1Inst)) {
		var b1x1 = board1Inst.x - (board1Inst.space / 2);
		var b1y1 = board1Inst.y - (board1Inst.space / 2);
		var b1x2 = board1Inst.x + (board1Inst.gridW * board1Inst.space) + (board1Inst.space / 2);
		var b1y2 = board1Inst.y + (board1Inst.gridH * board1Inst.space) + (board1Inst.space / 2);	
		draw_sprite_nine(sSimpleFrame, b1x1, b1y1, b1x2, b1y2); 
	}
}
if (board2Inst != noone) {
	if (instance_exists(board2Inst)) {
		var b2x1 = board2Inst.x - (board2Inst.space / 2);
		var b2y1 = board2Inst.y - (board2Inst.space / 2);
		var b2x2 = board2Inst.x + (board2Inst.gridW * board2Inst.space) + (board2Inst.space / 2);
		var b2y2 = board2Inst.y + (board2Inst.gridH * board2Inst.space) + (board2Inst.space / 2);	
		draw_sprite_nine(sSimpleFrame, b2x1, b2y1, b2x2, b2y2); 
	}
}

// Draw Health Bar
if (player1Inst != noone) {
	if (instance_exists(player1Inst)) {
		var xOff = 40;
		var heartX = player1Inst.x - xOff + ((player1Inst.x > room_width / 2) * xOff * 2)
		var r = make_color_rgb(255, 0, 52);
		var g = make_color_rgb(0, 241, 0);
		draw_healthbar(heartX - 3, player1Inst.y - 55, heartX + 3, player1Inst.y - 5, player1Inst.life, c_black, r, g, 3, false, false);
		draw_sprite(sHeart, 0, heartX, player1Inst.y);
	}
}
if (player2Inst != noone) {
	if (instance_exists(player2Inst)) {
		var xOff = 40;
		var heartX = player2Inst.x - xOff + ((player2Inst.x > room_width / 2) * xOff * 2)
		var r = make_color_rgb(255, 0, 52);
		var g = make_color_rgb(0, 241, 0);
		draw_healthbar(heartX - 3, player2Inst.y - 55, heartX + 3, player2Inst.y - 5, player2Inst.life, c_black, r, g, 3, false, false);
		draw_sprite(sHeart, 0, heartX, player2Inst.y);
	}
}

surface_reset_target();
draw_surface(global.squaresSurface, 0, 0);