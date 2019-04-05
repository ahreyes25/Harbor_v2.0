/// @param BoardInst
/// @param Timer
/// @param xIndex*
/// @param yIndex*
/// @param ww*
/// @param hh*

var board	= argument[0];
var timer	= argument[1];

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
	
#region Create Smoke Precise To Spell Cursor
	
	if (argument_count <= 2) {
	
		// Check Instances Exists
		if (!instance_exists(board.player))
			return;
		if (!instance_exists(board.player.enemy))
			return;
		if (!instance_exists(board.player.enemy.boardInst))
			return;
	
	
		for (var i = 0; i < array_length_1d(board.player.enemy.boardInst.config); i++){
	
			var c = board.player.enemy.boardInst.config[i];

			// Create Smoke Instance
			var s = instance_create_layer(
						board_to_world(board, board.player.enemy.boardInst.cursorI + c[0], "x"),
						board_to_world(board, board.player.enemy.boardInst.cursorJ + c[1], "y"),
						"Boards", oSmoke
					);
		
			// Set Smoke Props
			s.depth = board.depth - 1;
			s.timer = timer;
			s.state = SMOKE_STATE.FADE_IN;
			s.boardInst = board;
	
			ds_list_add(board.smokeInst, s);
		}	
	}
	
#endregion

#region Create Smoke With Given Width & Height
	
	else {
		var xx		= argument[2];
		var yy		= argument[3];
		var ww		= argument[4];
		var hh		= argument[5];

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
	}
	
#endregion
