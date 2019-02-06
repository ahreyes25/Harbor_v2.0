#region Puzzle Room State
switch(state) {
	
	#region Loading Data
	case PUZZLE_ROOM_STATE.LOAD_DATA:

		// Spawn Player
		player1Inst = instance_create_layer(room_width / 4, room_height - (room_height / 4), "Instances", oCombatPlayer);			
		player2Inst = instance_create_layer(room_width - (room_width / 4), room_height - (room_height / 4), "Instances", oCombatPlayer);
		player1Inst.spellBook = master_book();
		player2Inst.spellBook = master_book();
		
		// Setup Board
		var b1X = boardXOff;
		var b2X = (room_width - b1X) - (board1W * boardSpace);
		var bY  = boardYOff;
		
		var board1 = ds_grid_create(board1W, board1H);
		randomize_board(board1);
		board1Inst = instance_create_layer(b1X, -bY - (board1H * boardSpace), "Controllers", oBoard);
		board1Inst.grid = board1;
		board1Inst.gridW = board1W;
		board1Inst.gridH = board1H;
		board1Inst.space = boardSpace;
		board1Inst.scale = boardScale;
		board1Inst.yRest = bY;
		board1Inst.pid = PLAYER.P1;
		board1Inst.player = player1Inst;
		player1Inst.boardInst = board1Inst;
		board1Inst.cursor = player1Inst.spellBook[player1Inst.spellBookIndex];
		
		var board2 = ds_grid_create(board2W, board2H);
		randomize_board(board2);		
		board2Inst = instance_create_layer(b2X, -bY - (board1H * boardSpace), "Controllers", oBoard);		
		board2Inst.grid = board2;
		board2Inst.gridW = board2W;
		board2Inst.gridH = board2H;
		board2Inst.space = boardSpace;
		board2Inst.scale = boardScale;
		board2Inst.yRest = bY;
		board2Inst.pid = PLAYER.P2;
		board2Inst.player = player2Inst;
		player2Inst.boardInst = board2Inst;
		board2Inst.cursor = player2Inst.spellBook[player2Inst.spellBookIndex];
		
		state = PUZZLE_ROOM_STATE.PRE_COMBAT;
		
	break;
	#endregion
	
	#region Pre Combat
	case PUZZLE_ROOM_STATE.PRE_COMBAT:
	
		#region Walk Players In
		#endregion
		
		#region Drop Boards Down
			board1Inst.state = BOARD_STATE.EASE_IN;
			board2Inst.state = BOARD_STATE.EASE_IN;
		#endregion
		
		state = PUZZLE_ROOM_STATE.COMBAT;
		
	break;
	#endregion
		
	#region Combat
	case PUZZLE_ROOM_STATE.COMBAT:
		break;
	#endregion
}
#endregion