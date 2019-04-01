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
if (alarm[6] < 0) {
	
	floodHeight = height;
	alarm[6] = floodTimer;
	
	if (ds_exists(board.floodInst, ds_type_list))
		ds_list_destroy(board.floodInst);
	board.floodInst = ds_list_create();
		
	// Create Flood Instances
	for (var i = 0; i < board.gridW; i++) {
		var f = instance_create_layer(board.x + (board.space * i), board.y + (board.gridH * board.space), "Boards", oFlood);
		f.depth = board.depth - 1;
		f.target = height;
		f.boardInst = board;
		ds_list_add(board.floodInst, f);
	}
}