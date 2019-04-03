/// @param BoardInst
/// @param xIndex
/// @param yIndex
/// @param Width
/// @param Height
/// @param Timer

var board	= argument0;
var xx		= argument1;
var yy		= argument2;
var ww		= argument3;
var hh		= argument4;
var timer	= argument5;

// Exit
if (!instance_exists(board))
	return;
if (board.grid == noone)
	return;
if (!ds_exists(board.grid, ds_type_grid))
	return;
	
// Create smoke inst list
if (!ds_exists(board.smokeInst, ds_type_list))
	board.smokeInst = ds_list_create();
else {
	if (ds_list_size(board.smokeInst) == 0) {
		ds_list_destroy(board.smokeInst);
		board.smokeInst = ds_list_create();
	}
}
	
	
for (var i = 0; i < ww; i++) {
	for (var j = 0; j < hh; j++) {
		
		// Create Smoke Instance
		var s = instance_create_layer(
					board_to_world(board, xx + i, "x"),
					board_to_world(board, yy + j, "y"),
					"Boards", oSmoke
				);
		
		// Set Smoke Props
		s.depth = board.depth - 1;
		s.timer = timer;
		s.state = SMOKE_STATE.FADE_IN;
		s.boardInst = board;
		s.ii = 
	
		ds_list_add(board.smokeInst, s);
	}
}