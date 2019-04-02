/// @param BoardInst
/// @param height

var board = argument0;
var height = argument1;

// Exit
if (!instance_exists(board))
	return;	
if (!ds_exists(board.grid, ds_type_grid))
	return;
if (board.grid == noone)
	return;

// Populate, Set Flood Timer
if (board.alarm[6] < 0) {
	
	board.floodHeight += height;
	board.floodHeight = clamp(board.floodHeight, 0, board.gridH);
	board.alarm[6] = board.floodTimer;
	
	// Create list of flood instances
	if (!ds_exists(board.floodInst, ds_type_list))
		board.floodInst = ds_list_create();
	else {
		if (ds_list_size(board.floodInst) == 0) {
			ds_list_destroy(board.floodInst);
			board.floodInst = ds_list_create();
		}
	}		
		
	// Create Flood Instances
	if (ds_list_size(board.floodInst) == 0) {
		for (var i = 0; i < board.gridW; i++) {
			var f = instance_create_layer(board.x + (board.space * i), board.y + (board.gridH * board.space), "Boards", oFlood);
			f.depth = board.depth - 1;
			f.target = height;
			f.boardInst = board;
			ds_list_add(board.floodInst, f);
		}
	}
	// Update Old Flood Instances
	else {
		for (var i = 0; i < ds_list_size(board.floodInst); i++) {
			var f = ds_list_find_value(board.floodInst, i);
			f.target = clamp(board.floodHeight, 0, board.gridH);
			f.state = FLOOD_STATE.EASE_IN;
		}
	}
}